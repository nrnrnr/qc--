
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
valstack  values          = { NULL, NULL, NULL };

vptr      arguments       = NULL;
vptr      arguments_limit = NULL;
int       max_args        = 0;

int       num_globals     = INVALID;
value    *globals         = NULL;

int       verbosity       = 0;

static void init_interp(int valstack_size, int argspace_size);

static void init_interp(int valstack_size, int argspace_size) {
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
 
  /* allocate globally used memory */
    values.s_base      = (valsptr) malloc(sizeof(value) * valstack_size);
    mem_assert(values.s_base);
    values.s_limit     = values.s_base + valstack_size;
    values.s_free      = values.s_base - 1;
    arguments          = (vptr) malloc(sizeof(value) * argspace_size);
    mem_assert(arguments);
    arguments_limit    = arguments + argspace_size;

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
void error(char *fmt, ...) {
  va_list args;

  va_start(args, fmt);
  fprintf(stderr, "error: ");
  vfprintf(stderr, fmt, args);
  fprintf(stderr, "\n");
  va_end(args);
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
        apply_closure(*cl, cl_emitm, error);
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
void run_interp(thread *t) {
  int            err_occurred = 0, 
                 done         = 0;
  unsigned char *next;

    /* pc    is kept in thread t        */
    /* V     is kept global             */
    /* rho   is kept in thread t        */
    /* sp    is kept in thread t        */
    /* g     is kept global             */
    /* sigma is left implicit!          */
    /* A     is kept global             */
    /* u     is kept in thread t        */
    /* s     is kept in t->stack_X      */

    actptr       act;
    bytecodeptr  pc;
    value       *locals;
    value       *locals_end;
    dataptr      stackdata;
    dataptr      stackdata_end;
    uid          u;

    actptr       caller;
    procedure   *curr_proc = NULL;
    const char  *name = NULL;

    assert(t != NULL);

    /* pop off activation record */
    t->stack_free = (void *) (((actptr) t->stack_free) - 1);
    act = (actptr) t->stack_free;
    mem_assert(act >= (actptr) t->stack_base);

      /* we get pc from t */
      pc            = t->pc;

      /* we get rest from act */
      locals        = act->locals;
      locals_end    = act->locals_end;
      stackdata     = act->stackdata;
      stackdata_end = act->stackdata_end;
      u             = act->u;
      caller        = act->caller;
      name          = act->name;
      curr_proc     = act->proc;

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

    /* reset global variables */
    values.s_free = values.s_base - 1;

  errorjmp_set = 1;
  if (setjmp(errorjmp)) {
    errorjmp_set = 0;
    fprintf(stderr, "error: unrecoverable runtime error at PC 0x%x\n", (unsigned)pc);
    if (name)
          fprintf(stderr, "| Stack trace:\n");
      fprintf(stderr, "| 0: %s()\n", name);
    if (caller)
          activation_trace(caller);

    if (name)
      fprintf(stderr, "Try disassembling '%s' to find relevant instructions\n",
                      name);
  } else {
    for (;;) {


#line 101 "generated-code"

{ 
  unsigned char * MATCH_p = pc;
  
  #line 201 "generated-code"
  { 
    unsigned /* [0..255] */ MATCH_w_8_0 = 
      (mem_aggregate((((MATCH_p) + 0)),DEF_BYTE_ORDER,1));
    if (37 <= (MATCH_w_8_0 & 0xff) /* op at 0 */ && (MATCH_w_8_0 & 0xff) /* op at 0 */ < 256) { 
      { 
        next = (((MATCH_p) + 0));
        
        #line 960 "interp.m"
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
              
              #line 941 "interp.m"
               {
                                                 curr_proc = (procedure *) p;
                                                 pc = next;
                                                 }
              
              
              #line 401 "generated-code" 
            } 
          }
          break;
        case 1: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 945 "interp.m"
               {
                                                 curr_proc = NULL;
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
              
              #line 442 "interp.m"
               if (width > 32) {  /* FIX this could be better */
                                                   width = sizeof(MP_T);
                                                 }
              
                                                 PUSH(to_CMM_value(v, width), values); 
                                                 pc = next;
              
              
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
              
              #line 502 "interp.m"
               {
                                                 assert(bo == DEF_BYTE_ORDER);
                                                 assert(al == DEF_ALIGN);
                                                 if (sz <= 0 || sz > sizeof(value)*8)
                                                   cmm_err_wint("cannot fetch %d bits", sz);
                                                 UNDERFLOW_CHECK(values, 3);
                                                 if (STACK_ELT(values, -2).bool) {
                                                     {
                                                       value *tostore       = (value *) STACK_ELT(values, -1).ptr;
              
                                                       cmm_assert(tostore != NULL, "attempted to STORE to address NULL");
                                                       memcpy(tostore, &(STACK_ELT(values, 0)), sz / 8);
                                                     }
                                                 }
                                                 values.s_free -= 3;
                                                 pc             = next;
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
              
              #line 472 "interp.m"
               {
                                                 assert(bo == DEF_BYTE_ORDER);
                                                 assert(al == DEF_ALIGN);
                                                 if (sz <= 0 || sz > sizeof(value)*8)
                                                   cmm_err_wint("cannot fetch %d bits", sz);
                                                   {
                                                     value *fetched       = (value *) STACK_ELT(values, 0).ptr;
                                                     value  v             = value_zero();
              
                                                     cmm_assert(fetched != NULL, "attempted to FETCH at address NULL");
              
                                                     memcpy((void *) &v, (const void *) fetched, sz / 8);
                                                     STACK_ELT(values, 0) = v;
                                                   }
                                                 pc = next;
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
              
              #line 488 "interp.m"
               {
                                                 assert(bo == DEF_BYTE_ORDER);
                                                 assert(al == DEF_ALIGN);
                                                 if (sz <= 0 || sz > sizeof(value)*8)
                                                   cmm_err_wint("cannot fetch %d bits", sz);
                                                   {
                                                     value *tostore       = (value *) STACK_ELT(values, -1).ptr;
              
                                                     cmm_assert(tostore != NULL, "attempted to STORE to address NULL");
                                                     memcpy(tostore, &(STACK_ELT(values, 0)), sz / 8);
                                                   }
                                                 values.s_free -= 2;
                                                 pc             = next;
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
              
              #line 534 "interp.m"
               cmm_assert(arguments + n < arguments_limit,
                                                        "invalid register index to argument space");
                                                 PUSH(arguments[n], values); pc = next;
              
              
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
              
              #line 531 "interp.m"
               cmm_assert(arguments + n < arguments_limit,
                                                        "invalid register index to argument space");
                                                 arguments[n] = POP(values); pc = next;
              
              
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
              
              #line 450 "interp.m"
                locals[n] = POP(values); pc = next;
              
              
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
              
              #line 451 "interp.m"
               globals[n] = POP(values); pc = next;
              
              
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
              
              #line 448 "interp.m"
               PUSH( locals[n], values); pc = next;
              
              
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
              
              #line 449 "interp.m"
               PUSH(globals[n], values); pc = next;
              
              
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
              
              #line 450 "interp.m"
                locals[n] = POP(values); pc = next;
              
              
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
              
              #line 451 "interp.m"
               globals[n] = POP(values); pc = next;
              
              
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
              
              #line 448 "interp.m"
               PUSH( locals[n], values); pc = next;
              
              
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
              
              #line 449 "interp.m"
               PUSH(globals[n], values); pc = next;
              
              
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
              
              #line 452 "interp.m"
               UNDERFLOW_CHECK(values, 2);
                                                 if (STACK_ELT(values, -1).bool) {
                                                   locals[n] = STACK_ELT(values, 0);
                                                 }
                                                 values.s_free -= 2;
                                                 pc             = next;
              
              
              
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
              
              #line 452 "interp.m"
               UNDERFLOW_CHECK(values, 2);
                                                 if (STACK_ELT(values, -1).bool) {
                                                   locals[n] = STACK_ELT(values, 0);
                                                 }
                                                 values.s_free -= 2;
                                                 pc             = next;
              
              
              
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
              
              #line 459 "interp.m"
               UNDERFLOW_CHECK(values, 2);
                                                 if (STACK_ELT(values, -1).bool) {
                                                   globals[n] = STACK_ELT(values, 0);
                                                 }
                                                 values.s_free -= 2;
                                                 pc             = next;
              
              
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
              
              #line 459 "interp.m"
               UNDERFLOW_CHECK(values, 2);
                                                 if (STACK_ELT(values, -1).bool) {
                                                   globals[n] = STACK_ELT(values, 0);
                                                 }
                                                 values.s_free -= 2;
                                                 pc             = next;
              
              
              #line 2301 "generated-code" 
            } 
          }
          break;
        case 20: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 537 "interp.m"
               { 
                                                 value v = POP(values);
                                                 pc      = (bytecodeptr) v.ptr;
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
              
              #line 541 "interp.m"
               {
                                                 value v = POP(values);
                                                 if (v.bool) {
                                                   pc = (bytecodeptr) a;
                                                 } else { pc = next; }
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
              
              #line 547 "interp.m"
               {
                                                 value v = POP(values);
                                                 if (!v.bool) {
                                                   pc = (bytecodeptr) a;
                                                 } else { pc = next; }
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
              
              #line 553 "interp.m"
               {
                                                 value v = POP(values);
                                                 pc      = (bytecodeptr) (v.bool ? a : b);
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
              
              #line 588 "interp.m"
               {
                                                 value        v;
                                                 CMM_label   *lbl;
              
                                                 v    = POP(values);
                                                 lbl  = (CMM_label *) v.ptr;
                                                 ASSERT_EMPTY(values);
                                                 if (lbl->ty == CMM_CFUNCTION) {
                                                                              {
                                                                              c_caller      call_helper;
                                                                              void        (*f) (void);
                                                                              lua_State    *L = c_func_table.L;
                                                                              unsigned int  i = lbl->lbl.cfunc_id;
              
                                                                              /* save current info in partial stack record */
                                                                              {
                                                                                actptr saved = (actptr) t->stack_free;
                                                                                t->stack_free = round_up((void *) (saved + 1));
                                                                                mem_assert(t->stack_free <= t->stack_limit);
              
                                                                                saved->pc            = pc;
                                                                                saved->locals        = locals;
                                                                                saved->locals_end    = locals_end;
                                                                                saved->stackdata     = stackdata;
                                                                                saved->stackdata_end = stackdata_end;
                                                                                /* we set kappa to NULL to signify partiality */
                                                                                saved->kappa         = NULL;
                                                                                saved->callee        = NULL;
                                                                                saved->u             = u;
                                                                                saved->caller        = caller;
                                                                                saved->name          = name;
                                                                                saved->proc          = curr_proc;
              
                                                                                /* also save pc in t */
                                                                                t->pc                = saved->pc;
              
                                                                                /* update info. to be used for stack traces */
                                                                                caller = saved;
                                                                              }
              
                                                                                                         lua_pushtable(L, c_func_table);
                                                                                                         lua_rawgeti(L, -1, i);
                                                                                                         lua_pushstring(L, C_FUNC_NAME);
                                                                                                         lua_gettable(L, -2);
                                                                                                         if (!lua_isstring(L, -1)) {
                                                                                                           name = NULL;
                                                                                                         } else {
                                                                                                           name = lua_tostring(L, -1);
                                                                                                         }
                                                                                   
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
              
                                                                                                         arguments = call_helper(arguments, f);
              
                                                                              /* restore needed info from partial stack record */
                                                                              {
                                                                                actptr saved  = ((actptr) t->stack_free) - 1;
                                                                                t->stack_free = (void *) saved;
              
                                                                                locals        = saved->locals;
                                                                                locals_end    = saved->locals_end;
                                                                                stackdata     = saved->stackdata;
                                                                                stackdata_end = saved->stackdata_end;
                                                                                u             = saved->u;
                                                                                caller        = saved->caller;
                                                                                name          = saved->name;
                                                                                curr_proc     = saved->proc;
                                                                              }
              
                                                                              pc = next;
                                                                              }
                                                 } else if (lbl->ty != CMM_PROCEDURE) {
                                                   if (lbl->ty == CMM_LABEL)
                                                    cmm_err_wstr("target label '%s' not a procedure",
                                                                 lbl->lbl.raddr->label->name);
              
                                                   cmm_err_wint("target label (0x%x) not a procedure"
                                                                " and appears corrupted",(int)v.ptr);
                                                 } else {
                                                                              {
                                                                                actptr       saved;
                                                                                                            actptr      *actptrptr;
                                                                                annotations *ann  = (annotations *) a;
                                                                                procedure   *proc = lbl->lbl.proc;
              
                                                                                assert(ann  != NULL);
                                                                                assert(proc != NULL);
              
                                                                                                           /* save necessary info in activation record */
                                                                                                           saved          = (actptr) t->stack_free;
                                                                                                           t->stack_free  = round_up(
                                                                                                                              ((actptr) t->stack_free) + 1);
                                                                                                           if (t->stack_free > t->stack_limit)
                                                                                                             cmm_err("ran out of stack space");
              
                                                                                                           saved->pc            = next;
                                                                                                           saved->locals        = locals;
                                                                                                           saved->locals_end    = locals_end;
                                                                                                           saved->stackdata     = stackdata;
                                                                                                           saved->stackdata_end = stackdata_end;
                                                                                                           saved->kappa         = ann;
                                                                                                           saved->u             = u;
                                                                                                                                   saved->caller        = caller;
                                                                                                           saved->name          = name;
                                                                                                           saved->proc          = curr_proc;
              
                                                                                                                                   /* also save pc in thread record */ 
                                                                                                                                   t->pc                = saved->pc;
              
                                                                                                          /* allocate memory, update state of the machine */
                                                                                                           cmm_assert(location_known(proc->raddr),
                                                                                                                      "cannot call undefined procedure");
              
                                                                                                           pc            = (bytecodeptr) location(proc->raddr);
                                                                                                           caller        = saved;
              
                                                                                                           actptrptr     = t->stack_free;
                                                                                                                                   t->stack_free = round_up((void *)
                                                                                                                                ((actptr *)(t->stack_free)+1));
              
                                                                                                           stackdata     = t->stack_free;
                                                                                                           t->stack_free = round_up(
                                                                                                                         (void *) (((dataptr) t->stack_free) +
                                                                                                                                   proc->stackdata_size));
                                                                                                           stackdata_end = (dataptr) (t->stack_free);
                                                                                                           mem_assert(t->stack_free <= t->stack_limit);
              
                                                                                                           locals        = t->stack_free;
                                                                                                           t->stack_free = (vptr)(t->stack_free) + 
                                                                                                                                                   proc->num_locals;
                                                                                                           locals_end    = (vptr) (t->stack_free);
                                                                                                           mem_assert(t->stack_free <= t->stack_limit);                             
                                                                                                           /* CALLEE */
                                                                                                           saved->callee = (actptr) locals_end;
              
                                                                                                                                   *actptrptr    = t->stack_free;
                                                                                                           u             = new_uid(t);
              
                                                                                curr_proc = proc;
                                                                                name      = proc->raddr->label->name;
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
              
              #line 758 "interp.m"
               {
                                                 value      v;
                                                 CMM_label *lbl;
                                                 procedure *proc;
                                                                         actptr    *actptrptr;
              
                                                 v    = POP(values);
                                                 lbl  = (CMM_label *) v.ptr;
                                                 ASSERT_EMPTY(values);
              
                                                 cmm_assert(lbl->ty == CMM_PROCEDURE,
                                                            "target label not a procedure");
                                                 proc = lbl->lbl.proc;
                                                 assert(proc != NULL);
              
                                                 cmm_assert(location_known(proc->raddr),
                                                            "cannot call undefined procedure");
                                                 pc   = (bytecodeptr) location(proc->raddr);
              
                                                                            caller        = caller;
                                                                                                    stackdata_end = stackdata + proc->stackdata_size;
              
                                                                                                    locals        = round_up(stackdata_end);
                                                                            locals_end    = locals + proc->num_locals;
                                                                            t->stack_free = (void *) locals_end;
                                                                            mem_assert(t->stack_free <= t->stack_limit);
              
                                                                                                    /* reset actptrptr */
                                                                                                    actptrptr = ((void *) ((actptr *)stackdata - 1));
                                                                                                    *actptrptr = t->stack_free;
              
                                                 /* deal with uid : */
                                                 dies_uid(u);
                                                 u = new_uid(t);
              
                                                 name      = proc->raddr->label->name;
                                                 curr_proc = proc;
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
              
              #line 796 "interp.m"
               { 
                                                 lua_State *L;
              
                                                 ASSERT_EMPTY(values);
                                                 assert(i <= count);       /* this can't happen */
                                                 
                                                 /* FIX for now we allow walking off stack */
                                                 if (stackdata == round_up((void *)
                                                                  (((actptr *)(t->stack_base))+1))) {
                                                   /* reclaim dead space */
                                                   interval_list_free(t->dead_list);
                                                   t->stack_free = t->stack_base;
              
                                                   /* we free t -- THIS COULD BE DANGEROUS? */
                                                   free(t);
              
                                                   /*
                                                    printf("[returned from specified procedure].\n");
                                                   */
              
                                                   done = 1;
                                                   break;
                                                 }
              
                                                 /* reclaim dead space */
                                                 t->stack_free = caller;
              
                                                                            L = caller->kappa->also_returns_to.L;
                                                                            lua_pushtable(L, caller->kappa->also_returns_to);
              
                                                                            /* we here assert that count = |returns| */
                                                                            cmm_assert(count == lua_getn(L, -1),
                                                                                       "continuation count in return stmt. "
                                                                                       "does not match number of return "
                                                                                       "continuations");
              
                                                                            if (i == count) {
                                                                              pc = caller->pc;
                                                                            } else {
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
                                                                              pc = CMM_label_location(lbl);
                                                                            }
                                                                            lua_pop(L, 1); /* pop table */
              
                                                                            locals         = caller->locals;
                                                                            locals_end     = caller->locals_end;
                                                                            stackdata      = caller->stackdata;
                                                                            stackdata_end  = caller->stackdata_end;
              
                                                                            caller->callee = NULL;
              
                                                 dies_uid(u);
                                                 u = caller->u;
              
                                                 caller = caller->caller;
                                                 }
              
              
              #line 3001 "generated-code" 
            } 
          }
          break;
        case 27: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 868 "interp.m"
               {
                                                 value         v;
                                                 /* CMM_label    *lbl; */
                                                 continuation *cont;
                                                 activation   *dest_act;
                                                 bytecodeptr   cont_pc;
              
                                                 v   = POP(values);
              
                                                 cont = (continuation *) v.ptr;
              
                                                 /* make sure cont is a valid cut continuation */
                                                 check_cont(cont);
                                                 /* FIX: we _do not_ check UIDs; there is currently no way to do this */
              
                                                 cont_pc  = cont->code;
              
                                                 /* the 'sp' pointer points to the beginning of stackdata-space; we cheat
                                                  * and find the pointer to the activation record in the sizeof(actptr *) bytes
                                                  * before this space... */
                                                 dest_act = *((actptr *)(cont->sp) - 1);
                                                                                {
                                                                                /* save needed info in activation record */
                                                                                actptr saved = (actptr) t->stack_free;
                                                                                t->stack_free = round_up((void *) (saved + 1));
                                                                                mem_assert(t->stack_free <= t->stack_limit);
              
                                                                                saved->pc            = next;
                                                                                saved->locals        = locals;
                                                                                saved->locals_end    = locals_end;
                                                                                saved->stackdata     = stackdata;
                                                                                saved->stackdata_end = stackdata_end;
                                                                                /* we set kappa to NULL to signify partiality */
                                                                                saved->kappa         = NULL;
                                                                                saved->callee        = NULL;
                                                                                saved->u             = u;
                                                                                saved->caller        = caller;
                                                                                saved->name          = name;
                                                                                saved->proc          = curr_proc;
              
                                                                                                        /* also save pc in thread record */ 
                                                                                                        t->pc                = saved->pc;
                                                                                }
                                                 
                                                 if (dest_act->u.thread != u.thread) {
                                                     /* jump over to destination thread */
                                                     t = find_thread(u);
                                                 } else if (dest_act->u.frame == u.frame) {
                                                     /* if we're here, then we're cutting to a
                                                        continuation in the current activation */
                                                     /* FIX : for now, just treat like GOTO */
                                                     pc = cont_pc;
                                                     continue;
                                                 }
              
                                                 /* <kill off activations above [[dest_act]] in [[t]]> */
                       
                                                                            /* update state of machine */
                                                                            pc            = cont_pc;
                                                                            locals        = dest_act->locals;
                                                                            locals_end    = dest_act->locals_end;
                                                                            stackdata     = dest_act->stackdata;
                                                                            stackdata_end = dest_act->stackdata_end;
                                                                            u             = dest_act->u;
                                                                            caller        = dest_act->caller;
                                                                            name          = dest_act->name;
                                                                            curr_proc     = dest_act->proc;
              
                                                                            dest_act->callee = NULL;
              
                                                 /* recover freed memory */
                                                 t->stack_free     = dest_act;
                                                     }
              
              
              #line 3101 "generated-code" 
            } 
          }
          break;
        case 28: case 34: 
          { 
            { 
              next = (((MATCH_p) + 0));
              
              #line 960 "interp.m"
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
              unsigned s = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 557 "interp.m"
               {
                                                 CMM_label *lbl = (CMM_label *) s;
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
                                                                "(corrupt label 0x%x)", s);
                                                 }
              
                                                 PUSH(v, values);
                                                 pc = next;
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
              
              #line 519 "interp.m"
               values = (((operator *) o)->f)(values); 
                                                 /* REMOVE this print_value_stack call */
                                                 print_value_stack(values.s_free, values.s_base, 
                                                                   "values");
                                                 pc = next;
              
              
              #line 3401 "generated-code" 
            } 
          }
          break;
        case 31: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 524 "interp.m"
               PUSH(to_CMM_value(cmm_getround(),2), values);
                                                 pc = next;
              
              
              #line 3501 "generated-code" 
            } 
          }
          break;
        case 32: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 526 "interp.m"
               {
                                                 value v  = POP(values);
                                                 cmm_setround(v.bits2);
                                                 pc       = next;
                                                 }
              
              
              #line 3601 "generated-code" 
            } 
          }
          break;
        case 33: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 465 "interp.m"
               {
                                                 value v = value_zero();
                                                 v.ptr   = (void *) stackdata;
                                                 PUSH(v, values); 
              
                                                 pc      = next;
                                                 }
              
              
              #line 3701 "generated-code" 
            } 
          }
          break;
        case 35: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 949 "interp.m"
               {
                                                   int saved_verbosity = verbosity;
                                                   verbosity           = 1;
                                                   print_value_stack(values.s_free, values.s_base,
                                                                     "values");
                                                   verbosity           = saved_verbosity;
                                                   pc                  = next;
                                                 }
              
              
              #line 3801 "generated-code" 
            } 
          }
          break;
        case 36: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 957 "interp.m"
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

#line 962 "interp.m"

      if (err_occurred || done) break;
    }
  }

  errorjmp_set = 0;
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

  free(values.s_base);     values.s_base = NULL;
  free(arguments);         arguments     = NULL;
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

