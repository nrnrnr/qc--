#ifndef INCLUDE_MCLIBH
#define INCLUDE_MCLIBH

#ifndef assert
#include <assert.h>
#endif 

/* this group is available for users */

typedef struct reloc_block *RBlock;
typedef struct label *RLabel;
typedef struct rclosure *RClosure;
typedef void (*Emitter) 
    (RBlock, unsigned dest_lc, unsigned long bits, unsigned size);
typedef void (*FailCont)(char *fmt, ...);
typedef enum mc_alloc_pool { 
    RBlock_pool=1, RBlock_data_pool, RLabel_pool, RAddr_pool
} Mc_alloc_pool;
typedef struct relocatable_address *RAddr;
extern RBlock block_new(unsigned size);
extern void set_lc(RBlock rb, unsigned lc);
extern void set_block(RBlock rb);
extern void set_address(RBlock, unsigned);
extern void set_register(RBlock rb, unsigned reg, unsigned regaddr);
extern unsigned block_reg(RBlock rb);
extern unsigned block_regaddr(RBlock rb);
extern RLabel label_new(char *name);
extern void label_define(RLabel lbl, int offset);
extern void label_define_at(RLabel lbl, RBlock block, unsigned lc);
extern void (*emitm)(unsigned long value, unsigned n);
extern void emitl(unsigned long value, unsigned n);
extern void emitb(unsigned long value, unsigned n);
extern void align(unsigned n);
extern void apply_closure(RClosure cl, Emitter emitter, FailCont failc);
extern void (*cl_emitm)(RBlock dest_block, unsigned dest_lc, 
                           unsigned long bits, unsigned size);
extern void cl_emitl (RBlock dest_block, unsigned dest_lc, 
                           unsigned long bits, unsigned size);
extern void cl_emitb (RBlock dest_block, unsigned dest_lc, 
                           unsigned long bits, unsigned size);
extern void block_write(int fd,RBlock rb,unsigned start,unsigned n);
extern void block_copy(unsigned char *buf,
                       RBlock rb, unsigned start, unsigned n);
extern unsigned long (*block_fetchm)(RBlock dest_block, 
                                     unsigned dest_lc, unsigned size);
extern unsigned long   block_fetchl (RBlock dest_block, 
                                     unsigned dest_lc, unsigned size);
extern unsigned long   block_fetchb (RBlock dest_block, 
                                     unsigned dest_lc, unsigned size);
extern void (*asmprintf)(void *closure, const char *fmt, ...);
extern void *asmprintfd; /* closure */
extern void (*asmprintreloc)(RAddr reloc); /* calls asmprintf */
extern RAddr addr_new(RLabel label, int offset);
extern RAddr unsigned_to_raddr(unsigned lc);
extern void *mc_alloc(int size, Mc_alloc_pool pool);
extern RClosure mc_alloc_closure(unsigned size, 
                         RBlock dest_block, unsigned dest_lc);

/* this group either supports macros or is needed by emission procedures */

extern void (*fail)(char *fmt, ...);
struct relocatable_address {
    struct label *label;
    int offset;
};
typedef struct rblock_buffer {
  unsigned char *data, *limit;
  struct rblock_buffer *next;
  unsigned datalc;
} *Buffer;
struct reloc_block { 
  struct rblock_buffer firstbuf, *curbuf;
  unsigned char *p;     /* points to current lc -- dirty */
  unsigned size;        /* highest lc ever -- dirty */
  struct { unsigned address:1, reg:1; } known;
  unsigned address;       /* absolute address of block in memory */
  unsigned reg;           /* number of register pointing into this block */
  unsigned reglc;         /* when reg non-null, location to which it points */
  struct label *label;    /* (anonymous) label associated with this block */
  int size_hint;
  struct reloc_block *next;       /* instrumentation */
};
#define crb() currb
extern RBlock currb;              /* the current relocatable block */
extern unsigned char *currb_p;    /* the true version of currb->p */
extern unsigned char *currb_safe; 
              /* the true version of currb->curbuf->limit - MARGIN */
extern RBlock defined_rbs;      /* instrumentation */
extern int nblocks;             /* instrumentation */
struct label {
    RBlock block;
    unsigned offset;
    char *name;
};
typedef void (*RelocCallback)(void *closure, RAddr reloc);
typedef void (*RelocEnumerator)(struct rclosure *cp, RelocCallback f, void *closure);

typedef struct instance {
    int tag;         /* need at least 11 bits for Intel */
    union { struct { void *inputs[1]; } consname; } u;
} Instance;
typedef void (*ApplyMethod)(RClosure cl, Emitter emitter, FailCont fail);

typedef struct closure_header {
    ApplyMethod apply;
    RelocEnumerator relocfn;
    int uses_pc;
    int size_in_bytes;
} *ClosureHeader;       /* always allocated statically */

typedef struct closure_location {
    RBlock dest_block;        /* block written */
    unsigned dest_lc;         /* location within block to write */
} ClosureLocation;

struct rclosure {
    ClosureHeader h;
    ClosureLocation loc;
    /* fields may follow */
};
typedef struct closurepostfix {
    ApplyMethod apply;
    char *postfix;
} ClosurePostfix;
typedef void (*IntCallback)(void *closure, unsigned n);
typedef void (*FieldEnumerator)(struct rclosure *cp, RelocCallback r,
                                IntCallback i, void *closure);
typedef struct closureemitter {
    ApplyMethod apply;
    FieldEnumerator walk_fields;
} ClosureEmitter;
#define location_known(raddr)      ((raddr) && label_location_known((raddr)->label))
#define location(raddr)            (label_location((raddr)->label) + (raddr)->offset)
#define MARGIN 8
#define emitul(BITS) emitm((BITS), sizeof(unsigned long))
#define emitu(BITS)  emitm((BITS), sizeof(unsigned))
#define emitus(BITS) emitm((BITS), sizeof(unsigned short))
#define emituc(BITS) emitm((BITS), sizeof(unsigned char))
#define emitfastT0(BITS, TYPE) do { \
  if (currb_p < currb_safe) { \
     *((TYPE*)currb_p) = (TYPE) (BITS); \
      currb_p += sizeof(TYPE); \
  } else (*emitm)((BITS), sizeof(TYPE)); \
} while (0)
#define emitfastul0(BITS) emitfastT0((BITS), unsigned long)
#define emitfastu0(BITS)  emitfastT0((BITS), unsigned)
#define emitfastus0(BITS) emitfastT0((BITS), unsigned short)
#define emitfastuc0(BITS) emitfastT0((BITS), unsigned char)
#define emitfast0(BITS, SIZE) do { \
  if      ((SIZE) == sizeof(unsigned long))  emitfastul0((BITS)); \
  else if ((SIZE) == sizeof(unsigned))       emitfastu0((BITS)); \
  else if ((SIZE) == sizeof(unsigned short)) emitfastus0((BITS)); \
  else if ((SIZE) == sizeof(unsigned char))  emitfastuc0((BITS)); \
  else emitm((BITS), (SIZE)); \
} while(0)
#define emitfastbyte0(BITS, SIZE) do { \
  if ((SIZE) == sizeof(unsigned char)) \
    emitfastuc0((BITS)); \
  else \
    emitm((BITS), (SIZE)); \
} while(0)
#define emitfastT1(BITS, TYPE) do { \
  register unsigned char *p = currb_p; \
  if (p < currb_safe) { \
     *((TYPE*)p) = (TYPE) (BITS); \
      currb_p = p + sizeof(TYPE); \
  } else (*emitm)((BITS), sizeof(TYPE)); \
} while (0)
#define emitfastul1(BITS) emitfastT1((BITS), unsigned long)
#define emitfastu1(BITS)  emitfastT1((BITS), unsigned)
#define emitfastus1(BITS) emitfastT1((BITS), unsigned short)
#define emitfastuc1(BITS) emitfastT1((BITS), unsigned char)
#define emitfast1(BITS, SIZE) do { \
  if      ((SIZE) == sizeof(unsigned long))  emitfastul1((BITS)); \
  else if ((SIZE) == sizeof(unsigned))       emitfastu1((BITS)); \
  else if ((SIZE) == sizeof(unsigned short)) emitfastus1((BITS)); \
  else if ((SIZE) == sizeof(unsigned char))  emitfastuc1((BITS)); \
  else emitm((BITS), (SIZE)); \
} while(0)
#define emitfastbyte1(BITS, SIZE) do { \
  if ((SIZE) == sizeof(unsigned char)) \
    emitfastuc1((BITS)); \
  else \
    emitm((BITS), (SIZE)); \
} while(0)
#define emitfastT2(BITS, TYPE) ( \
  (EMITFAST_p < currb_safe) \
    ? (*((TYPE*)EMITFAST_p) = (TYPE) (BITS), \
       currb_p = EMITFAST_p + sizeof(TYPE), \
       (void)0) \
    : (*emitm)((BITS), sizeof(TYPE)) \
  )
#define Xemitfastul2(BITS) emitfastT2((BITS), unsigned long)
#define Xemitfastu2(BITS)  emitfastT2((BITS), unsigned)
#define Xemitfastus2(BITS) emitfastT2((BITS), unsigned short)
#define Xemitfastuc2(BITS) emitfastT2((BITS), unsigned char)
#define emitfast2(BITS, SIZE) do { \
  register unsigned char *EMITFAST_p = currb_p; \
  ((SIZE) == sizeof(unsigned long))  ? Xemitfastul2((BITS)) : \
  ((SIZE) == sizeof(unsigned))       ? Xemitfastu2((BITS))  : \
  ((SIZE) == sizeof(unsigned short)) ? Xemitfastus2((BITS)) : \
  ((SIZE) == sizeof(unsigned char))  ? Xemitfastuc2((BITS)) : \
  emitm((BITS), (SIZE)); \
} while(0)
#define emitfastbyte2(BITS, SIZE) do { \
  register unsigned char *EMITFAST_p = currb_p; \
  ((SIZE) == sizeof(unsigned char)) ? emitfastuc2((BITS)) : \
  emitm((BITS), (SIZE)); \
} while(0)
#define emitfastul2(BITS) do { \
  register unsigned char *EMITFAST_p = currb_p; Xemitfastul2((BITS)); \
} while(0)
#define emitfastu2(BITS) do { \
  register unsigned char *EMITFAST_p = currb_p; Xemitfastu2((BITS)); \
} while(0)
#define emitfastus2(BITS) do { \
  register unsigned char *EMITFAST_p = currb_p; Xemitfastus2((BITS)); \
} while(0)
#define emitfastuc2(BITS) do { \
  register unsigned char *EMITFAST_p = currb_p; Xemitfastuc2((BITS)); \
} while(0)
#define emitfast        emitfast2
#define emitfastbyte    emitfastbyte2
#define emitfastul      emitfastul2
#define emitfastu       emitfastu2
#define emitfastus      emitfastus2
#define emitfastuc      emitfastuc2
#define lc() (currb_p - currb->curbuf->data + currb->curbuf->datalc)
#define org(LOC)        set_lc(currb,(LOC))
#define addlc(N) ((void)(currb_p += (N)))
#define block_lc(rb) \
  ((rb) == currb \
      ? (make_clean(),((rb)->p - (rb)->curbuf->data + (rb)->curbuf->datalc)) \
      :               ((rb)->p - (rb)->curbuf->data + (rb)->curbuf->datalc))
#define block_low(rb) \
  ((rb) == currb \
      ? (make_clean(), (rb)->firstbuf.datalc) \
      :                (rb)->firstbuf.datalc)
extern struct reloc_block undefrblock;
#define block_defined(rb) ((rb) && (rb) != &undefrblock)
#define block_label(rb) ((rb)->label)
#define block_address_known(rb) ((rb)->known.address)
#define block_address(rb)       ((rb)->address)
#define block_size(rb) ((rb) == currb ? (make_clean(), (rb)->size) : (rb)->size)
#define label_location_known(lbl)  (((lbl) && (lbl)->block->known.address))
#define label_location(lbl)        ((lbl)->block->address + (lbl)->offset)
#define pc_location_known(loc)     ((loc).dest_block->known.address)
#define pc_location(loc)           ((loc).dest_block->address + (loc).dest_lc)
#define cur_pc_known()             (currb->known.address)
#define cur_pc()                   (currb->address + lc())
void make_clean(void);
extern RClosure mc_create_closure_at_offset(unsigned size, ClosureHeader h, unsigned offset);
extern RClosure mc_create_closure_here(unsigned size, ClosureHeader h);

#endif
