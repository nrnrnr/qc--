
#line 1 "generated-code"
#include <assert.h>
#define sign_extend(N,SIZE) (((int)((N) << (sizeof(unsigned)*8-(SIZE)))) >> (sizeof(unsigned)*8-(SIZE)))

#line 1 "interp.m"
#include "interp.h"

#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <math.h>
#include <setjmp.h>
#include <signal.h>

#include "cmmfloat.h"
#include "lualink.h"
#include "encode.h"
#include "ccall.h"
#include "operator.h"
#include "encoding.h"
#include "uid.h"
#include "types.h"
#include "span.h"
#include "stack.h"
#include "controlflow.h"

#include <cii/arena.h>
#include <cii/mp.h>

static jmp_buf errorjmp;
static int     errorjmp_set = 0;
byte_order DEF_BYTE_ORDER;
static Arena_T mc_arena = NULL;
static RClosure  *closures_base  = NULL;
static RClosure  *closures_free  = NULL;
static RClosure  *closures_limit = NULL;
int       valstack_size;
int       arguments_size;

int       max_args        = 0;

int       num_globals     = INVALID;
value    *globals         = NULL;

int       verbosity       = 0;

static void init_interp(int valstack_size, int argspace_size);

static void init_interp(int valstack_size1, int argspace_size) {
  lua_State *L;

  /* infer information about architecture */
  infer_architecture();

  /* initialize the contents of global tables */
  assembly_units_table   = fresh_table();
  exports_table          = fresh_table();
  operator_table         = fresh_table();
  span_table             = fresh_table();

  c_func_table           = fresh_table();
  c_sig_table            = fresh_table();

  /* initialize a Lua interpreter */
  L = init_lua_interp();

  /* initialize the lua_State field of global tables */
  assembly_units_table.L = L;
  exports_table.L        = L;
  operator_table.L       = L;
  span_table.L           = L;

  c_func_table.L         = L;
  c_sig_table.L          = L;
 
  /* store global constants */
    valstack_size = valstack_size1;
    arguments_size = argspace_size;

  /* register C function signatures */
  init_c_sigs();

  /* register operators */
  init_operators();
}
void infer_architecture(void) {
  static union { unsigned u; unsigned char c[sizeof(unsigned)]; } u =
     { 0xaabbccdd };

  switch (u.c[0]) {
    case 0xaa: DEF_BYTE_ORDER = BIG;    break;
    case 0xdd: DEF_BYTE_ORDER = LITTLE; break;
    default:
      fprintf(stderr, "error: machine has unknown natural byte-order\n");
      exit(1);
  }   
}
unsigned mem_aggregate(unsigned char *a, byte_order bo, unsigned num_bytes) {
  int      i;
  unsigned u = 0;

  cmm_assert(a, "attempted to dereference or fetch at address NULL");

  switch (bo) {
    case LITTLE:
      for (i = 0; i < num_bytes; i++)
        u += (a[i] << (i * 8));
      break;
    case BIG:
      for (i = 0; i < num_bytes; i++)
        u += (a[i] << ((num_bytes - i - 1) * 8));
      break;
    default:
      fprintf(stderr, "error: cannot aggregate data in unknown byte-order\n");
      exit(1);
  }

  return u;
}

void *round_up(void *p) {
  if (DEF_ALIGN <= 1) return p;
  {
    unsigned long x = (unsigned long) p;
    if (x % DEF_ALIGN == 0) return p;
    x += DEF_ALIGN - (x % DEF_ALIGN);
    return (void *) x;
  }
}
void check_architecture(assembly_unit *au) {
  if (au->memsize != 8)
    cmm_err("this interpreter can only handle a MEMSIZE of 8");
  if (au->ptrsize != 32)
    cmm_err("this interpreter can only handle a PTRSIZE of 32");
  if (au->byte_order != DEF_BYTE_ORDER)
    cmm_err("this interpreter can only handle native byteorder memory access");
}
void cmm_err(const char *fmt) {
  if (fmt != NULL)
    fprintf(stderr, "error: %s\n", fmt);

  if (lua_linenumber != LUA_INVALIDLINE) {
      fprintf(stderr, "error: error noticed when reached "
                      "<line number %d>\n", lua_linenumber);
      lua_linenumber = LUA_INVALIDLINE;
  }

  if (errorjmp_set)
        longjmp(errorjmp, 1);

  /* as a default case, if we haven't setjmp, we simply exit */
  exit(1);
}
void cmm_err_wstr(const char *fmt, const char *s) {
  if (fmt != NULL) {
    fprintf(stderr, "error: ");
    fprintf(stderr, fmt, s);
    fprintf(stderr, "\n");
  }
  cmm_err((const char *) NULL);
}

void cmm_err_wint(const char *fmt, const int i) {
  if (fmt != NULL) {
    fprintf(stderr, "error: ");
    fprintf(stderr, fmt, i);
    fprintf(stderr, "\n");
  }
  cmm_err((const char *) NULL);
}
void cmm_sighandler(int sig) {
  switch (sig) {
  case SIGINT:
          cmm_err("user interrupt");
  case SIGSEGV:
      cmm_err("the interpreter had a SEGMENTATION FAULT");
  default:
      cmm_err("an unknown signal was caught");
  }
}
void lua_error_handle(int err_code, const char *fn) {
  switch (err_code) {
  case 0:
    return;
  case LUA_ERRRUN:
    cmm_err_wstr("run-time error while interpreting [%s]", fn);
  case LUA_ERRSYNTAX:
    cmm_err_wstr("a syntax error was found in [%s]", fn);
  case LUA_ERRMEM:
    fprintf(stderr, "error: Lua memory allocation error [%s]", fn);
    break;
  case LUA_ERRERR:
    fprintf(stderr, "error: unrecoverable internal error [%s]", fn);
    break;
  case LUA_ERRFILE:
    cmm_err_wstr("cannot open file [%s]", fn);
  }
  exit(1);
}
void *mc_alloc(int size, Mc_alloc_pool pool) {
  void *a;

  if (mc_arena == NULL) {
    mc_arena = Arena_new();
    mem_assert(mc_arena);
  }

  a = (void *) Arena_alloc(mc_arena, size, __FILE__, __LINE__);
  mem_assert(a);
  return a;
}
RClosure mc_alloc_closure(unsigned size, RBlock dest_block, 
                                 unsigned dest_lc)
{
  /* note: RClosure is a typedef'd struct pointer */
  RClosure a = (RClosure) mc_alloc(size, RClosure_pool);

  /* store the closure in a "dynamic array" so it can later be applied */
  if (closures_free >= closures_limit) {
    RClosure *closures_new = realloc(closures_base, 
                             2 * sizeof(RClosure) *
                             (closures_limit - closures_base));
    mem_assert(closures_new);
    closures_limit = closures_new + 2*(closures_limit - closures_base);
    closures_free  = closures_new + (closures_free - closures_base);
    closures_base  = closures_new;
  }
  (closures_free++)[0] = a;

  return a;
}
void mc_free_all(void) {
  if (mc_arena != NULL) {
    Arena_free(mc_arena);
    Arena_dispose(&mc_arena);
    mc_arena = NULL;
  }
}
int lua_relocate_block(lua_State *L) {
  RBlock bl, oldbl;
  void   *loc;

  if (!lua_isuserdata(L, -1) || 
      lua_tag(L, -1) != lua_RBlock_tag ||
      (bl = (RBlock) lua_touserdata(L, -1)) == NULL)
  {
    lua_pop(L, 1);
    cmm_err("internal error relocating block");
  }

  /* emit a HALT instruction at the end of the block */
  oldbl = crb();
  set_block(bl);
  halt();
  set_block(oldbl);

  /* THIS NEEDS A SLIGHTLY REVISED VERSION OF mclib.c 
   * the original mclib.c, as distributed on the net does _not_ include a
   * relocated_pool; this is our own addition
   */
  loc = (void *) mc_alloc(block_size(bl), relocated_pool);

  set_address(bl, (unsigned) loc);

  lua_pop(L, 1);

  return 0;
}
int lua_copy_block_contents(lua_State *L) {
  RBlock bl;
  
  if (!lua_isuserdata(L, -1) ||
      lua_tag(L, -1) != lua_RBlock_tag ||
      (bl = (RBlock) lua_touserdata(L, -1)) == NULL)
  {
    lua_pop(L, 1);
    cmm_err("internal error copying block contents");
  }

  assert(block_address_known(bl));
  block_copy((unsigned char *) block_address(bl), bl, 0, block_size(bl));

  lua_pop(L, 1);

  return 0;
}
static void mclib_error(const char *fmt, const char *arg) {
  fprintf(stderr, "Fatal error in machine-code toolkit: ");
  fprintf(stderr, fmt, arg);
  exit(1);
}
int load_assembly_unit(char *s, assembly_unit_type source_type) {
  lua_State     *L  = assembly_units_table.L;
  RClosure      *cl;

  /* enter new assembly unit */
  assembly_unit *au = enter_new_assembly_unit(L);

  errorjmp_set = 1;
  if (setjmp(errorjmp)) {
    errorjmp_set = 0;
    /* don't try to apply closures that were created during the bad load */
    closures_free = closures_base;

    if (source_type == SRC_FILE) {
      fprintf(stderr, "error: unrecoverable error; cannot finish loading "
                      "file [%s]\n", s);
    } else {
      fprintf(stderr, "error: unrecoverable error; cannot finish loading "
                      "assembly unit\n");
    }
    return 1;
  } else {
    assembly_unit *temp;

    if (source_type == SRC_FILE) {
        lua_error_handle(lua_dofile(L, s), s);
    } else if (source_type == SRC_STRING) {
        lua_error_handle(lua_dostring(L, s), s);
    } else {
      assert(source_type == SRC_STDIN);  /* this can't happen */
      assert(s           == NULL);       /* this can happen if client errs */
        lua_error_handle(lua_dofile(L, NULL), "<stdin>");
    }
      for (temp = au; temp != NULL; temp = temp->next) {
        /* relocate all named sections */
        lua_error_handle(lua_table_foreach(L,temp->section_table,"relocate_block"),
                         "<internal code>");

        /* relocate special block */
        lua_pushusertag(L, (void *) temp->def_section, lua_RBlock_tag);
        lua_relocate_block(L);
      }
      /* apply closures in closure table */
      for (cl = closures_base; cl < closures_free; cl++) {
        apply_closure(*cl, cl_emitm, (FailCont) mclib_error);
      }

      /* reclaim memory */
      closures_free = closures_base;
      for (temp = au; temp != NULL; temp = temp->next) {
        /* copy blocks */
        lua_error_handle(lua_table_foreach(L, temp->section_table, 
                                           "copy_block_contents"), 
                         "<internal code>");
      
        /* copy special block */
        lua_pushusertag(L, (void *) temp->def_section, lua_RBlock_tag);
        lua_copy_block_contents(L);
      }
  }

  lua_linenumber = LUA_INVALIDLINE;

  errorjmp_set = 0;
  return 0;
}
interp_state* interp_state_new() {
  interp_state* s = malloc(sizeof(*s));

  s->values.s_base      = (valsptr) malloc(sizeof(value) * valstack_size);
  mem_assert(s->values.s_base);
  s->values.s_limit     = s->values.s_base + valstack_size;
  s->values.s_free      = s->values.s_base - 1;

  s->arguments = malloc(sizeof(value)*arguments_size);
  mem_assert(s->arguments);
  s->arguments_limit = s->arguments + arguments_size;

  return s;
}

void interp_state_free(interp_state* s) {
  free(s->values.s_base);
  free(s->arguments);
  free(s);
}

void run_interp(continuation* k) {
  interp_state* s = interp_state_new();

  /* stress test */
  while(run_interp_n(k, s, 1));

  interp_state_free(s);
}

int run_interp_n(continuation* k, interp_state* s, int num_bytecodes) {
  int            err_occurred = 0, 
                 done         = 0;
  unsigned char *next;
  int bytecode;
  actptr       act;

  assert(k != NULL);
  assert(k->sp != NULL);
  assert(k->code != NULL);
  assert(s != NULL);
  
  thread* t = find_thread_c(k);
  assert(t != NULL);

  /* we have to allocate memory for globals here */
    /* we know precisely how much to malloc for globals */
    if (globals == NULL) {
      if (num_globals <= 0 || num_globals == INVALID) {
        num_globals = 0;
      } else {
        globals = (vptr) malloc(sizeof(value) * num_globals);
        mem_assert(globals);
      }
    }

  /* The activation record is on the stack.  We fetch it through the stack pointer. */
  act = actptr_from_sp(k->sp);
  mem_assert(act >= (actptr)t->stack_base);


  errorjmp_set = 1;
  if (setjmp(errorjmp)) {
    /* This is the exception handler.  If an error occurs, we long-jump here. */
    errorjmp_set = 0;
    fprintf(stderr, "error: unrecoverable runtime error at PC 0x%x\n", (unsigned)act->pc);
    if (act->name)
          fprintf(stderr, "| Stack trace:\n");
      fprintf(stderr, "| 0: %s()\n", act->name);
    if (act->caller)
          activation_trace(act->caller);

    if (act->name)
      fprintf(stderr, "Try disassembling '%s' to find relevant instructions\n",
                      act->name);
  } else {
    for (bytecode = 0; bytecode < num_bytecodes; bytecode++) {
      /*
      if (act->name) {
        printf("%s: ",act->name);
      }
      disassemble_instruction(stdout, act->pc);*/  /* Handy for debugging interp */


#line 101 "generated-code"

{ 
  unsigned char * MATCH_p = act->pc;
  
  #line 201 "generated-code"
  { 
    unsigned /* [0..255] */ MATCH_w_8_0 = 
      (mem_aggregate((((MATCH_p) + 0)),DEF_BYTE_ORDER,1));
    if (37 <= (MATCH_w_8_0 & 0xff) /* op at 0 */ && (MATCH_w_8_0 & 0xff) /* op at 0 */ < 256) { 
      { 
        next = (((MATCH_p) + 0));
        
        #line 841 "interp.m"
        cmm_err("unsupported instruction encoutered");
        
        
        #line 301 "generated-code" 
      } 
    } 
    else 
      switch (MATCH_w_8_0 & 0xff /* op at 0 */) { 
        case 0: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned p = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 822 "interp.m"
               {
                                                 act->proc = (procedure *) p;
                                                 act->pc = next;
                                                 }
              
              
              #line 401 "generated-code" 
            } 
          }
          break;
        case 1: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 826 "interp.m"
               {
                                                 act->proc = NULL;
                                                 cmm_err("procedure missing return/jump statement");
                                                 }
              
              
              #line 501 "generated-code" 
            } 
          }
          break;
        case 2: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_40 = 
                (mem_aggregate((((MATCH_p) + 5)),DEF_BYTE_ORDER,1));
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned width = MATCH_w_8_40 & 0xff /* bits8 at 40 */;
              unsigned v = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 6));
              
              #line 437 "interp.m"
               if (width > 32) {  /* FIX this could be better */
                                                   width = sizeof(MP_T);
                                                 }
              
                                                 PUSH(to_CMM_value(v, width), s->values); 
                                                 act->pc = next;
              
              
              #line 601 "generated-code" 
            } 
          }
          break;
        case 3: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_24 = 
                (mem_aggregate((((MATCH_p) + 3)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned al = MATCH_w_8_24 & 0xff /* bits8c at 24 */;
              unsigned bo = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned sz = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 4));
              
              #line 497 "interp.m"
               {
                                                 assert(bo == DEF_BYTE_ORDER);
                                                 assert(al == DEF_ALIGN);
                                                 if (sz <= 0 || sz > sizeof(value)*8)
                                                   cmm_err_wint("cannot fetch %d bits", sz);
                                                 UNDERFLOW_CHECK(s->values, 3);
                                                 if (STACK_ELT(s->values, -2).bool) {
                                                     {
                                                       value *tostore       = (value *) STACK_ELT(s->values, -1).ptr;
              
                                                       cmm_assert(tostore != NULL, "attempted to STORE to address NULL");
                                                       memcpy(tostore, &(STACK_ELT(s->values, 0)), sz / 8);
                                                     }
                                                 }
                                                 s->values.s_free -= 3;
                                                 act->pc = next;
                                                 }
              
              
              #line 701 "generated-code" 
            } 
          }
          break;
        case 4: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_24 = 
                (mem_aggregate((((MATCH_p) + 3)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned al = MATCH_w_8_24 & 0xff /* bits8c at 24 */;
              unsigned bo = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned sz = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 4));
              
              #line 467 "interp.m"
               {
                                                 assert(bo == DEF_BYTE_ORDER);
                                                 assert(al == DEF_ALIGN);
                                                 if (sz <= 0 || sz > sizeof(value)*8)
                                                   cmm_err_wint("cannot fetch %d bits", sz);
                                                   {
                                                     value *fetched       = (value *) STACK_ELT(s->values, 0).ptr;
                                                     value  v             = value_zero();
              
                                                     cmm_assert(fetched != NULL, "attempted to FETCH at address NULL");
              
                                                     memcpy((void *) &v, (const void *) fetched, sz / 8);
                                                     STACK_ELT(s->values, 0) = v;
                                                   }
                                                 act->pc = next;
                                                 }
              
              
              #line 801 "generated-code" 
            } 
          }
          break;
        case 5: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_24 = 
                (mem_aggregate((((MATCH_p) + 3)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned al = MATCH_w_8_24 & 0xff /* bits8c at 24 */;
              unsigned bo = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned sz = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 4));
              
              #line 483 "interp.m"
               {
                                                 assert(bo == DEF_BYTE_ORDER);
                                                 assert(al == DEF_ALIGN);
                                                 if (sz <= 0 || sz > sizeof(value)*8)
                                                   cmm_err_wint("cannot fetch %d bits", sz);
                                                   {
                                                     value *tostore       = (value *) STACK_ELT(s->values, -1).ptr;
              
                                                     cmm_assert(tostore != NULL, "attempted to STORE to address NULL");
                                                     memcpy(tostore, &(STACK_ELT(s->values, 0)), sz / 8);
                                                   }
                                                 s->values.s_free -= 2;
                                                 act->pc = next;
                                                 }
              
              
              #line 901 "generated-code" 
            } 
          }
          break;
        case 6: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 529 "interp.m"
               cmm_assert(s->arguments + n < s->arguments_limit,
                                                        "invalid register index to argument space");
                                                 PUSH(s->arguments[n], s->values); act->pc = next;
              
              
              #line 1001 "generated-code" 
            } 
          }
          break;
        case 7: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 526 "interp.m"
               cmm_assert(s->arguments + n < s->arguments_limit,
                                                        "invalid register index to argument space");
                                                 s->arguments[n] = POP(s->values); act->pc = next;
              
              
              #line 1101 "generated-code" 
            } 
          }
          break;
        case 8: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 445 "interp.m"
                act->locals[n] = POP(s->values); act->pc = next;
              
              
              #line 1201 "generated-code" 
            } 
          }
          break;
        case 9: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 446 "interp.m"
               globals[n] = POP(s->values); act->pc = next;
              
              
              #line 1301 "generated-code" 
            } 
          }
          break;
        case 10: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 443 "interp.m"
               PUSH( act->locals[n], s->values); act->pc = next;
              
              
              #line 1401 "generated-code" 
            } 
          }
          break;
        case 11: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 444 "interp.m"
               PUSH(globals[n], s->values); act->pc = next;
              
              
              #line 1501 "generated-code" 
            } 
          }
          break;
        case 12: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned n = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 445 "interp.m"
                act->locals[n] = POP(s->values); act->pc = next;
              
              
              #line 1601 "generated-code" 
            } 
          }
          break;
        case 13: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned n = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 446 "interp.m"
               globals[n] = POP(s->values); act->pc = next;
              
              
              #line 1701 "generated-code" 
            } 
          }
          break;
        case 14: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned n = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 443 "interp.m"
               PUSH( act->locals[n], s->values); act->pc = next;
              
              
              #line 1801 "generated-code" 
            } 
          }
          break;
        case 15: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned n = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 444 "interp.m"
               PUSH(globals[n], s->values); act->pc = next;
              
              
              #line 1901 "generated-code" 
            } 
          }
          break;
        case 16: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 447 "interp.m"
               UNDERFLOW_CHECK(s->values, 2);
                                                 if (STACK_ELT(s->values, -1).bool) {
                                                   act->locals[n] = STACK_ELT(s->values, 0);
                                                 }
                                                 s->values.s_free -= 2;
                                                 act->pc = next;
              
              
              
              #line 2001 "generated-code" 
            } 
          }
          break;
        case 17: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned n = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 447 "interp.m"
               UNDERFLOW_CHECK(s->values, 2);
                                                 if (STACK_ELT(s->values, -1).bool) {
                                                   act->locals[n] = STACK_ELT(s->values, 0);
                                                 }
                                                 s->values.s_free -= 2;
                                                 act->pc = next;
              
              
              
              #line 2101 "generated-code" 
            } 
          }
          break;
        case 18: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned n = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 454 "interp.m"
               UNDERFLOW_CHECK(s->values, 2);
                                                 if (STACK_ELT(s->values, -1).bool) {
                                                   globals[n] = STACK_ELT(s->values, 0);
                                                 }
                                                 s->values.s_free -= 2;
                                                 act->pc = next;
              
              
              #line 2201 "generated-code" 
            } 
          }
          break;
        case 19: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned n = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 454 "interp.m"
               UNDERFLOW_CHECK(s->values, 2);
                                                 if (STACK_ELT(s->values, -1).bool) {
                                                   globals[n] = STACK_ELT(s->values, 0);
                                                 }
                                                 s->values.s_free -= 2;
                                                 act->pc = next;
              
              
              #line 2301 "generated-code" 
            } 
          }
          break;
        case 20: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 532 "interp.m"
               { 
                                                 value v = POP(s->values);
                                                 act->pc      = (bytecodeptr) v.ptr;
                                                 }
              
              
              #line 2401 "generated-code" 
            } 
          }
          break;
        case 21: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned a = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 536 "interp.m"
               {
                                                 value v = POP(s->values);
                                                 if (v.bool) {
                                                   act->pc = (bytecodeptr) a;
                                                 } else { act->pc = next; }
                                                 }
              
              
              #line 2501 "generated-code" 
            } 
          }
          break;
        case 22: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned a = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 542 "interp.m"
               {
                                                 value v = POP(s->values);
                                                 if (!v.bool) {
                                                   act->pc = (bytecodeptr) a;
                                                 } else { act->pc = next; }
                                                 }
              
              
              #line 2601 "generated-code" 
            } 
          }
          break;
        case 23: 
          { 
            { 
              unsigned MATCH_w_32_40 = 
                (mem_aggregate((((MATCH_p) + 5)),DEF_BYTE_ORDER,4));
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned a = MATCH_w_32_8 /* bits32 at 8 */;
              unsigned b = MATCH_w_32_40 /* bits32 at 40 */;
              next = (((MATCH_p) + 9));
              
              #line 548 "interp.m"
               {
                                                 value v = POP(s->values);
                                                 act->pc      = (bytecodeptr) (v.bool ? a : b);
                                                 }
              
              
              #line 2701 "generated-code" 
            } 
          }
          break;
        case 24: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned a = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 583 "interp.m"
               {
                                                 value        v;
                                                 CMM_label   *lbl;
              
                                                 v    = POP(s->values);
                                                 lbl  = (CMM_label *) v.ptr;
                                                 ASSERT_EMPTY(s->values);
                                                 if (lbl->ty == CMM_CFUNCTION) {
                                                                              {
                                                                              c_caller      call_helper;
                                                                              void        (*f) (void);
                                                                              lua_State    *L = c_func_table.L;
                                                                              unsigned int  i = lbl->lbl.cfunc_id;
              
                                                                              act->pc = next;
              
                                                                                                         lua_pushtable(L, c_func_table);
                                                                                                         lua_rawgeti(L, -1, i);
                                                                                                         lua_pushstring(L, C_FUNC_NAME);
                                                                                                         lua_gettable(L, -2);
                                                                                                         /* TODO (djp): I don't understand what this does.
                                                                                                         if (!lua_isstring(L, -1)) {
                                                                                                           name = NULL;
                                                                                                         } else {
                                                                                                           name = lua_tostring(L, -1);
                                                                                                         } */
                                                                                   
                                                                                                         lua_pop(L, 3);  /* pop tables & retrieved value */
              
                                                                                                         lua_pushtable(L, c_func_table);
                                                                                                         lua_rawgeti(L, -1, i);
                                                                                                         lua_assert_istable(L, -1, 
                                                                                                                            "internal error with c call");
              
                                                                                                         lua_pushstring(L, C_FUNC_CALLER);
                                                                                                         lua_gettable(L, -2);
                                                                                                         if (!lua_isuserdata(L, -1) ||
                                                                                                             lua_tag(L, -1) != lua_c_sig_tag ||
                                                                                                             (call_helper = (c_caller) 
                                                                                                                             lua_touserdata(L, -1)) == NULL)
                                                                                                         {
                                                                                                           lua_pop(L, 3); /* pop bogus val, tables */
                                                                                                           cmm_err("internal error with c call");
                                                                                                         }
                                                                                                         lua_pop(L, 1);   /* pop call_helper pointer */
                                                                                                         lua_pushstring(L, C_FUNC_POINTER);
                                                                                                         lua_gettable(L, -2);
                                                                                                         if (!lua_isuserdata(L, -1) ||
                                                                                                             lua_tag(L, -1) != lua_c_func_tag ||
                                                                                                             (f=(void(*)(void))lua_touserdata(L,-1)) == NULL)
                                                                                                         {
                                                                                                           lua_pop(L, 3); /* pop bogus val and 2 tables */
                                                                                                           cmm_err("internal error with c call");
                                                                                                         }
                                                                                                         lua_pop(L, 3);   /* pop pointer and 2 tables */
              
                                                                                                         s->arguments = call_helper(s->arguments, f);
              
                                                                              }
                                                 } else if (lbl->ty != CMM_PROCEDURE) {
                                                   if (lbl->ty == CMM_LABEL)
                                                    cmm_err_wstr("target label '%s' not a procedure",
                                                                 lbl->lbl.raddr->label->name);
              
                                                   cmm_err_wint("target label (0x%x) not a procedure"
                                                                " and appears corrupted",(int)v.ptr);
                                                 } else {
                                                                              {
                                                                                annotations *ann  = (annotations *) a;
                                                                                procedure   *proc = lbl->lbl.proc;
              
                                                                                assert(ann  != NULL);
                                                                                assert(proc != NULL);
                                                                                cmm_assert(location_known(proc->raddr),
                                                                                         "cannot call undefined procedure");
                                                                               
                                                                                /* First, we set up the current activation. */
                                                                                act->pc = next;
                                                                                act->kappa = ann;
              
                                                                                /* Next, we allocate a new frame. */
                                                                                act->callee   = Cmm_AllocFrameNext(proc->num_locals, proc->stackdata_size, act->stackdata,t->stack_limit);
                                                                                act->callee->caller = act;
              
                                                                                /* Now, we move to the new frame and set it up. */
                                                                                act = act->callee;
                                                                                act->u   = new_uid(t);
                                                                                act->proc =  proc;
                                                                                act->name      = proc->raddr->label->name;
                                                                                act->pc  = (bytecodeptr) location(proc->raddr);
              
                                                                                /* When the matching statement is executed once
                                                                                 * more during the next cycle of the [[for]] loop,
                                                                                 * {\PAL} code interpreting will seamlessly
                                                                                 * continue at the next procedure. */
              
                                                                              }
                                                 }
                                                 }
              
              
              #line 2801 "generated-code" 
            } 
          }
          break;
        case 25: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 682 "interp.m"
               {
                                                 value      v;
                                                 CMM_label *lbl;
                                                 procedure *proc;
              
                                                 v    = POP(s->values);
                                                 lbl  = (CMM_label *) v.ptr;
                                                 ASSERT_EMPTY(s->values);
                                                 proc = lbl->lbl.proc;
                                                 assert(proc != NULL);
              
                                                 dies_uid(act->u);
              
                                                 /* Because the old activation dies, we can simply
                                                  * reuse the memory chunk it used on its thread's
                                                  * stack for [[stackdata]] and [[locals]].  To
                                                  * accomplish this, we ask Cmm_AllocFrameNext for a
                                                  * frame after the current frame's caller, i.e.,
                                                  * replacing the current frame.
                                                  */
                                                 assert(act->caller != NULL); /* we should never be tailcalling from the stub. */
                                                 act = Cmm_AllocFrameNext(proc->num_locals, proc->stackdata_size, act->caller->stackdata,t->stack_limit); 
              
                                                 cmm_assert(lbl->ty == CMM_PROCEDURE,
                                                            "target label not a procedure");
              
                                                 cmm_assert(location_known(proc->raddr),
                                                            "cannot call undefined procedure");
                                                 /* We assign a new UID since this is a conceptually a new frame. */
                                                 act->u = new_uid(t);
                                                 act->name      = proc->raddr->label->name;
                                                 act->proc = proc;
                                                 act->pc   = (bytecodeptr) location(proc->raddr);
                                                 }
              
              
              #line 2901 "generated-code" 
            } 
          }
          break;
        case 26: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned count = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned i = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 716 "interp.m"
               { 
                                                 lua_State *L;
              
                                                 ASSERT_EMPTY(s->values);
                                                 assert(i <= count);       /* this can't happen */
                                                 
                                                 /* FIX for now we allow walking off stack */
                                                 if (act->stackdata == round_up(
                                                                  (actptr *)(t->stack_base)+1)) {
                                                   /* reclaim dead space */
                                                   interval_list_free(t->dead_list);
              
                                                   /*
                                                    printf("[returned from specified procedure].\n");
                                                   */
              
                                                   done = 1;
                                                   break;
                                                 }
              
                                                 /* reclaim dead space */
                                                 dies_uid(act->u);
                                                                            if (NULL == act->caller->kappa) {
                                                                              if (act->name) {
                                                                                fprintf(stderr, "WARNING: returning from %s to a caller with NULL kappa.\n", act->name);
                                                                              } else {
                                                                                fprintf(stderr, "WARNING: returning to a caller with NULL kappa.\n");
                                                                              }
                                                                            } else {
                                                                              L = act->caller->kappa->also_returns_to.L;
                                                                              lua_pushtable(L, act->caller->kappa->also_returns_to);
              
                                                                              /* we here assert that count = |returns| */
                                                                              cmm_assert(count == lua_getn(L, -1),
                                                                                  "continuation count in return stmt. "
                                                                                  "does not match number of return "
                                                                                  "continuations");
              
                                                                              if (i != count) {
                                                                    /* We're returning to a non-standard return continuation.  Find
                                                                     * out what it is, and put the pc in act->caller->pc. */
                                                                                CMM_label *lbl;
              
                                                                                /* Lua tables 1-indexed; returns are 0-indexed */
                                                                                lua_rawgeti(L, -1, i + 1);
                                                                                if (!lua_isuserdata(L, -1) ||
                                                                                    lua_tag(L, -1) != lua_CMM_label_tag ||
                                                                                    (lbl = lua_touserdata(L, -1)) == NULL ||
                                                                                    !CMM_label_defined(lbl))
                                                                                {
                                                                                  lua_pop(L, 2); /* pop bogus label, table */
                                                                                  cmm_err("invalid call-site label");
                                                                                }
                                                                                lua_pop(L, 1); /* pop label */
              
                                                                                cmm_assert(location_known(CMM_label_raddr(lbl)),
                                                                                    "cannot return to undefined "
                                                                                    "continuation");
                                                                                act->caller->pc = CMM_label_location(lbl);
                                                                              } /* else we're returning to the standard continuation, and
                                                                                 * we don't have to do anything special. */
                                                                              lua_pop(L, 1); /* pop table */
                                                                            }
              
                                                                            act = act->caller;
                                                                            act->callee = NULL;
              
                                                 }
              
              
              #line 3001 "generated-code" 
            } 
          }
          break;
        case 27: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 784 "interp.m"
               {
                                                 value         v;
                                                 continuation *cont;
                                                 activation   *dest_act;
              
                                                 v   = POP(s->values);
              
                                                 cont = (continuation *) v.ptr;
                                                 /* make sure cont is a valid cut continuation
                                                  * FIX: we _do not_ check UIDs; there is currently no way to do this */
                                                 check_cont(cont);
                                                 
                                                 /* Remember that [[pc]] is the current program counter and that we must store 
                                                  * away [[next]] so that we do not end up in an infinite loop. */
                                                 act->pc = next;
                                                
                                                 /* Here's the activation we're cutting to. */
                                                 dest_act = actptr_from_sp(cont->sp);
                                                 
                                                 /* What kind of CUT is it? */
                                                 if (dest_act->u.thread != act->u.thread) {
                                                     /* jump over to destination thread */
                                                     t = find_thread(dest_act->u);
                                                 } else if (dest_act->u.frame == act->u.frame) {
                                                     /* if we're here, then we're cutting to a
                                                        continuation in the current activation */
                                                     /* FIX : for now, just treat like GOTO */
                                                     act->pc = cont->code;
                                                     continue;
                                                 }
              
                                                 /* <kill off activations above [[dest_act]] in [[t]]> */
                       
                                                 act           = dest_act; /* move into the new frame */
                                                 act->pc       = cont->code;  /* we take the pc from continuation, not from the frame,
                                                                            * since that is a return address. */
                                                 act->callee   = NULL;     /* questionable.  Is this the right thing? */
                                                     }
              
              
              #line 3101 "generated-code" 
            } 
          }
          break;
        case 28: case 34: 
          { 
            { 
              next = (((MATCH_p) + 0));
              
              #line 841 "interp.m"
              cmm_err("unsupported instruction encoutered");
              
              
              #line 3201 "generated-code" 
            } 
          }
          break;
        case 29: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned sym = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 552 "interp.m"
               {
                                                 CMM_label *lbl = (CMM_label *) sym;
                                                 value      v   = value_zero();
              
                                                 assert(lbl != NULL);   /* this can't happen */
              
                                                 switch (lbl->ty) {
                                                 case CMM_LABEL:
                                                   {
                                                   unsigned loc;
                                                   if (!location_known(lbl->lbl.raddr))
                                                     cmm_err_wstr("cannot push value of undefined "
                                                                  "symbol \"%s\"", 
                                                                  lbl->lbl.raddr->label->name);
              
                                                   loc = location(lbl->lbl.raddr);
                                                   v = to_CMM_value(loc, sizeof(void *) * 8);
                                                   break;
                                                   }
                                                 case CMM_PROCEDURE:
                                                 case CMM_CFUNCTION:
                                                   v.ptr = (void *) lbl;
                                                   break;
                                                 default:
                                                   cmm_err_wint("internal label error "
                                                                "(corrupt label 0x%x)", sym);
                                                 }
              
                                                 PUSH(v, (s->values));
                                                 act->pc = next;
                                                 }
              
              
              #line 3301 "generated-code" 
            } 
          }
          break;
        case 30: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned o = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 514 "interp.m"
               s->values = (((operator *) o)->f)(s->values); 
                                                 /* REMOVE this print_value_stack call */
                                                 print_value_stack(s->values.s_free, s->values.s_base, 
                                                                   "values");
                                                 act->pc = next;
              
              
              #line 3401 "generated-code" 
            } 
          }
          break;
        case 31: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 519 "interp.m"
               PUSH(to_CMM_value(cmm_getround(),2), s->values);
                                                 act->pc = next;
              
              
              #line 3501 "generated-code" 
            } 
          }
          break;
        case 32: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 521 "interp.m"
               {
                                                 value v  = POP(s->values);
                                                 cmm_setround(v.bits2);
                                                 act->pc = next;
                                                 }
              
              
              #line 3601 "generated-code" 
            } 
          }
          break;
        case 33: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 460 "interp.m"
               {
                                                 value v = value_zero();
                                                 v.ptr   = (void *) act->stackdata;
                                                 PUSH(v, s->values); 
              
                                                 act->pc = next;
                                                 }
              
              
              #line 3701 "generated-code" 
            } 
          }
          break;
        case 35: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 830 "interp.m"
               {
                                                   int saved_verbosity = verbosity;
                                                   verbosity           = 1;
                                                   print_value_stack(s->values.s_free, s->values.s_base,
                                                                     "values");
                                                   verbosity           = saved_verbosity;
                                                   act->pc = next;
                                                 }
              
              
              #line 3801 "generated-code" 
            } 
          }
          break;
        case 36: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 838 "interp.m"
               {
                                           cmm_err("fell off end of a C-- section");
                                           }
              
              
              #line 3901 "generated-code" 
            } 
          }
          break;
        default: assert(0);
      } /* MATCH_w_8_0 & 0xff -- op at 0 -- */  
  } 
}

#line 843 "interp.m"

      if (err_occurred || done) break;
    }

    /* Save the stack and code pointers here in k. */
    k->sp = act->stackdata;
    k->code = act->pc;
  }

  errorjmp_set = 0;
  return bytecode;
}

int cmm_interp_open(int valstack_size, int argspace_size)
{
  (void) signal(SIGINT , cmm_sighandler);
  (void) signal(SIGSEGV, cmm_sighandler);

  if (valstack_size <= 0) valstack_size = DEF_VALSTACK_SIZE;
  if (argspace_size <= 0) argspace_size = DEF_ARGSPACE_SIZE;

  /* FIX */
  if (argspace_size <= 4) argspace_size = 4;

  errorjmp_set = 1;
  if (setjmp(errorjmp)) {
    errorjmp_set = 0;
    fprintf(stderr, "error: unrecoverable error; quitting interpreter\n");
    return 1; /* signal error */
  } else {
    /* check basic C types */
    check_value_types();

      closures_base = (RClosure *) malloc(DEF_CLOSURESARRAY_SIZE*sizeof(RClosure));
      mem_assert(closures_base);
      closures_free = closures_base;
      closures_limit = closures_base + DEF_CLOSURESARRAY_SIZE;
      init_interp(valstack_size, argspace_size);
  }

  errorjmp_set = 0;
  return 0;
}
void cmm_interp_close(void) {
  lua_State *lua_interp = assembly_units_table.L;

  
  /* free allocated space */

  free(globals);           globals       = NULL;

  free(closures_base);     closures_base = NULL; 

      CMM_label_free_all();
           span_free_all();
       operator_free_all();
    controlflow_free_all();
  assembly_unit_free_all();
             mc_free_all();

  lua_close(lua_interp);
  lua_interpreter = NULL;
}


#line 4001 "generated-code"

