
#line 1 "generated-code"
#include <assert.h>
#define sign_extend(N,SIZE) (((int)((N) << (sizeof(unsigned)*8-(SIZE)))) >> (sizeof(unsigned)*8-(SIZE)))

#line 1 "disasm.m"
#include "disasm.h"

#include <stdio.h>
#include <mclib.h>
#include "types.h"
#include "controlflow.h"
#include "operator.h"
#include "interp.h"
#include "machine.h"
#include "ccall.h"
#include "label.h"

static void print_procedure(FILE *fd, procedure *p) {
  if (p == NULL)
    asmprintf(fd, "<null>");
  else
    asmprintf(fd, "<Procedure>");
}
static void print_table(FILE *fd, table t) {
  if (t.data != LUA_REFNIL && t.data != LUA_NOREF)
    asmprintf(fd, "<Lua table #%d>", t.data);
  else
    asmprintf(fd, "<bogus value!!!>");
}
static void print_byteorder(FILE *fd, byte_order b) {
  switch (b) {
  case BIG:
    asmprintf(fd, "BIG_ENDIAN");
    break;
  case LITTLE:
    asmprintf(fd, "LITTLE_ENDIAN");
    break;
  default:
    asmprintf(fd, "<unknown byte_order>");
  }
}
static void print_unsigned_bits8(FILE *fd, unsigned /* [0..255] */ b8) {
  asmprintf(fd, "%u", b8);
}
static void print_unsigned_bits16(FILE *fd, unsigned /* [0..65535] */ b16) {
  
  asmprintf(fd, "%u", b16);
}
static void print_unsigned_bits32(FILE *fd, unsigned b32) {
  
  asmprintf(fd, "0x%x", b32);
}
static void disprintreloc(FILE *fd, unsigned a) {
  CMM_label *lbl = (CMM_label*)a; 

  asmprintf(fd, "<address 0x%x>", a);
  if (lbl->ty == CMM_PROCEDURE) {
    asmprintf(fd, " (proc %s)", lbl->lbl.proc->raddr->label->name);
  } else if (lbl->ty == CMM_LABEL) {
    asmprintf(fd, " (label %s)", lbl->lbl.raddr->label->name);
  } else if (lbl->ty == CMM_CFUNCTION) {
    lua_State    *L = c_func_table.L;

    lua_pushtable(L, c_func_table);
    lua_rawgeti(L, -1, lbl->lbl.cfunc_id);
    lua_pushstring(L, C_FUNC_NAME);
    lua_gettable(L, -2);
    if (lua_isstring(L, -1)) {
      asmprintf(fd, " (cfunc %s)", lua_tostring(L, -1));
    }
    lua_pop(L, 3);
  }
}

void disassemble_instructions(FILE *fd, CMM_label *loc) {
  unsigned char *pc = (unsigned char *) CMM_label_location(loc);

  if (fd == NULL) fd = stdout;

  while (pc) {
    pc = disassemble_instruction(fd, pc);
  }
}

unsigned char* disassemble_instruction(FILE *fd, unsigned char* pc) {
  unsigned char *next;



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
        
        #line 259 "disasm.m"
        {
                 asmprintf(fd, "0x%x: <data: %x>\n", pc, *((u_int32 *) pc));
                 next = pc + 4;
               }
        
        
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
              unsigned a = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 237 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "PROCEDURE ");
                    print_procedure(fd, (procedure *) a);
                    asmprintf(fd, "\n");
              
              
              #line 401 "generated-code" 
            } 
          }
          break;
        case 1: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 241 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "END_PROCEDURE ");
                    asmprintf(fd, "\n");
                    return NULL;
              
              
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
              unsigned b32 = MATCH_w_32_8 /* bits32 at 8 */;
              unsigned b8 = MATCH_w_8_40 & 0xff /* bits8 at 40 */;
              next = (((MATCH_p) + 6));
              
              #line 101 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "PUSH ");
                    print_unsigned_bits32(fd, b32);
                    asmprintf(fd, " : width ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 601 "generated-code" 
            } 
          }
          break;
        case 3: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_24 = 
                (mem_aggregate((((MATCH_p) + 3)),DEF_BYTE_ORDER,1));
              unsigned c = MATCH_w_8_24 & 0xff /* bits8c at 24 */;
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              next = (((MATCH_p) + 4));
              
              #line 111 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "GSTORE ");
                    print_unsigned_bits8(fd, a);
                    asmprintf(fd, "%s", " ");
                    print_byteorder(fd, b);
                    asmprintf(fd, "%s", " ");
                    print_unsigned_bits8(fd, c);
                    asmprintf(fd, "\n");
              
              
              #line 701 "generated-code" 
            } 
          }
          break;
        case 4: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_24 = 
                (mem_aggregate((((MATCH_p) + 3)),DEF_BYTE_ORDER,1));
              unsigned c = MATCH_w_8_24 & 0xff /* bits8c at 24 */;
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              next = (((MATCH_p) + 4));
              
              #line 119 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "FETCH ");
                    print_unsigned_bits8(fd, a);
                    asmprintf(fd, "%s", " ");
                    print_byteorder(fd, b);
                    asmprintf(fd, "%s", " ");
                    print_unsigned_bits8(fd, c);
                    asmprintf(fd, "\n");
              
              
              #line 801 "generated-code" 
            } 
          }
          break;
        case 5: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_24 = 
                (mem_aggregate((((MATCH_p) + 3)),DEF_BYTE_ORDER,1));
              unsigned c = MATCH_w_8_24 & 0xff /* bits8c at 24 */;
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              next = (((MATCH_p) + 4));
              
              #line 127 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "STORE ");
                    print_unsigned_bits8(fd, a);
                    asmprintf(fd, "%s", " ");
                    print_byteorder(fd, b);
                    asmprintf(fd, "%s", " ");
                    print_unsigned_bits8(fd, c);
                    asmprintf(fd, "\n");
              
              
              #line 901 "generated-code" 
            } 
          }
          break;
        case 6: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 135 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "FETCH_ARG ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 1001 "generated-code" 
            } 
          }
          break;
        case 7: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 139 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "STORE_ARG ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 1101 "generated-code" 
            } 
          }
          break;
        case 8: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 143 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "STORE_LOCAL8 ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 1201 "generated-code" 
            } 
          }
          break;
        case 9: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 147 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "STORE_GLOBAL8 ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 1301 "generated-code" 
            } 
          }
          break;
        case 10: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 151 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "FETCH_LOCAL8 ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 1401 "generated-code" 
            } 
          }
          break;
        case 11: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 155 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "FETCH_GLOBAL8 ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 1501 "generated-code" 
            } 
          }
          break;
        case 12: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned b16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 159 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "STORE_LOCAL16 ");
                    print_unsigned_bits16(fd, b16);
                    asmprintf(fd, "\n");
              
              
              #line 1601 "generated-code" 
            } 
          }
          break;
        case 13: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned b16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 163 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "STORE_GLOBAL16 ");
                    print_unsigned_bits16(fd, b16);
                    asmprintf(fd, "\n");
              
              
              #line 1701 "generated-code" 
            } 
          }
          break;
        case 14: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned b16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 167 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "FETCH_LOCAL16 ");
                    print_unsigned_bits16(fd, b16);
                    asmprintf(fd, "\n");
              
              
              #line 1801 "generated-code" 
            } 
          }
          break;
        case 15: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned b16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 171 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "FETCH_GLOBAL16 ");
                    print_unsigned_bits16(fd, b16);
                    asmprintf(fd, "\n");
              
              
              #line 1901 "generated-code" 
            } 
          }
          break;
        case 16: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 175 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "GSTORE_LOCAL8 ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 2001 "generated-code" 
            } 
          }
          break;
        case 17: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned b16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 179 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "GSTORE_LOCAL16 ");
                    print_unsigned_bits16(fd, b16);
                    asmprintf(fd, "\n");
              
              
              #line 2101 "generated-code" 
            } 
          }
          break;
        case 18: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned b8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 183 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "GSTORE_GLOBAL8 ");
                    print_unsigned_bits8(fd, b8);
                    asmprintf(fd, "\n");
              
              
              #line 2201 "generated-code" 
            } 
          }
          break;
        case 19: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned b16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 187 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "GSTORE_GLOBAL16 ");
                    print_unsigned_bits16(fd, b16);
                    asmprintf(fd, "\n");
              
              
              #line 2301 "generated-code" 
            } 
          }
          break;
        case 20: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 191 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "GOTO");
                    asmprintf(fd, "\n");
              
              
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
              
              #line 194 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "CBRANCHT ");
                    disprintreloc(fd, a);
                    asmprintf(fd, "\n");
              
              
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
              
              #line 198 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "CBRANCHF ");
                    disprintreloc(fd, a);
                    asmprintf(fd, "\n");
              
              
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
              
              #line 202 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "BRANCHTF ");
                    disprintreloc(fd, a);
                    asmprintf(fd, "%s", " ");
                    disprintreloc(fd, b);
                    asmprintf(fd, "\n");
              
              
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
              
              #line 208 "disasm.m"
                    {
                    annotations *ann = (annotations *) a;
                    asmprintf(fd, "0x%x: %s", pc, "CALL ");
                    asmprintf(fd, " { also cuts to = ");
                    print_table(fd, ann->also_cuts_to);
                    asmprintf(fd, ", also unwinds to = ");
                    print_table(fd, ann->also_unwinds_to);
                    asmprintf(fd, ", also returns to = ");
                    print_table(fd, ann->also_returns_to);
                    if (ann->also_aborts == 0) {
                      asmprintf(fd, ", also aborts = false }");
                    } else {
                      asmprintf(fd, ", also aborts = true }");
                    }
                    asmprintf(fd, "\n");
                    }
              
              
              #line 2801 "generated-code" 
            } 
          }
          break;
        case 25: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 225 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "CMM_TAIL_CALL");
                    asmprintf(fd, "\n");
              
              
              #line 2901 "generated-code" 
            } 
          }
          break;
        case 26: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_16 = 
                (mem_aggregate((((MATCH_p) + 2)),DEF_BYTE_ORDER,1));
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              next = (((MATCH_p) + 3));
              
              #line 228 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "RETURN ");
                    print_unsigned_bits8(fd, a);
                    asmprintf(fd, "%s", " ");
                    print_unsigned_bits8(fd, b);
                    asmprintf(fd, "\n");
              
              
              #line 3001 "generated-code" 
            } 
          }
          break;
        case 27: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 234 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "CUT");
                    asmprintf(fd, "\n");
              
              
              #line 3101 "generated-code" 
            } 
          }
          break;
        case 28: case 34: 
          { 
            { 
              next = (((MATCH_p) + 0));
              
              #line 259 "disasm.m"
              {
                       asmprintf(fd, "0x%x: <data: %x>\n", pc, *((u_int32 *) pc));
                       next = pc + 4;
                     }
              
              
              #line 3201 "generated-code" 
            } 
          }
          break;
        case 29: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned a = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 107 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "PUSH_SYMBOL ");
                    disprintreloc(fd, a);
                    asmprintf(fd, "\n");
              
              
              #line 3301 "generated-code" 
            } 
          }
          break;
        case 30: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned op = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 5));
              
              #line 84 "disasm.m"
                    {
                      operator *o = (operator *) op;
                      asmprintf(fd, "0x%x: %s", pc, "APPLY_OPERATOR ");
                      asmprintf(fd, "{ name = \"%s\"", o->opname);
                      asmprintf(fd, ", num_args = %u", o->num_args);
                      asmprintf(fd, ", f = ");
              
                      if (o->f) {
                        asmprintf(fd, "<operator func>");
                      } else {
                            asmprintf(fd, "<! INVALID !>"  );
                      }
              
                      asmprintf(fd, " }");
                      asmprintf(fd, "\n");
                    }
              
              
              #line 3401 "generated-code" 
            } 
          }
          break;
        case 31: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 245 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "FETCH ROUNDING MODE ");
                    asmprintf(fd, "\n");
              
              
              #line 3501 "generated-code" 
            } 
          }
          break;
        case 32: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 248 "disasm.m"
               
                    asmprintf(fd, "0x%x: %s", pc, "STORE_ROUNDING MODE ");
                    asmprintf(fd, "\n");
              
              
              #line 3601 "generated-code" 
            } 
          }
          break;
        case 33: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 251 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "FETCH_SP ");
                    asmprintf(fd, "\n");
              
              
              #line 3701 "generated-code" 
            } 
          }
          break;
        case 35: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 254 "disasm.m"
                    asmprintf(fd, "0x%x: %s", pc, "BREAKPT ");
                    asmprintf(fd, "\n");
              
              
              #line 3801 "generated-code" 
            } 
          }
          break;
        case 36: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 257 "disasm.m"
                    return NULL;
              
              
              #line 3901 "generated-code" 
            } 
          }
          break;
        default: assert(0);
      } /* MATCH_w_8_0 & 0xff -- op at 0 -- */  
  } 
}

#line 264 "disasm.m"

  return next;
}


#line 4001 "generated-code"

