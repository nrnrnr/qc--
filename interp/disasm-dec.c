
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

static void print_procedure(procedure *p) {
  if (p == NULL)
    asmprintf(asmprintfd, "<null>");
  else
    asmprintf(asmprintfd, "<Procedure>");
}
static void print_table(table t) {
  if (t.data != LUA_REFNIL && t.data != LUA_NOREF)
    asmprintf(asmprintfd, "<Lua table #%d>", t.data);
  else
    asmprintf(asmprintfd, "<bogus value!!!>");
}
static void print_byteorder(byte_order b) {
  switch (b) {
  case BIG:
    asmprintf(asmprintfd, "BIG_ENDIAN");
    break;
  case LITTLE:
    asmprintf(asmprintfd, "LITTLE_ENDIAN");
    break;
  default:
    asmprintf(asmprintfd, "<unknown byte_order>");
  }
}
static void print_unsigned_bits8(unsigned /* [0..255] */ bits8) {
  
  asmprintf(asmprintfd, "%u", bits8);
}
static void print_unsigned_bits16(unsigned /* [0..65535] */ bits16) {
  
  asmprintf(asmprintfd, "%u", bits16);
}
static void print_unsigned_bits32(unsigned bits32) {
  
  asmprintf(asmprintfd, "0x%x", bits32);
}
static void disprintreloc(unsigned a) {
  asmprintf(asmprintfd, "<address %x>", a);
}

void disassemble_instructions(CMM_label *loc) {
  unsigned char *pc = (unsigned char *) CMM_label_location(loc);
  unsigned char *next;

  asmprintfd = stdout;

  for (;;) {


#line 101 "generated-code"

{ 
  unsigned char * MATCH_p = pc;
  
  #line 201 "generated-code"
  { 
    unsigned /* [0..255] */ MATCH_w_8_0 = 
      (mem_aggregate((((MATCH_p) + 0)),DEF_BYTE_ORDER,1));
    if (36 <= (MATCH_w_8_0 & 0xff) /* op at 0 */ && (MATCH_w_8_0 & 0xff) /* op at 0 */ < 256) { 
      { 
        next = (((MATCH_p) + 0));
        
        #line 225 "disasm.m"
        {
                 asmprintf(asmprintfd, "%x: <data: %x>\n", pc, 
                                       *((u_int32 *) pc));
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
              
              #line 206 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "PROCEDURE ");
                    print_procedure((procedure *) a);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 401 "generated-code" 
            } 
          }
          break;
        case 1: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 210 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "END_PROCEDURE ");
                    asmprintf(asmprintfd, "\n");
                    return;
              
              
              #line 501 "generated-code" 
            } 
          }
          break;
        case 2: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned /* [0..255] */ MATCH_w_8_40 = 
                (mem_aggregate((((MATCH_p) + 5)),DEF_BYTE_ORDER,1));
              unsigned bits32 = MATCH_w_32_8 /* bits32 at 8 */;
              unsigned bits8 = MATCH_w_8_40 & 0xff /* bits8 at 40 */;
              next = (((MATCH_p) + 6));
              
              #line 70 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "PUSH ");
                    print_unsigned_bits32(bits32);
                    asmprintf(asmprintfd, " : width ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
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
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 4));
              
              #line 80 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "GSTORE ");
                    print_unsigned_bits8(a);
                    asmprintf(asmprintfd, "%s", " ");
                    print_byteorder(b);
                    asmprintf(asmprintfd, "%s", " ");
                    print_unsigned_bits8(c);
                    asmprintf(asmprintfd, "\n");
              
              
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
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 4));
              
              #line 88 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "FETCH ");
                    print_unsigned_bits8(a);
                    asmprintf(asmprintfd, "%s", " ");
                    print_byteorder(b);
                    asmprintf(asmprintfd, "%s", " ");
                    print_unsigned_bits8(c);
                    asmprintf(asmprintfd, "\n");
              
              
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
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 4));
              
              #line 96 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "STORE ");
                    print_unsigned_bits8(a);
                    asmprintf(asmprintfd, "%s", " ");
                    print_byteorder(b);
                    asmprintf(asmprintfd, "%s", " ");
                    print_unsigned_bits8(c);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 901 "generated-code" 
            } 
          }
          break;
        case 6: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 104 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "FETCH_ARG ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1001 "generated-code" 
            } 
          }
          break;
        case 7: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 108 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "STORE_ARG ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1101 "generated-code" 
            } 
          }
          break;
        case 8: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 112 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "STORE_LOCAL8 ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1201 "generated-code" 
            } 
          }
          break;
        case 9: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 116 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "STORE_GLOBAL8 ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1301 "generated-code" 
            } 
          }
          break;
        case 10: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 120 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "FETCH_LOCAL8 ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1401 "generated-code" 
            } 
          }
          break;
        case 11: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 124 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "FETCH_GLOBAL8 ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1501 "generated-code" 
            } 
          }
          break;
        case 12: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned bits16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 128 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "STORE_LOCAL16 ");
                    print_unsigned_bits16(bits16);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1601 "generated-code" 
            } 
          }
          break;
        case 13: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned bits16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 132 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "STORE_GLOBAL16 ");
                    print_unsigned_bits16(bits16);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1701 "generated-code" 
            } 
          }
          break;
        case 14: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned bits16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 136 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "FETCH_LOCAL16 ");
                    print_unsigned_bits16(bits16);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1801 "generated-code" 
            } 
          }
          break;
        case 15: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned bits16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 140 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "FETCH_GLOBAL16 ");
                    print_unsigned_bits16(bits16);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 1901 "generated-code" 
            } 
          }
          break;
        case 16: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 144 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "GSTORE_LOCAL8 ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 2001 "generated-code" 
            } 
          }
          break;
        case 17: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned bits16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 148 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "GSTORE_LOCAL16 ");
                    print_unsigned_bits16(bits16);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 2101 "generated-code" 
            } 
          }
          break;
        case 18: 
          { 
            { 
              unsigned /* [0..255] */ MATCH_w_8_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,1));
              unsigned bits8 = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 2));
              
              #line 152 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "GSTORE_GLOBAL8 ");
                    print_unsigned_bits8(bits8);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 2201 "generated-code" 
            } 
          }
          break;
        case 19: 
          { 
            { 
              unsigned /* [0..65535] */ MATCH_w_16_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,2));
              unsigned bits16 = MATCH_w_16_8 & 0xffff /* bits16 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 156 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "GSTORE_GLOBAL16 ");
                    print_unsigned_bits16(bits16);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 2301 "generated-code" 
            } 
          }
          break;
        case 20: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 160 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "GOTO");
                    asmprintf(asmprintfd, "\n");
              
              
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
              
              #line 163 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "CBRANCHT ");
                    disprintreloc(a);
                    asmprintf(asmprintfd, "\n");
              
              
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
              
              #line 167 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "CBRANCHF ");
                    disprintreloc(a);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 2601 "generated-code" 
            } 
          }
          break;
        case 23: 
          { 
            { 
              unsigned MATCH_w_32_8 = 
                (mem_aggregate((((MATCH_p) + 1)),DEF_BYTE_ORDER,4));
              unsigned MATCH_w_32_40 = 
                (mem_aggregate((((MATCH_p) + 5)),DEF_BYTE_ORDER,4));
              unsigned b = MATCH_w_32_40 /* bits32 at 40 */;
              unsigned a = MATCH_w_32_8 /* bits32 at 8 */;
              next = (((MATCH_p) + 9));
              
              #line 171 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "BRANCHTF ");
                    disprintreloc(a);
                    asmprintf(asmprintfd, "%s", " ");
                    disprintreloc(b);
                    asmprintf(asmprintfd, "\n");
              
              
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
              
              #line 177 "disasm.m"
                    {
                    annotations *ann = (annotations *) a;
                    asmprintf(asmprintfd, "%x: %s", pc, "CALL ");
                    asmprintf(asmprintfd, " { also cuts to = ");
                    print_table(ann->also_cuts_to);
                    asmprintf(asmprintfd, ", also unwinds to = ");
                    print_table(ann->also_unwinds_to);
                    asmprintf(asmprintfd, ", also returns to = ");
                    print_table(ann->also_returns_to);
                    if (ann->also_aborts == 0) {
                      asmprintf(asmprintfd, ", also aborts = false }");
                    } else {
                      asmprintf(asmprintfd, ", also aborts = true }");
                    }
                    asmprintf(asmprintfd, "\n");
                    }
              
              
              #line 2801 "generated-code" 
            } 
          }
          break;
        case 25: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 194 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "CMM_TAIL_CALL");
                    asmprintf(asmprintfd, "\n");
              
              
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
              unsigned b = MATCH_w_8_16 & 0xff /* bits8b at 16 */;
              unsigned a = MATCH_w_8_8 & 0xff /* bits8 at 8 */;
              next = (((MATCH_p) + 3));
              
              #line 197 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "RETURN ");
                    print_unsigned_bits8(a);
                    asmprintf(asmprintfd, "%s", " ");
                    print_unsigned_bits8(b);
                    asmprintf(asmprintfd, "\n");
              
              
              #line 3001 "generated-code" 
            } 
          }
          break;
        case 27: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 203 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "CUT");
                    asmprintf(asmprintfd, "\n");
              
              
              #line 3101 "generated-code" 
            } 
          }
          break;
        case 28: case 33: 
          { 
            { 
              next = (((MATCH_p) + 0));
              
              #line 225 "disasm.m"
              {
                       asmprintf(asmprintfd, "%x: <data: %x>\n", pc, 
                                             *((u_int32 *) pc));
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
              
              #line 76 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "PUSH_SYMBOL ");
                    disprintreloc(a);
                    asmprintf(asmprintfd, "\n");
              
              
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
              
              #line 59 "disasm.m"
                    {
                      operator *o = (operator *) op;
                      asmprintf(asmprintfd, "%x: %s", pc, "APPLY_OPERATOR ");
                      asmprintf(asmprintfd, "{ name = \"%s\"", o->opname);
                      asmprintf(asmprintfd, ", num_args = %u", o->num_args);
                      asmprintf(asmprintfd, ", f = ");
                      disprintreloc((unsigned) (o->f));
                      asmprintf(asmprintfd, " }");
                      asmprintf(asmprintfd, "\n");
                    }
              
              
              #line 3401 "generated-code" 
            } 
          }
          break;
        case 31: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 214 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "FETCH ROUNDING MODE ");
                    asmprintf(asmprintfd, "\n");
              
              
              #line 3501 "generated-code" 
            } 
          }
          break;
        case 32: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 217 "disasm.m"
               
                    asmprintf(asmprintfd, "%x: %s", pc, "STORE_ROUNDING MODE ");
                    asmprintf(asmprintfd, "\n");
              
              
              #line 3601 "generated-code" 
            } 
          }
          break;
        case 34: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 220 "disasm.m"
                    asmprintf(asmprintfd, "%x: %s", pc, "BREAKPT ");
                    asmprintf(asmprintfd, "\n");
              
              
              #line 3701 "generated-code" 
            } 
          }
          break;
        case 35: 
          { 
            { 
              next = (((MATCH_p) + 1));
              
              #line 223 "disasm.m"
                    return;
              
              
              #line 3801 "generated-code" 
            } 
          }
          break;
        default: assert(0);
      } /* MATCH_w_8_0 & 0xff -- op at 0 -- */  
  } 
}

#line 231 "disasm.m"

    pc = next;
  }
  /* return next; */
  return;
}


#line 3901 "generated-code"

