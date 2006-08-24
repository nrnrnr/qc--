target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import  bits32
_Class,
    __IO_2_1_stderr_,
    __IO_2_1_stdin_,
    __IO_2_1_stdout_,
    __IO_feof,
    __IO_ferror,
    __IO_flockfile,
    __IO_free_backup_area,
    __IO_ftrylockfile,
    __IO_funlockfile,
    __IO_getc,
    __IO_padn,
    __IO_peekc_locked,
    __IO_putc,
    __IO_seekoff,
    __IO_seekpos,
    __IO_sgetn,
    __IO_vfprintf,
    __IO_vfscanf,
    ___ctype_b,
    ___ctype_get_mb_cur_max,
    ___ctype_tolower,
    ___ctype_toupper,
    ___overflow,
    ___secure_getenv,
    ___sigsetjmp,
    ___strtod_internal,
    ___strtof_internal,
    ___strtol_internal,
    ___strtold_internal,
    ___strtoul_internal,
    ___uflow,
    ___underflow,
    ___woverflow,
    ___wuflow,
    ___wunderflow,
    __setjmp,
    _a_float,
    _a_fptr,
    _a_fsubr,
    _a_int,
    _a_list,
    _a_obj,
    _a_str,
    _a_subr,
    _a_sym,
    _a_vect,
    _abort,
    _abs,
    _acos,
    _addseg,
    _anodes,
    _asin,
    _atan,
    _atan2,
    _atexit,
    _atof,
    _atoi,
    _atol,
    _bsearch,
    _buf,
    _callmacro,
    _calloc,
    _ceil,
    _checkfneg,
    _checkfzero,
    _checkizero,
    _clearerr,
    _cons,
    _consa,
    _consd,
    _cos,
    _cosh,
    _ctermid,
    _cvcstring,
    _cvcsymbol,
    _cvfile,
    _cvfixnum,
    _cvflonum,
    _cvstring,
    _cvsubr,
    _cvsymbol,
    _defmacro,
    _div,
    _docommand,
    _dotest,
    _doupdates,
    _eq,
    _eql,
    _equal,
    _exit,
    _exp,
    _fabs,
    _fclose,
    _fdopen,
    _feof,
    _ferror,
    _fflush,
    _fgetc,
    _fgetpos,
    _fgets,
    _fileno,
    _findmem,
    _flockfile,
    _floor,
    _fmod,
    _fnodes,
    _fopen,
    _fprintf,
    _fputc,
    _fputs,
    _fread,
    _free,
    _freopen,
    _frexp,
    _fscanf,
    _fseek,
    _fsetpos,
    _ftab,
    _ftell,
    _ftrylockfile,
    _funlockfile,
    _fwrite,
    _gc,
    _gccalls,
    _getc,
    _getc_unlocked,
    _getchar,
    _getchar_unlocked,
    _getenv,
    _gets,
    _gsnumber,
    _gsprefix,
    _hash,
    _isalnum,
    _isalpha,
    _iscntrl,
    _isdigit,
    _isgraph,
    _islower,
    _isnew,
    _isnumber,
    _isprint,
    _ispunct,
    _isspace,
    _isupper,
    _isxdigit,
    _k_aux,
    _k_const,
    _k_nmacro,
    _k_optional,
    _k_rest,
    _k_test,
    _k_tmacro,
    _k_tnot,
    _k_wspace,
    _labs,
    _ldexp,
    _ldiv,
    _log,
    _log10,
    _longjmp,
    _malloc,
    _mark,
    _mblen,
    _mbstowcs,
    _mbtowc,
    _modf,
    _msgclass,
    _msgcls,
    _needsextension,
    _new,
    _newobject,
    _newstring,
    _newvector,
    _nfree,
    _nnodes,
    _nsegs,
    _obarray,
    _object,
    _oscheck,
    _osfinish,
    _osfinit,
    _osgetc,
    _osinit,
    _osputc,
    _osrand,
    _perror,
    _pow,
    _printf,
    _prompt,
    _putc,
    _putc_unlocked,
    _putchar,
    _putchar_unlocked,
    _puts,
    _qsort,
    _rand,
    _rand_r,
    _readone,
    _realloc,
    _remove,
    _rename,
    _rewind,
    _rmbquote,
    _rmcomma,
    _rmdquote,
    _rmhash,
    _rmlpar,
    _rmquote,
    _rmrpar,
    _rmsemi,
    _s_applyhook,
    _s_aref,
    _s_bquote,
    _s_breakenable,
    _s_car,
    _s_cdr,
    _s_comat,
    _s_comma,
    _s_dot,
    _s_eql,
    _s_evalhook,
    _s_function,
    _s_get,
    _s_lambda,
    _s_macro,
    _s_nth,
    _s_quote,
    _s_rtable,
    _s_splist,
    _s_stdin,
    _s_stdout,
    _s_svalue,
    _s_tlimit,
    _s_tracenable,
    _s_unbound,
    _scanf,
    _segs,
    _self,
    _setbuf,
    _setjmp,
    _setvbuf,
    _siglongjmp,
    _sin,
    _sinh,
    _sprintf,
    _sqrt,
    _srand,
    _sscanf,
    _stats,
    _stderr,
    _stdin,
    _stdout,
    _strtod,
    _strtol,
    _strtoul,
    _system,
    _tagblock,
    _tan,
    _tanh,
    _tmpfile,
    _tmpnam,
    _tolower,
    _total,
    _toupper,
    _trace_stack,
    _true,
    _ungetc,
    _vfprintf,
    _vmark,
    _vprintf,
    _vsprintf,
    _wcstombs,
    _wctomb,
    _xabs,
    _xadd,
    _xadd1,
    _xalloc,
    _xand,
    _xappend,
    _xapply,
    _xaref,
    _xassoc,
    _xatom,
    _xbaktrace,
    _xbitand,
    _xbitior,
    _xbitnot,
    _xbitxor,
    _xboundp,
    _xbquote,
    _xbreak,
    _xcaaaar,
    _xcaaadr,
    _xcaaar,
    _xcaadar,
    _xcaaddr,
    _xcaadr,
    _xcaar,
    _xcadaar,
    _xcadadr,
    _xcadar,
    _xcaddar,
    _xcadddr,
    _xcaddr,
    _xcadr,
    _xcar,
    _xcase,
    _xcatch,
    _xcdaaar,
    _xcdaadr,
    _xcdaar,
    _xcdadar,
    _xcdaddr,
    _xcdadr,
    _xcdar,
    _xcddaar,
    _xcddadr,
    _xcddar,
    _xcdddar,
    _xcddddr,
    _xcdddr,
    _xcddr,
    _xcdr,
    _xcerror,
    _xchar,
    _xcleanup,
    _xclose,
    _xcond,
    _xcons,
    _xconsp,
    _xcontinue,
    _xcos,
    _xdefmacro,
    _xdefun,
    _xdelete,
    _xdiv,
    _xdo,
    _xdolist,
    _xdostar,
    _xdotimes,
    _xeq,
    _xeql,
    _xequ,
    _xequal,
    _xerror,
    _xerrset,
    _xeval,
    _xevalhook,
    _xevenp,
    _xexit,
    _xexp,
    _xexpand,
    _xexpt,
    _xfix,
    _xflatc,
    _xflatsize,
    _xfloat,
    _xfuncall,
    _xfunction,
    _xgc,
    _xgensym,
    _xgeq,
    _xget,
    _xgo,
    _xgtr,
    _xhash,
    _xif,
    _xintern,
    _xlabind,
    _xlabort,
    _xladdivar,
    _xladdmsg,
    _xlambda,
    _xlapply,
    _xlarg,
    _xlast,
    _xlbaktrace,
    _xlbegin,
    _xlbind,
    _xlbreak,
    _xlcerror,
    _xlclass,
    _xlcleanup,
    _xlcontext,
    _xlcontinue,
    _xldebug,
    _xldinit,
    _xlend,
    _xlength,
    _xlenter,
    _xlenv,
    _xleq,
    _xlerror,
    _xlerrprint,
    _xlet,
    _xletstar,
    _xleval,
    _xlevarg,
    _xlevlist,
    _xlevmatch,
    _xlfail,
    _xlflush,
    _xlframe,
    _xlfsize,
    _xlgetc,
    _xlgetfile,
    _xlgetprop,
    _xlgetvalue,
    _xlgo,
    _xlinit,
    _xlist,
    _xlistp,
    _xljump,
    _xllastarg,
    _xlload,
    _xlmakesym,
    _xlmatch,
    _xlminit,
    _xload,
    _xlobgetvalue,
    _xlobsetvalue,
    _xloinit,
    _xlpeek,
    _xlplevel,
    _xlprint,
    _xlputc,
    _xlputprop,
    _xlputstr,
    _xlread,
    _xlremprop,
    _xlreturn,
    _xlrinit,
    _xlsample,
    _xlsave,
    _xlsend,
    _xlsenter,
    _xlsetvalue,
    _xlsignal,
    _xlsinit,
    _xlss,
    _xlstack,
    _xlstkbase,
    _xlstktop,
    _xlsubr,
    _xlterpri,
    _xltest,
    _xlthrow,
    _xltoplevel,
    _xltrace,
    _xlunbound,
    _xlvalue,
    _xlxeval,
    _xlxgetvalue,
    _xlygetvalue,
    _xmakesymbol,
    _xmapc,
    _xmapcar,
    _xmapl,
    _xmaplist,
    _xmax,
    _xmem,
    _xmember,
    _xmin,
    _xminusp,
    _xmkarray,
    _xmul,
    _xnconc,
    _xneq,
    _xnth,
    _xnthcdr,
    _xnull,
    _xnumberp,
    _xoddp,
    _xopeni,
    _xopeno,
    _xor,
    _xpkchar,
    _xplusp,
    _xprin1,
    _xprinc,
    _xprint,
    _xprog,
    _xprog1,
    _xprog2,
    _xprogn,
    _xprogstar,
    _xputprop,
    _xquote,
    _xrand,
    _xrdchar,
    _xread,
    _xreadline,
    _xrem,
    _xremove,
    _xremprop,
    _xreturn,
    _xreverse,
    _xrplca,
    _xrplcd,
    _xset,
    _xsetf,
    _xsetq,
    _xsin,
    _xsqrt,
    _xstrcat,
    _xstring,
    _xsub,
    _xsub1,
    _xsublis,
    _xsubst,
    _xsubstr,
    _xsymbolp,
    _xsymname,
    _xsymplist,
    _xsymvalue,
    _xtan,
    _xterpri,
    _xthrow,
    _xtype,
    _xwrchar,
    _xzerop;

export bits32
Cmm.global_area,
    Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY,
    Cmm_stack_growth,
    _main,
    _stdprint,
    _stdputstr;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "data" { align 4; }

section "data" { sym@Cmm_stack_growth: }

section "data" { bits32[1::bits32] { 0xffffffff::bits32 }; }

section "text"
{
    sym@_main()
    {
        $r31 = ($r31+-24);
        @i_argc, @i_argv = $r0, $r1;
        $t1 = $r30;
        .Linitialize continuations:l6:
        .Lproc body start:l5:
        $r0 = bits32[sym@@i_18];
        $ 0 = bits32[sym@_osinit];
        .Lcall successor:l93:
        $r0, $r1, $r2 = bits32[($r31+28)], 72, 1;
        $ 0 = bits32[sym@_xlbegin];
        .Lcall successor:l90:
        $r0 = bits32[($r31+36)];
        $ 0 = bits32[sym@__setjmp];
        .Lcall successor:l87:
        @i_1 = $r0;
        .Lbranch target:l84:
        $ 0 when %eq[32](@i_1, 0) = 0;
        .Lbranch target:l83:
        $r0 = bits32[sym@@i_22];
        $ 0 = bits32[sym@_printf];
        .Lcall successor:l82:
        $ 0 = bits32[sym@_osfinish];
        .Lcall successor:l79:
        $r0 = 1;
        $ 0 = bits32[sym@_exit];
        .Lcall successor:l76:
        @i_19:
        $ 0 = bits32[sym@_xlinit];
        .Lcall successor:l73:
        $r0 = bits32[($r31+28)];
        $ 0 = bits32[sym@_xlend];
        .Lcall successor:l70:
        $r0, $r1, $r2
            = bits32[($r31+28)], 72, bits32[bits32[sym@_true]];
        $ 0 = bits32[sym@_xlbegin];
        .Lcall successor:l67:
        $r0 = bits32[($r31+36)];
        $ 0 = bits32[sym@__setjmp];
        .Lcall successor:l64:
        @i_2 = $r0;
        .Lbranch target:l61:
        $ 0 when %ne[32](@i_2, 0) = 0;
        .Lbranch target:l60:
        @i_3 = 0;
        $r0, $r1, $r2 = bits32[sym@@i_26], @i_3, @i_3;
        $ 0 = bits32[sym@_xlload];
        .Lcall successor:l59:
        @i_23:
        $r0 = bits32[($r31+36)];
        $ 0 = bits32[sym@__setjmp];
        .Lcall successor:l56:
        @i_4 = $r0;
        .Lbranch target:l53:
        $ 0 when %ne[32](@i_4, 0) = 0;
        .Lbranch target:l52:
        @i_i = 1;
        @i_33:
        .Lbranch target:l43:
        $ 0 when %lt[32](@i_i, @i_argc) = 0;
        @i_30:
        $r0, $r1, $r2 = bits32[(%shl[32](@i_i, 2)+@i_argv)], 1, 0;
        $ 0 = bits32[sym@_xlload];
        .Lcall successor:l51:
        @i_5 = $r0;
        .Lbranch target:l48:
        $ 0 when %ne[32](@i_5, 0) = 0;
        .Lbranch target:l47:
        $r0 = bits32[sym@@i_36];
        $ 0 = bits32[sym@_xlfail];
        .Lcall successor:l46:
        @i_34:
        @i_31:
        @i_i = (@i_i+1);
        $ 0 = sym@@i_33;
        @i_27:
        $r0, $r1 = bits32[($r31+24)], 0;
        $ 0 = bits32[sym@_xlsave];
        .Lcall successor:l42:
        @i_38:
        @i_37:
        $r0 = bits32[($r31+36)];
        $ 0 = bits32[sym@__setjmp];
        .Lcall successor:l39:
        @i_6 = $r0;
        @i_i = @i_6;
        .Lbranch target:l36:
        $ 0 when %eq[32](@i_6, 0) = 0;
        .Lbranch target:l35:
        $ 0 when %ne[32](@i_i, 64) = 0;
        .Lbranch target:l34:
        $r0 = bits32[sym@@i_45];
        $ 0 = bits32[sym@_stdputstr];
        .Lcall successor:l33:
        @i_43:
        bits32[(bits32[bits32[sym@_s_evalhook]]+8)] = 0;
        bits32[(bits32[bits32[sym@_s_applyhook]]+8)] = 0;
        bits32[sym@_xldebug] = 0;
        $ 0 = bits32[sym@_xlflush];
        .Lcall successor:l30:
        @i_40:
        $r0, $r1, $r2
            = bits32[(bits32[bits32[sym@_s_stdin]]+8)],
            bits32[($r31+24)], 0;
        $ 0 = bits32[sym@_xlread];
        .Lcall successor:l27:
        @i_7 = $r0;
        .Lbranch target:l24:
        $ 0 when %ne[32](@i_7, 0) = 0;
        @i_39:
        $r0 = bits32[($r31+28)];
        $ 0 = bits32[sym@_xlend];
        .Lcall successor:l17:
        $ 0 = bits32[sym@_osfinish];
        .Lcall successor:l14:
        $r0 = 0;
        $ 0 = bits32[sym@_exit];
        .Lcall successor:l11:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        @i_46:
        $r0 = bits32[bits32[($r31+24)]];
        $ 0 = bits32[sym@_xleval];
        .Lcall successor:l23:
        @i_8 = $r0;
        bits32[($r31+24)] = @i_8;
        $r0 = bits32[bits32[($r31+24)]];
        $ 0 = bits32[sym@_stdprint];
        .Lcall successor:l20:
        $ 0 = sym@@i_38;
    }
}

section "text"
{
    sym@_stdprint()
    {
        $r31 = ($r31+-24);
        @i_expr = $r0;
        $t1 = $r30;
        .Linitialize continuations:l99:
        .Lproc body start:l98:
        $r0, $r1, $r2
            = bits32[(bits32[bits32[sym@_s_stdout]]+8)], @i_expr, 1;
        $ 0 = bits32[sym@_xlprint];
        .Lcall successor:l106:
        $r0 = bits32[(bits32[bits32[sym@_s_stdout]]+8)];
        $ 0 = bits32[sym@_xlterpri];
        .Lcall successor:l103:
        @i_48:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_stdputstr()
    {
        $r31 = ($r31+-24);
        @i_str = $r0;
        $t1 = $r30;
        .Linitialize continuations:l112:
        .Lproc body start:l111:
        $r0, $r1 = bits32[(bits32[bits32[sym@_s_stdout]]+8)], @i_str;
        $ 0 = bits32[sym@_xlputstr];
        .Lcall successor:l116:
        @i_49:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@@i_45: }

section "data" { bits8[1::bits32] { 91::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 98::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 99::bits8 }; }

section "data" { bits8[1::bits32] { 107::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 104::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 112::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 118::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 93::bits8 }; }

section "data" { bits8[1::bits32] { 10::bits8 }; }

section "data" { bits8[1::bits32] { 0::bits8 }; }

section "data" { sym@@i_36: }

section "data" { bits8[1::bits32] { 99::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 110::bits8 }; }

section "data" { bits8[1::bits32] { 39::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 100::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 102::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 0::bits8 }; }

section "data" { sym@@i_26: }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 110::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 46::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 115::bits8 }; }

section "data" { bits8[1::bits32] { 112::bits8 }; }

section "data" { bits8[1::bits32] { 0::bits8 }; }

section "data" { sym@@i_22: }

section "data" { bits8[1::bits32] { 102::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 110::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 108::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 122::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 110::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 114::bits8 }; }

section "data" { bits8[1::bits32] { 114::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 114::bits8 }; }

section "data" { bits8[1::bits32] { 10::bits8 }; }

section "data" { bits8[1::bits32] { 0::bits8 }; }

section "data" { sym@@i_18: }

section "data" { bits8[1::bits32] { 88::bits8 }; }

section "data" { bits8[1::bits32] { 76::bits8 }; }

section "data" { bits8[1::bits32] { 73::bits8 }; }

section "data" { bits8[1::bits32] { 83::bits8 }; }

section "data" { bits8[1::bits32] { 80::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 118::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 114::bits8 }; }

section "data" { bits8[1::bits32] { 115::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 110::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 49::bits8 }; }

section "data" { bits8[1::bits32] { 46::bits8 }; }

section "data" { bits8[1::bits32] { 54::bits8 }; }

section "data" { bits8[1::bits32] { 44::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 67::bits8 }; }

section "data" { bits8[1::bits32] { 111::bits8 }; }

section "data" { bits8[1::bits32] { 112::bits8 }; }

section "data" { bits8[1::bits32] { 121::bits8 }; }

section "data" { bits8[1::bits32] { 114::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 103::bits8 }; }

section "data" { bits8[1::bits32] { 104::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 40::bits8 }; }

section "data" { bits8[1::bits32] { 99::bits8 }; }

section "data" { bits8[1::bits32] { 41::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 49::bits8 }; }

section "data" { bits8[1::bits32] { 57::bits8 }; }

section "data" { bits8[1::bits32] { 56::bits8 }; }

section "data" { bits8[1::bits32] { 53::bits8 }; }

section "data" { bits8[1::bits32] { 44::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 98::bits8 }; }

section "data" { bits8[1::bits32] { 121::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 68::bits8 }; }

section "data" { bits8[1::bits32] { 97::bits8 }; }

section "data" { bits8[1::bits32] { 118::bits8 }; }

section "data" { bits8[1::bits32] { 105::bits8 }; }

section "data" { bits8[1::bits32] { 100::bits8 }; }

section "data" { bits8[1::bits32] { 32::bits8 }; }

section "data" { bits8[1::bits32] { 66::bits8 }; }

section "data" { bits8[1::bits32] { 101::bits8 }; }

section "data" { bits8[1::bits32] { 116::bits8 }; }

section "data" { bits8[1::bits32] { 122::bits8 }; }

section "data" { bits8[1::bits32] { 0::bits8 }; }

section "data" {  }

