target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import  bits32
_PL_Argv,
    _PL_Cmd,
    _PL_DBcv,
    _PL_DBgv,
    _PL_DBline,
    _PL_DBsignal,
    _PL_DBsingle,
    _PL_DBsub,
    _PL_DBtrace,
    _PL_No,
    _PL_Sv,
    _PL_Xpv,
    _PL_Yes,
    _PL_amagic_generation,
    _PL_ampergv,
    _PL_an,
    _PL_archpat_auto,
    _PL_argvgv,
    _PL_argvoutgv,
    _PL_av_fetch_sv,
    _PL_basetime,
    _PL_beginav,
    _PL_bodytarget,
    _PL_bostr,
    _PL_bufend,
    _PL_bufptr,
    _PL_bytecode_iv_overflows,
    _PL_bytecode_obj_list,
    _PL_bytecode_obj_list_fill,
    _PL_bytecode_pv,
    _PL_bytecode_sv,
    _PL_cddir,
    _PL_chopset,
    _PL_colors,
    _PL_colorset,
    _PL_compcv,
    _PL_compiling,
    _PL_comppad,
    _PL_comppad_name,
    _PL_comppad_name_fill,
    _PL_comppad_name_floor,
    _PL_cop_seqmax,
    _PL_copline,
    _PL_curcop,
    _PL_curcopdb,
    _PL_curinterp,
    _PL_curpad,
    _PL_curpm,
    _PL_curstack,
    _PL_curstackinfo,
    _PL_curstash,
    _PL_curstname,
    _PL_dbargs,
    _PL_debdelim,
    _PL_debname,
    _PL_debstash,
    _PL_debug,
    _PL_defgv,
    _PL_defoutgv,
    _PL_defstash,
    _PL_delaymagic,
    _PL_diehook,
    _PL_dirty,
    _PL_dlevel,
    _PL_dlmax,
    _PL_do_undump,
    _PL_doextract,
    _PL_doswitches,
    _PL_dowarn,
    _PL_dumplvl,
    _PL_e_script,
    _PL_egid,
    _PL_endav,
    _PL_envgv,
    _PL_errgv,
    _PL_error_count,
    _PL_euid,
    _PL_eval_root,
    _PL_eval_start,
    _PL_evalseq,
    _PL_exitlist,
    _PL_exitlistlen,
    _PL_expect,
    _PL_extralen,
    _PL_fdpid,
    _PL_filemode,
    _PL_firstgv,
    _PL_forkprocess,
    _PL_formfeed,
    _PL_formtarget,
    _PL_generation,
    _PL_gensym,
    _PL_gid,
    _PL_globalstash,
    _PL_he_root,
    _PL_hexdigit,
    _PL_hintgv,
    _PL_hints,
    _PL_hv_fetch_ent_mh,
    _PL_hv_fetch_sv,
    _PL_in_clean_all,
    _PL_in_clean_objs,
    _PL_in_eval,
    _PL_in_my,
    _PL_in_my_stash,
    _PL_incgv,
    _PL_initav,
    _PL_inplace,
    _PL_last_in_gv,
    _PL_last_lop,
    _PL_last_lop_op,
    _PL_last_proto,
    _PL_last_uni,
    _PL_lastfd,
    _PL_lastgotoprobe,
    _PL_lastscream,
    _PL_lastsize,
    _PL_lastspbase,
    _PL_laststatval,
    _PL_laststype,
    _PL_leftgv,
    _PL_lex_brackets,
    _PL_lex_brackstack,
    _PL_lex_casemods,
    _PL_lex_casestack,
    _PL_lex_defer,
    _PL_lex_dojoin,
    _PL_lex_expect,
    _PL_lex_fakebrack,
    _PL_lex_formbrack,
    _PL_lex_inpat,
    _PL_lex_inwhat,
    _PL_lex_op,
    _PL_lex_repl,
    _PL_lex_starts,
    _PL_lex_state,
    _PL_lex_stuff,
    _PL_lineary,
    _PL_linestart,
    _PL_linestr,
    _PL_localizing,
    _PL_localpatches,
    _PL_main_cv,
    _PL_main_root,
    _PL_main_start,
    _PL_mainstack,
    _PL_markstack,
    _PL_markstack_max,
    _PL_markstack_ptr,
    _PL_max_intro_pending,
    _PL_maxo,
    _PL_maxscream,
    _PL_maxsysfd,
    _PL_mess_sv,
    _PL_min_intro_pending,
    _PL_minus_F,
    _PL_minus_a,
    _PL_minus_c,
    _PL_minus_l,
    _PL_minus_n,
    _PL_minus_p,
    _PL_modcount,
    _PL_modglobal,
    _PL_multi_close,
    _PL_multi_end,
    _PL_multi_open,
    _PL_multi_start,
    _PL_multiline,
    _PL_mystrk,
    _PL_na,
    _PL_nexttoke,
    _PL_nexttype,
    _PL_nextval,
    _PL_nice_chunk,
    _PL_nice_chunk_size,
    _PL_ninterps,
    _PL_nomemok,
    _PL_nrs,
    _PL_ofmt,
    _PL_ofs,
    _PL_ofslen,
    _PL_oldbufptr,
    _PL_oldlastpm,
    _PL_oldname,
    _PL_oldoldbufptr,
    _PL_op,
    _PL_op_mask,
    _PL_op_seqmax,
    _PL_origalen,
    _PL_origargc,
    _PL_origargv,
    _PL_origenviron,
    _PL_origfilename,
    _PL_ors,
    _PL_orslen,
    _PL_osname,
    _PL_pad_reset_pending,
    _PL_padix,
    _PL_padix_floor,
    _PL_parsehook,
    _PL_patchlevel,
    _PL_patleave,
    _PL_pending_ident,
    _PL_perl_destruct_level,
    _PL_perldb,
    _PL_pidstatus,
    _PL_preambleav,
    _PL_preambled,
    _PL_preprocess,
    _PL_profiledata,
    _PL_reg_eval_set,
    _PL_reg_flags,
    _PL_reg_start_tmp,
    _PL_reg_start_tmpl,
    _PL_regbol,
    _PL_regcc,
    _PL_regcode,
    _PL_regcomp_parse,
    _PL_regcomp_rx,
    _PL_regcompp,
    _PL_regdata,
    _PL_regdummy,
    _PL_regendp,
    _PL_regeol,
    _PL_regexecp,
    _PL_regflags,
    _PL_regindent,
    _PL_reginput,
    _PL_reginterp_cnt,
    _PL_reglastparen,
    _PL_regnarrate,
    _PL_regnaughty,
    _PL_regnpar,
    _PL_regprecomp,
    _PL_regprev,
    _PL_regprogram,
    _PL_regsawback,
    _PL_regseen,
    _PL_regsize,
    _PL_regstartp,
    _PL_regtill,
    _PL_regxend,
    _PL_replgv,
    _PL_restartop,
    _PL_retstack,
    _PL_retstack_ix,
    _PL_retstack_max,
    _PL_rightgv,
    _PL_rs,
    _PL_rsfp,
    _PL_rsfp_filters,
    _PL_runops,
    _PL_savestack,
    _PL_savestack_ix,
    _PL_savestack_max,
    _PL_sawampersand,
    _PL_sawstudy,
    _PL_sawvec,
    _PL_scopestack,
    _PL_scopestack_ix,
    _PL_scopestack_max,
    _PL_screamfirst,
    _PL_screamnext,
    _PL_secondgv,
    _PL_seen_evals,
    _PL_seen_zerolen,
    _PL_sh_path,
    _PL_siggv,
    _PL_sighandlerp,
    _PL_sortcop,
    _PL_sortcxix,
    _PL_sortstash,
    _PL_specialsv_list,
    _PL_splitstr,
    _PL_stack_base,
    _PL_stack_max,
    _PL_stack_sp,
    _PL_start_env,
    _PL_statbuf,
    _PL_statcache,
    _PL_statgv,
    _PL_statname,
    _PL_statusvalue,
    _PL_stdingv,
    _PL_strchop,
    _PL_strtab,
    _PL_sub_generation,
    _PL_sublex_info,
    _PL_subline,
    _PL_subname,
    _PL_sv_arenaroot,
    _PL_sv_count,
    _PL_sv_no,
    _PL_sv_objcount,
    _PL_sv_root,
    _PL_sv_undef,
    _PL_sv_yes,
    _PL_tainted,
    _PL_tainting,
    _PL_thisexpr,
    _PL_timesbuf,
    _PL_tmps_floor,
    _PL_tmps_ix,
    _PL_tmps_max,
    _PL_tmps_stack,
    _PL_tokenbuf,
    _PL_top_env,
    _PL_toptarget,
    _PL_uid,
    _PL_unsafe,
    _PL_warnhook,
    _PL_xiv_arenaroot,
    _PL_xiv_root,
    _PL_xnv_root,
    _PL_xpv_root,
    _PL_xrv_root,
    _PerlIO_getpos,
    _PerlIO_init,
    _PerlIO_setpos,
    _PerlIO_sprintf,
    _Perl_AMG_names,
    _Perl_Gv_AMupdate,
    _Perl_amagic_call,
    _Perl_append_elem,
    _Perl_append_list,
    _Perl_apply,
    _Perl_assertref,
    _Perl_av_clear,
    _Perl_av_extend,
    _Perl_av_fake,
    _Perl_av_fetch,
    _Perl_av_fill,
    _Perl_av_len,
    _Perl_av_make,
    _Perl_av_pop,
    _Perl_av_push,
    _Perl_av_reify,
    _Perl_av_shift,
    _Perl_av_store,
    _Perl_av_undef,
    _Perl_av_unshift,
    _Perl_avhv_exists_ent,
    _Perl_avhv_fetch_ent,
    _Perl_avhv_iternext,
    _Perl_avhv_iterval,
    _Perl_avhv_keys,
    _Perl_bind_match,
    _Perl_block_end,
    _Perl_block_gimme,
    _Perl_block_start,
    _Perl_boot_core_UNIVERSAL,
    _Perl_bset_obj_store,
    _Perl_byterun,
    _Perl_call_list,
    _Perl_cando,
    _Perl_cast_ulong,
    _Perl_check,
    _Perl_ck_anoncode,
    _Perl_ck_bitop,
    _Perl_ck_concat,
    _Perl_ck_delete,
    _Perl_ck_eof,
    _Perl_ck_eval,
    _Perl_ck_exec,
    _Perl_ck_exists,
    _Perl_ck_ftst,
    _Perl_ck_fun,
    _Perl_ck_fun_locale,
    _Perl_ck_glob,
    _Perl_ck_grep,
    _Perl_ck_gvconst,
    _Perl_ck_index,
    _Perl_ck_lengthconst,
    _Perl_ck_lfun,
    _Perl_ck_listiob,
    _Perl_ck_match,
    _Perl_ck_null,
    _Perl_ck_repeat,
    _Perl_ck_require,
    _Perl_ck_retarget,
    _Perl_ck_rfun,
    _Perl_ck_rvconst,
    _Perl_ck_scmp,
    _Perl_ck_select,
    _Perl_ck_shift,
    _Perl_ck_sort,
    _Perl_ck_spair,
    _Perl_ck_split,
    _Perl_ck_subr,
    _Perl_ck_svconst,
    _Perl_ck_trunc,
    _Perl_convert,
    _Perl_croak,
    _Perl_cv_ckproto,
    _Perl_cv_clone,
    _Perl_cv_const_sv,
    _Perl_cv_undef,
    _Perl_cx_dump,
    _Perl_cxinc,
    _Perl_dc,
    _Perl_deb,
    _Perl_deb_growlevel,
    _Perl_debop,
    _Perl_debprofdump,
    _Perl_debstack,
    _Perl_debstackptrs,
    _Perl_delimcpy,
    _Perl_deprecate,
    _Perl_di,
    _Perl_die,
    _Perl_die_where,
    _Perl_do_aexec,
    _Perl_do_binmode,
    _Perl_do_chomp,
    _Perl_do_chop,
    _Perl_do_close,
    _Perl_do_eof,
    _Perl_do_exec,
    _Perl_do_execfree,
    _Perl_do_join,
    _Perl_do_kv,
    _Perl_do_open,
    _Perl_do_pipe,
    _Perl_do_print,
    _Perl_do_readline,
    _Perl_do_seek,
    _Perl_do_sprintf,
    _Perl_do_sysseek,
    _Perl_do_tell,
    _Perl_do_trans,
    _Perl_do_vecset,
    _Perl_do_vop,
    _Perl_dofile,
    _Perl_dounwind,
    _Perl_dowantarray,
    _Perl_ds,
    _Perl_dump_all,
    _Perl_dump_eval,
    _Perl_dump_form,
    _Perl_dump_gv,
    _Perl_dump_op,
    _Perl_dump_packsubs,
    _Perl_dump_pm,
    _Perl_dump_sub,
    _Perl_fbm_compile,
    _Perl_fbm_instr,
    _Perl_filter_add,
    _Perl_filter_del,
    _Perl_filter_read,
    _Perl_find_script,
    _Perl_fold,
    _Perl_fold_constants,
    _Perl_fold_locale,
    _Perl_force_list,
    _Perl_form,
    _Perl_free_tmps,
    _Perl_freq,
    _Perl_gen_constant_list,
    _Perl_get_no_modify,
    _Perl_get_op_descs,
    _Perl_get_op_names,
    _Perl_get_opargs,
    _Perl_get_vtbl,
    _Perl_gp_free,
    _Perl_gp_ref,
    _Perl_gv_AVadd,
    _Perl_gv_HVadd,
    _Perl_gv_IOadd,
    _Perl_gv_autoload4,
    _Perl_gv_check,
    _Perl_gv_efullname,
    _Perl_gv_efullname3,
    _Perl_gv_fetchfile,
    _Perl_gv_fetchmeth,
    _Perl_gv_fetchmethod,
    _Perl_gv_fetchmethod_autoload,
    _Perl_gv_fetchpv,
    _Perl_gv_fullname,
    _Perl_gv_fullname3,
    _Perl_gv_init,
    _Perl_gv_stashpv,
    _Perl_gv_stashpvn,
    _Perl_gv_stashsv,
    _Perl_ibcmp,
    _Perl_ibcmp_locale,
    _Perl_ingroup,
    _Perl_init_stacks,
    _Perl_instr,
    _Perl_intro_my,
    _Perl_invert,
    _Perl_io_close,
    _Perl_jmaybe,
    _Perl_keyword,
    _Perl_leave_scope,
    _Perl_lex_end,
    _Perl_lex_start,
    _Perl_linklist,
    _Perl_list,
    _Perl_listkids,
    _Perl_localize,
    _Perl_looks_like_number,
    _Perl_magic_clear_all_env,
    _Perl_magic_clearenv,
    _Perl_magic_clearpack,
    _Perl_magic_clearsig,
    _Perl_magic_existspack,
    _Perl_magic_freeregexp,
    _Perl_magic_get,
    _Perl_magic_getarylen,
    _Perl_magic_getdefelem,
    _Perl_magic_getglob,
    _Perl_magic_getnkeys,
    _Perl_magic_getpack,
    _Perl_magic_getpos,
    _Perl_magic_getsig,
    _Perl_magic_getsubstr,
    _Perl_magic_gettaint,
    _Perl_magic_getuvar,
    _Perl_magic_getvec,
    _Perl_magic_len,
    _Perl_magic_nextpack,
    _Perl_magic_set,
    _Perl_magic_set_all_env,
    _Perl_magic_setamagic,
    _Perl_magic_setarylen,
    _Perl_magic_setbm,
    _Perl_magic_setdbline,
    _Perl_magic_setdefelem,
    _Perl_magic_setenv,
    _Perl_magic_setfm,
    _Perl_magic_setglob,
    _Perl_magic_setisa,
    _Perl_magic_setmglob,
    _Perl_magic_setnkeys,
    _Perl_magic_setpack,
    _Perl_magic_setpos,
    _Perl_magic_setsig,
    _Perl_magic_setsubstr,
    _Perl_magic_settaint,
    _Perl_magic_setuvar,
    _Perl_magic_setvec,
    _Perl_magic_sizepack,
    _Perl_magic_wipepack,
    _Perl_magicname,
    _Perl_markstack_grow,
    _Perl_mess,
    _Perl_mg_clear,
    _Perl_mg_copy,
    _Perl_mg_find,
    _Perl_mg_free,
    _Perl_mg_get,
    _Perl_mg_length,
    _Perl_mg_magical,
    _Perl_mg_set,
    _Perl_mg_size,
    _Perl_mod,
    _Perl_moreswitches,
    _Perl_my,
    _Perl_my_bcopy,
    _Perl_my_exit,
    _Perl_my_failure_exit,
    _Perl_my_htonl,
    _Perl_my_lstat,
    _Perl_my_memcmp,
    _Perl_my_ntohl,
    _Perl_my_pclose,
    _Perl_my_popen,
    _Perl_my_setenv,
    _Perl_my_stat,
    _Perl_my_swap,
    _Perl_my_unexec,
    _Perl_newANONHASH,
    _Perl_newANONLIST,
    _Perl_newANONSUB,
    _Perl_newASSIGNOP,
    _Perl_newAV,
    _Perl_newAVREF,
    _Perl_newBINOP,
    _Perl_newCONDOP,
    _Perl_newCONSTSUB,
    _Perl_newCVREF,
    _Perl_newFORM,
    _Perl_newFOROP,
    _Perl_newGVOP,
    _Perl_newGVREF,
    _Perl_newGVgen,
    _Perl_newHVREF,
    _Perl_newIO,
    _Perl_newLISTOP,
    _Perl_newLOGOP,
    _Perl_newLOOPEX,
    _Perl_newLOOPOP,
    _Perl_newNULLLIST,
    _Perl_newOP,
    _Perl_newPMOP,
    _Perl_newPROG,
    _Perl_newPVOP,
    _Perl_newRANGE,
    _Perl_newRV,
    _Perl_newRV_noinc,
    _Perl_newSLICEOP,
    _Perl_newSTATEOP,
    _Perl_newSUB,
    _Perl_newSV,
    _Perl_newSVOP,
    _Perl_newSVREF,
    _Perl_newSViv,
    _Perl_newSVnv,
    _Perl_newSVpv,
    _Perl_newSVpvf,
    _Perl_newSVpvn,
    _Perl_newSVrv,
    _Perl_newSVsv,
    _Perl_newUNOP,
    _Perl_newWHILEOP,
    _Perl_newXS,
    _Perl_new_stackinfo,
    _Perl_nextargv,
    _Perl_ninstr,
    _Perl_no_aelem,
    _Perl_no_dir_func,
    _Perl_no_func,
    _Perl_no_helem,
    _Perl_no_mem,
    _Perl_no_modify,
    _Perl_no_myglob,
    _Perl_no_security,
    _Perl_no_sock_func,
    _Perl_no_symref,
    _Perl_no_usym,
    _Perl_no_wrongref,
    _Perl_oopsAV,
    _Perl_oopsCV,
    _Perl_oopsHV,
    _Perl_op_const_sv,
    _Perl_op_desc,
    _Perl_op_free,
    _Perl_op_name,
    _Perl_opargs,
    _Perl_package,
    _Perl_pad_alloc,
    _Perl_pad_allocmy,
    _Perl_pad_findmy,
    _Perl_pad_free,
    _Perl_pad_leavemy,
    _Perl_pad_reset,
    _Perl_pad_sv,
    _Perl_pad_swipe,
    _Perl_peep,
    _Perl_pidgone,
    _Perl_pmflag,
    _Perl_pmruntime,
    _Perl_pmtrans,
    _Perl_pop_return,
    _Perl_pop_scope,
    _Perl_pp_aassign,
    _Perl_pp_abs,
    _Perl_pp_accept,
    _Perl_pp_add,
    _Perl_pp_aelem,
    _Perl_pp_aelemfast,
    _Perl_pp_alarm,
    _Perl_pp_and,
    _Perl_pp_andassign,
    _Perl_pp_anoncode,
    _Perl_pp_anonhash,
    _Perl_pp_anonlist,
    _Perl_pp_aslice,
    _Perl_pp_atan2,
    _Perl_pp_av2arylen,
    _Perl_pp_backtick,
    _Perl_pp_bind,
    _Perl_pp_binmode,
    _Perl_pp_bit_and,
    _Perl_pp_bit_or,
    _Perl_pp_bit_xor,
    _Perl_pp_bless,
    _Perl_pp_caller,
    _Perl_pp_chdir,
    _Perl_pp_chmod,
    _Perl_pp_chomp,
    _Perl_pp_chop,
    _Perl_pp_chown,
    _Perl_pp_chr,
    _Perl_pp_chroot,
    _Perl_pp_close,
    _Perl_pp_closedir,
    _Perl_pp_complement,
    _Perl_pp_concat,
    _Perl_pp_cond_expr,
    _Perl_pp_connect,
    _Perl_pp_const,
    _Perl_pp_cos,
    _Perl_pp_crypt,
    _Perl_pp_dbmclose,
    _Perl_pp_dbmopen,
    _Perl_pp_dbstate,
    _Perl_pp_defined,
    _Perl_pp_delete,
    _Perl_pp_die,
    _Perl_pp_divide,
    _Perl_pp_dofile,
    _Perl_pp_dump,
    _Perl_pp_each,
    _Perl_pp_egrent,
    _Perl_pp_ehostent,
    _Perl_pp_enetent,
    _Perl_pp_enter,
    _Perl_pp_entereval,
    _Perl_pp_enteriter,
    _Perl_pp_enterloop,
    _Perl_pp_entersub,
    _Perl_pp_entertry,
    _Perl_pp_enterwrite,
    _Perl_pp_eof,
    _Perl_pp_eprotoent,
    _Perl_pp_epwent,
    _Perl_pp_eq,
    _Perl_pp_eservent,
    _Perl_pp_exec,
    _Perl_pp_exists,
    _Perl_pp_exit,
    _Perl_pp_exp,
    _Perl_pp_fcntl,
    _Perl_pp_fileno,
    _Perl_pp_flip,
    _Perl_pp_flock,
    _Perl_pp_flop,
    _Perl_pp_fork,
    _Perl_pp_formline,
    _Perl_pp_ftatime,
    _Perl_pp_ftbinary,
    _Perl_pp_ftblk,
    _Perl_pp_ftchr,
    _Perl_pp_ftctime,
    _Perl_pp_ftdir,
    _Perl_pp_fteexec,
    _Perl_pp_fteowned,
    _Perl_pp_fteread,
    _Perl_pp_ftewrite,
    _Perl_pp_ftfile,
    _Perl_pp_ftis,
    _Perl_pp_ftlink,
    _Perl_pp_ftmtime,
    _Perl_pp_ftpipe,
    _Perl_pp_ftrexec,
    _Perl_pp_ftrowned,
    _Perl_pp_ftrread,
    _Perl_pp_ftrwrite,
    _Perl_pp_ftsgid,
    _Perl_pp_ftsize,
    _Perl_pp_ftsock,
    _Perl_pp_ftsuid,
    _Perl_pp_ftsvtx,
    _Perl_pp_fttext,
    _Perl_pp_fttty,
    _Perl_pp_ftzero,
    _Perl_pp_ge,
    _Perl_pp_gelem,
    _Perl_pp_getc,
    _Perl_pp_getlogin,
    _Perl_pp_getpeername,
    _Perl_pp_getpgrp,
    _Perl_pp_getppid,
    _Perl_pp_getpriority,
    _Perl_pp_getsockname,
    _Perl_pp_ggrent,
    _Perl_pp_ggrgid,
    _Perl_pp_ggrnam,
    _Perl_pp_ghbyaddr,
    _Perl_pp_ghbyname,
    _Perl_pp_ghostent,
    _Perl_pp_glob,
    _Perl_pp_gmtime,
    _Perl_pp_gnbyaddr,
    _Perl_pp_gnbyname,
    _Perl_pp_gnetent,
    _Perl_pp_goto,
    _Perl_pp_gpbyname,
    _Perl_pp_gpbynumber,
    _Perl_pp_gprotoent,
    _Perl_pp_gpwent,
    _Perl_pp_gpwnam,
    _Perl_pp_gpwuid,
    _Perl_pp_grepstart,
    _Perl_pp_grepwhile,
    _Perl_pp_gsbyname,
    _Perl_pp_gsbyport,
    _Perl_pp_gservent,
    _Perl_pp_gsockopt,
    _Perl_pp_gt,
    _Perl_pp_gv,
    _Perl_pp_gvsv,
    _Perl_pp_helem,
    _Perl_pp_hex,
    _Perl_pp_hslice,
    _Perl_pp_i_add,
    _Perl_pp_i_divide,
    _Perl_pp_i_eq,
    _Perl_pp_i_ge,
    _Perl_pp_i_gt,
    _Perl_pp_i_le,
    _Perl_pp_i_lt,
    _Perl_pp_i_modulo,
    _Perl_pp_i_multiply,
    _Perl_pp_i_ncmp,
    _Perl_pp_i_ne,
    _Perl_pp_i_negate,
    _Perl_pp_i_subtract,
    _Perl_pp_index,
    _Perl_pp_int,
    _Perl_pp_ioctl,
    _Perl_pp_iter,
    _Perl_pp_join,
    _Perl_pp_keys,
    _Perl_pp_kill,
    _Perl_pp_last,
    _Perl_pp_lc,
    _Perl_pp_lcfirst,
    _Perl_pp_le,
    _Perl_pp_leave,
    _Perl_pp_leaveeval,
    _Perl_pp_leaveloop,
    _Perl_pp_leavesub,
    _Perl_pp_leavetry,
    _Perl_pp_leavewrite,
    _Perl_pp_left_shift,
    _Perl_pp_length,
    _Perl_pp_lineseq,
    _Perl_pp_link,
    _Perl_pp_list,
    _Perl_pp_listen,
    _Perl_pp_localtime,
    _Perl_pp_lock,
    _Perl_pp_log,
    _Perl_pp_lslice,
    _Perl_pp_lstat,
    _Perl_pp_lt,
    _Perl_pp_mapstart,
    _Perl_pp_mapwhile,
    _Perl_pp_match,
    _Perl_pp_method,
    _Perl_pp_mkdir,
    _Perl_pp_modulo,
    _Perl_pp_msgctl,
    _Perl_pp_msgget,
    _Perl_pp_msgrcv,
    _Perl_pp_msgsnd,
    _Perl_pp_multiply,
    _Perl_pp_ncmp,
    _Perl_pp_ne,
    _Perl_pp_negate,
    _Perl_pp_next,
    _Perl_pp_nextstate,
    _Perl_pp_not,
    _Perl_pp_null,
    _Perl_pp_oct,
    _Perl_pp_open,
    _Perl_pp_open_dir,
    _Perl_pp_or,
    _Perl_pp_orassign,
    _Perl_pp_ord,
    _Perl_pp_pack,
    _Perl_pp_padany,
    _Perl_pp_padav,
    _Perl_pp_padhv,
    _Perl_pp_padsv,
    _Perl_pp_pipe_op,
    _Perl_pp_pop,
    _Perl_pp_pos,
    _Perl_pp_postdec,
    _Perl_pp_postinc,
    _Perl_pp_pow,
    _Perl_pp_predec,
    _Perl_pp_preinc,
    _Perl_pp_print,
    _Perl_pp_prototype,
    _Perl_pp_prtf,
    _Perl_pp_push,
    _Perl_pp_pushmark,
    _Perl_pp_pushre,
    _Perl_pp_qr,
    _Perl_pp_quotemeta,
    _Perl_pp_rand,
    _Perl_pp_range,
    _Perl_pp_rcatline,
    _Perl_pp_read,
    _Perl_pp_readdir,
    _Perl_pp_readline,
    _Perl_pp_readlink,
    _Perl_pp_recv,
    _Perl_pp_redo,
    _Perl_pp_ref,
    _Perl_pp_refgen,
    _Perl_pp_regcmaybe,
    _Perl_pp_regcomp,
    _Perl_pp_regcreset,
    _Perl_pp_rename,
    _Perl_pp_repeat,
    _Perl_pp_require,
    _Perl_pp_reset,
    _Perl_pp_return,
    _Perl_pp_reverse,
    _Perl_pp_rewinddir,
    _Perl_pp_right_shift,
    _Perl_pp_rindex,
    _Perl_pp_rmdir,
    _Perl_pp_rv2av,
    _Perl_pp_rv2cv,
    _Perl_pp_rv2gv,
    _Perl_pp_rv2hv,
    _Perl_pp_rv2sv,
    _Perl_pp_sassign,
    _Perl_pp_scalar,
    _Perl_pp_schomp,
    _Perl_pp_schop,
    _Perl_pp_scmp,
    _Perl_pp_scope,
    _Perl_pp_seek,
    _Perl_pp_seekdir,
    _Perl_pp_select,
    _Perl_pp_semctl,
    _Perl_pp_semget,
    _Perl_pp_semop,
    _Perl_pp_send,
    _Perl_pp_seq,
    _Perl_pp_setpgrp,
    _Perl_pp_setpriority,
    _Perl_pp_sge,
    _Perl_pp_sgrent,
    _Perl_pp_sgt,
    _Perl_pp_shift,
    _Perl_pp_shmctl,
    _Perl_pp_shmget,
    _Perl_pp_shmread,
    _Perl_pp_shmwrite,
    _Perl_pp_shostent,
    _Perl_pp_shutdown,
    _Perl_pp_sin,
    _Perl_pp_sle,
    _Perl_pp_sleep,
    _Perl_pp_slt,
    _Perl_pp_sne,
    _Perl_pp_snetent,
    _Perl_pp_socket,
    _Perl_pp_sockpair,
    _Perl_pp_sort,
    _Perl_pp_splice,
    _Perl_pp_split,
    _Perl_pp_sprintf,
    _Perl_pp_sprotoent,
    _Perl_pp_spwent,
    _Perl_pp_sqrt,
    _Perl_pp_srand,
    _Perl_pp_srefgen,
    _Perl_pp_sselect,
    _Perl_pp_sservent,
    _Perl_pp_ssockopt,
    _Perl_pp_stat,
    _Perl_pp_stringify,
    _Perl_pp_stub,
    _Perl_pp_study,
    _Perl_pp_subst,
    _Perl_pp_substcont,
    _Perl_pp_substr,
    _Perl_pp_subtract,
    _Perl_pp_symlink,
    _Perl_pp_syscall,
    _Perl_pp_sysopen,
    _Perl_pp_sysread,
    _Perl_pp_sysseek,
    _Perl_pp_system,
    _Perl_pp_syswrite,
    _Perl_pp_tell,
    _Perl_pp_telldir,
    _Perl_pp_threadsv,
    _Perl_pp_tie,
    _Perl_pp_tied,
    _Perl_pp_time,
    _Perl_pp_tms,
    _Perl_pp_trans,
    _Perl_pp_truncate,
    _Perl_pp_uc,
    _Perl_pp_ucfirst,
    _Perl_pp_umask,
    _Perl_pp_undef,
    _Perl_pp_unlink,
    _Perl_pp_unpack,
    _Perl_pp_unshift,
    _Perl_pp_unstack,
    _Perl_pp_untie,
    _Perl_pp_utime,
    _Perl_pp_values,
    _Perl_pp_vec,
    _Perl_pp_wait,
    _Perl_pp_waitpid,
    _Perl_pp_wantarray,
    _Perl_pp_warn,
    _Perl_pp_xor,
    _Perl_ppaddr,
    _Perl_pregcomp,
    _Perl_pregexec,
    _Perl_pregfree,
    _Perl_prepend_elem,
    _Perl_psig_name,
    _Perl_psig_ptr,
    _Perl_push_return,
    _Perl_push_scope,
    _Perl_ref,
    _Perl_refkids,
    _Perl_regdump,
    _Perl_regexec_flags,
    _Perl_regnext,
    _Perl_regprop,
    _Perl_repeatcpy,
    _Perl_rninstr,
    _Perl_rsignal,
    _Perl_rsignal_restore,
    _Perl_rsignal_save,
    _Perl_rsignal_state,
    _Perl_runops_standard,
    _Perl_rxres_free,
    _Perl_rxres_restore,
    _Perl_rxres_save,
    _Perl_safecalloc,
    _Perl_safefree,
    _Perl_safemalloc,
    _Perl_saferealloc,
    _Perl_save_I16,
    _Perl_save_I32,
    _Perl_save_aelem,
    _Perl_save_aptr,
    _Perl_save_ary,
    _Perl_save_clearsv,
    _Perl_save_delete,
    _Perl_save_destructor,
    _Perl_save_freeop,
    _Perl_save_freepv,
    _Perl_save_freesv,
    _Perl_save_generic_svref,
    _Perl_save_gp,
    _Perl_save_hash,
    _Perl_save_helem,
    _Perl_save_hints,
    _Perl_save_hptr,
    _Perl_save_int,
    _Perl_save_item,
    _Perl_save_iv,
    _Perl_save_list,
    _Perl_save_long,
    _Perl_save_nogv,
    _Perl_save_op,
    _Perl_save_pptr,
    _Perl_save_scalar,
    _Perl_save_sptr,
    _Perl_save_svref,
    _Perl_save_threadsv,
    _Perl_savepv,
    _Perl_savepvn,
    _Perl_savestack_grow,
    _Perl_sawparens,
    _Perl_scalar,
    _Perl_scalarkids,
    _Perl_scalarseq,
    _Perl_scalarvoid,
    _Perl_scan_hex,
    _Perl_scan_num,
    _Perl_scan_oct,
    _Perl_scope,
    _Perl_screaminstr,
    _Perl_setdefout,
    _Perl_setenv_getix,
    _Perl_sig_name,
    _Perl_sig_num,
    _Perl_sighandler,
    _Perl_stack_grow,
    _Perl_start_subparse,
    _Perl_sub_crush_depth,
    _Perl_sv_2bool,
    _Perl_sv_2cv,
    _Perl_sv_2io,
    _Perl_sv_2iv,
    _Perl_sv_2mortal,
    _Perl_sv_2nv,
    _Perl_sv_2pv,
    _Perl_sv_2uv,
    _Perl_sv_add_arena,
    _Perl_sv_backoff,
    _Perl_sv_bless,
    _Perl_sv_catpv,
    _Perl_sv_catpv_mg,
    _Perl_sv_catpvf,
    _Perl_sv_catpvf_mg,
    _Perl_sv_catpvn,
    _Perl_sv_catpvn_mg,
    _Perl_sv_catsv,
    _Perl_sv_catsv_mg,
    _Perl_sv_chop,
    _Perl_sv_clean_all,
    _Perl_sv_clean_objs,
    _Perl_sv_clear,
    _Perl_sv_cmp,
    _Perl_sv_cmp_locale,
    _Perl_sv_compile_2op,
    _Perl_sv_dec,
    _Perl_sv_derived_from,
    _Perl_sv_dump,
    _Perl_sv_eq,
    _Perl_sv_free,
    _Perl_sv_free_arenas,
    _Perl_sv_gets,
    _Perl_sv_grow,
    _Perl_sv_inc,
    _Perl_sv_insert,
    _Perl_sv_isa,
    _Perl_sv_isobject,
    _Perl_sv_iv,
    _Perl_sv_len,
    _Perl_sv_magic,
    _Perl_sv_mortalcopy,
    _Perl_sv_newmortal,
    _Perl_sv_newref,
    _Perl_sv_nv,
    _Perl_sv_peek,
    _Perl_sv_pvn,
    _Perl_sv_pvn_force,
    _Perl_sv_reftype,
    _Perl_sv_replace,
    _Perl_sv_report_used,
    _Perl_sv_reset,
    _Perl_sv_setiv,
    _Perl_sv_setiv_mg,
    _Perl_sv_setnv,
    _Perl_sv_setnv_mg,
    _Perl_sv_setpv,
    _Perl_sv_setpv_mg,
    _Perl_sv_setpvf,
    _Perl_sv_setpvf_mg,
    _Perl_sv_setpviv,
    _Perl_sv_setpviv_mg,
    _Perl_sv_setpvn,
    _Perl_sv_setpvn_mg,
    _Perl_sv_setref_iv,
    _Perl_sv_setref_nv,
    _Perl_sv_setref_pv,
    _Perl_sv_setref_pvn,
    _Perl_sv_setsv,
    _Perl_sv_setsv_mg,
    _Perl_sv_setuv,
    _Perl_sv_setuv_mg,
    _Perl_sv_taint,
    _Perl_sv_tainted,
    _Perl_sv_true,
    _Perl_sv_unmagic,
    _Perl_sv_unref,
    _Perl_sv_untaint,
    _Perl_sv_upgrade,
    _Perl_sv_usepvn,
    _Perl_sv_usepvn_mg,
    _Perl_sv_uv,
    _Perl_sv_vcatpvfn,
    _Perl_sv_vsetpvfn,
    _Perl_taint_env,
    _Perl_taint_proper,
    _Perl_utilize,
    _Perl_vivify_defelem,
    _Perl_vivify_ref,
    _Perl_vtbl_amagic,
    _Perl_vtbl_amagicelem,
    _Perl_vtbl_arylen,
    _Perl_vtbl_bm,
    _Perl_vtbl_dbline,
    _Perl_vtbl_defelem,
    _Perl_vtbl_env,
    _Perl_vtbl_envelem,
    _Perl_vtbl_fm,
    _Perl_vtbl_glob,
    _Perl_vtbl_isa,
    _Perl_vtbl_isaelem,
    _Perl_vtbl_mglob,
    _Perl_vtbl_nkeys,
    _Perl_vtbl_pack,
    _Perl_vtbl_packelem,
    _Perl_vtbl_pos,
    _Perl_vtbl_regexp,
    _Perl_vtbl_sig,
    _Perl_vtbl_sigelem,
    _Perl_vtbl_substr,
    _Perl_vtbl_sv,
    _Perl_vtbl_taint,
    _Perl_vtbl_uvar,
    _Perl_vtbl_vec,
    _Perl_wait4pid,
    _Perl_warn,
    _Perl_warn_nl,
    _Perl_warn_nosemi,
    _Perl_warn_reserved,
    _Perl_warn_uninit,
    _Perl_watch,
    _Perl_whichsig,
    _Perl_yyerror,
    _Perl_yylex,
    _Perl_yylval,
    _Perl_yyparse,
    _Perl_yywarn,
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
    _____isnan,
    ___acos,
    ___asin,
    ___atan,
    ___atan2,
    ___bzero,
    ___ceil,
    ___cos,
    ___cosh,
    ___ctype_b,
    ___ctype_get_mb_cur_max,
    ___ctype_tolower,
    ___ctype_toupper,
    ___daylight,
    ___errno_location,
    ___exp,
    ___fabs,
    ___floor,
    ___fmod,
    ___frexp,
    ___fxstat,
    ___gmtime_r,
    ___isinf,
    ___isnan,
    ___ldexp,
    ___libc_current_sigrtmax,
    ___libc_current_sigrtmin,
    ___log,
    ___log10,
    ___lxstat,
    ___modf,
    ___overflow,
    ___pow,
    ___secure_getenv,
    ___select,
    ___sigaction,
    ___sigaddset,
    ___sigdelset,
    ___sigismember,
    ___sigpause,
    ___sigsetjmp,
    ___sin,
    ___sinh,
    ___sqrt,
    ___strtod_internal,
    ___strtof_internal,
    ___strtok_r,
    ___strtol_internal,
    ___strtold_internal,
    ___strtoul_internal,
    ___sysv_signal,
    ___tan,
    ___tanh,
    ___timezone,
    ___tzname,
    ___uflow,
    ___underflow,
    ___xmknod,
    ___xstat,
    _abort,
    _abs,
    _acos,
    _adjtime,
    _asctime,
    _asctime_r,
    _asin,
    _atan,
    _atan2,
    _atexit,
    _atof,
    _atoi,
    _atol,
    _bsearch,
    _calloc,
    _cast_i32,
    _cast_iv,
    _cast_uv,
    _ceil,
    _chmod,
    _clearerr,
    _clock,
    _closedir,
    _cos,
    _cosh,
    _crypt,
    _ctermid,
    _ctime,
    _ctime_r,
    _difftime,
    _div,
    _environ,
    _errno,
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
    _flockfile,
    _floor,
    _fmod,
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
    _fstat,
    _ftell,
    _ftrylockfile,
    _funlockfile,
    _fwrite,
    _getc,
    _getc_unlocked,
    _getchar,
    _getchar_unlocked,
    _getegid,
    _getenv,
    _geteuid,
    _getgid,
    _getitimer,
    _getlogin,
    _gets,
    _gettimeofday,
    _getuid,
    _gmtime,
    _gmtime_r,
    _ioctl,
    _isalnum,
    _isalpha,
    _iscntrl,
    _isdigit,
    _isgraph,
    _islower,
    _isprint,
    _ispunct,
    _isspace,
    _isupper,
    _isxdigit,
    _kill,
    _labs,
    _ldexp,
    _ldiv,
    _localeconv,
    _localtime,
    _localtime_r,
    _log,
    _log10,
    _longjmp,
    _lseek,
    _main,
    _malloc,
    _mblen,
    _mbstowcs,
    _mbtowc,
    _memchr,
    _memcmp,
    _memcpy,
    _memmove,
    _memset,
    _mkdir,
    _mkfifo,
    _mktemp,
    _mktime,
    _modf,
    _opendir,
    _optype_size,
    _perl_alloc,
    _perl_atexit,
    _perl_call_argv,
    _perl_call_method,
    _perl_call_pv,
    _perl_call_sv,
    _perl_construct,
    _perl_destruct,
    _perl_eval_pv,
    _perl_eval_sv,
    _perl_free,
    _perl_get_av,
    _perl_get_cv,
    _perl_get_hv,
    _perl_get_sv,
    _perl_init_i18nl10n,
    _perl_init_i18nl14n,
    _perl_new_collate,
    _perl_new_ctype,
    _perl_new_numeric,
    _perl_parse,
    _perl_require_pv,
    _perl_run,
    _perl_set_numeric_local,
    _perl_set_numeric_standard,
    _perror,
    _pow,
    _printf,
    _putc,
    _putc_unlocked,
    _putchar,
    _putchar_unlocked,
    _puts,
    _qsort,
    _raise,
    _rand,
    _rand_r,
    _readdir,
    _readdir_r,
    _realloc,
    _remove,
    _rename,
    _rewind,
    _rewinddir,
    _scanf,
    _select,
    _setbuf,
    _setitimer,
    _setlocale,
    _settimeofday,
    _setvbuf,
    _sigaction,
    _sigaddset,
    _sigdelset,
    _sigemptyset,
    _sigfillset,
    _sigismember,
    _siglongjmp,
    _sigpending,
    _sigprocmask,
    _sigsuspend,
    _sigwait,
    _sin,
    _sinh,
    _sprintf,
    _sqrt,
    _srand,
    _sscanf,
    _stat,
    _stderr,
    _stdin,
    _stdout,
    _strcat,
    _strchr,
    _strcmp,
    _strcoll,
    _strcpy,
    _strcspn,
    _strerror,
    _strftime,
    _strlen,
    _strncat,
    _strncmp,
    _strncpy,
    _strpbrk,
    _strrchr,
    _strspn,
    _strstr,
    _strtod,
    _strtok,
    _strtok_r,
    _strtol,
    _strtoul,
    _strxfrm,
    _system,
    _tan,
    _tanh,
    _time,
    _times,
    _tmpfile,
    _tmpnam,
    _tolower,
    _toupper,
    _tzname,
    _tzset,
    _umask,
    _ungetc,
    _utimes,
    _vfprintf,
    _vprintf,
    _vsprintf,
    _wcstombs,
    _wctomb,
    memcpy;

export bits32
Cmm.global_area,
    Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI,
    Cmm_stack_growth,
    _Perl_hv_clear,
    _Perl_hv_delayfree_ent,
    _Perl_hv_delete,
    _Perl_hv_delete_ent,
    _Perl_hv_exists,
    _Perl_hv_exists_ent,
    _Perl_hv_fetch,
    _Perl_hv_fetch_ent,
    _Perl_hv_free_ent,
    _Perl_hv_iterinit,
    _Perl_hv_iterkey,
    _Perl_hv_iterkeysv,
    _Perl_hv_iternext,
    _Perl_hv_iternextsv,
    _Perl_hv_iterval,
    _Perl_hv_ksplit,
    _Perl_hv_magic,
    _Perl_hv_store,
    _Perl_hv_store_ent,
    _Perl_hv_undef,
    _Perl_newHV,
    _Perl_newHVhv,
    _Perl_share_hek,
    _Perl_sharepvn,
    _Perl_unshare_hek,
    _Perl_unsharepvn;

section "data" { align 1; }

section "data" { sym@Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI: }

section "data" { sym@Cmm.global_area: }

section "data" { bits8[0::bits32]; }

section "data" { align 4; }

section "data" { sym@Cmm_stack_growth: }

section "data" { bits32[1::bits32] { 0xffffffff::bits32 }; }

section "rodata" { align 4; }

section "rodata" { sym@@i___huge_val: }

section "rodata" { bits32[1::bits32] { 0x0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0x0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0x0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0x0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0x0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0x0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0xfffffffffffffff0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0x7f::bits32 }; }

section "text"
{
    sym@@i_new_he()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        .Linitialize continuations:l37:
        .Lproc body start:l36:
        $c0 when %ne[32](bits32[bits32[sym@_PL_he_root]], 0)
            = sym@.Ljoin@l43;
        .Ljoin:l44:
        $c0, $r30 = bits32[sym@@i_more_he], ($c0+4);
        .Ljoin:l42:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_21;
        .Ljoin:l43:
        $c0 = sym@@i_21;
        @i_21:
        @i_@1i_1 = bits32[sym@_PL_he_root];
        @i_@0i_he = bits32[@i_@1i_1];
        bits32[@i_@1i_1] = bits32[@i_@0i_he];
        $r0 = @i_@0i_he;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@@i_del_he()
    {
        $r31 = ($r31+-24);
        @i_p = $r0;
        $t1 = $r30;
        .Linitialize continuations:l51:
        .Lproc body start:l50:
        bits32[@i_p] = bits32[bits32[sym@_PL_he_root]];
        bits32[sym@_PL_he_root] = @i_p;
        @i_23:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@@i_more_he()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        .Linitialize continuations:l60:
        .Lproc body start:l59:
        $r0 = 1008;
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l66:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@5i_1 = $r0;
        bits32[sym@_PL_he_root] = @i_@5i_1;
        @i_@3i_he = bits32[bits32[sym@_PL_he_root]];
        @i_@4i_heend = (@i_@3i_he+996);
        $c0 = sym@@i_26;
        @i_26:
        $c0 when %ltu[32](@i_@3i_he, @i_@4i_heend) = sym@.Ljoin@l62;
        .Ljoin:l63:
        bits32[@i_@3i_he] = 0;
        @i_24:
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l62:
        $c0 = sym@@i_25;
        @i_25:
        bits32[@i_@3i_he] = (@i_@3i_he+12);
        @i_@3i_he = (@i_@3i_he+12);
        $c0 = sym@@i_26;
    }
}

section "text"
{
    sym@@i_save_hek()
    {
        $r31 = ($r31+-24);
        @i_str, @i_len, @i_hash = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l73:
        .Lproc body start:l72:
        @i_@9i_1 = 1;
        $r0 = %mul[32](@i_@9i_1, ((@i_len+8)+@i_@9i_1));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l81:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@10i_2 = $r0;
        @i_@8i_k = @i_@10i_2;
        @i_@7i_hek = @i_@8i_k;
        $r0, $r1, $r2 = @i_str, (@i_@7i_hek+8), %mul[32](1, @i_len);
        $c0, $r30 = bits32[sym@_Perl_my_bcopy], ($c0+4);
        .Ljoin:l78:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits8[(@i_len+(@i_@7i_hek+8))] = 0;
        bits32[(@i_@7i_hek+4)] = @i_len;
        bits32[@i_@7i_hek] = @i_hash;
        $r0 = @i_@7i_hek;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_unshare_hek()
    {
        $r31 = ($r31+-24);
        @i_hek = $r0;
        $t1 = $r30;
        .Linitialize continuations:l88:
        .Lproc body start:l87:
        $r0, $r1, $r2 = (@i_hek+8), bits32[(@i_hek+4)], bits32[@i_hek];
        $c0, $r30 = bits32[sym@_Perl_unsharepvn], ($c0+4);
        .Ljoin:l92:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_29:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_fetch()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_key, @i_klen, @i_lval = $r0, $r1, $r2, $r3;
        $t1 = $r30;
        .Linitialize continuations:l99:
        .Lproc body start:l98:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l151;
        .Ljoin:l152:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l151:
        $c0 = sym@@i_31;
        @i_31:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l148;
        .Ljoin:l149:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l147:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@16i_1 = $r0;
        $c0 when %eq[32](@i_@16i_1, 0) = sym@.Ljoin@l143;
        .Ljoin:l144:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        .Ljoin:l142:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@17i_2 = $r0;
        @i_@15i_sv = @i_@17i_2;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@15i_sv, @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l139:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@18i_3 = bits32[sym@_PL_hv_fetch_sv];
        bits32[@i_@18i_3] = @i_@15i_sv;
        $r0 = @i_@18i_3;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l143:
        $c0 = sym@@i_35;
        @i_35:
        $c0 = sym@@i_33;
        .Ljoin:l148:
        $c0 = sym@@i_33;
        @i_33:
        @i_@12i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@12i_xhv], 0) = sym@.Ljoin@l134;
        .Ljoin:l135:
        $c0 when %eq[32](@i_lval, 0) = sym@.Ljoin@l132;
        .Ljoin:l133:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@12i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l131:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@20i_5 = $r0;
        bits32[@i_@12i_xhv] = @i_@20i_5;
        $r0, $r1, $r2
            = bits32[@i_@12i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@12i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l128:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_40;
        @i_40:
        $c0 = sym@@i_37;
        .Ljoin:l132:
        $c0 = sym@@i_39;
        @i_39:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l134:
        $c0 = sym@@i_37;
        @i_37:
        @i_41:
        @i_@22i_s_PeRlHaSh = @i_key;
        @i_@23i_i_PeRlHaSh = @i_klen;
        @i_@24i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_45;
        @i_45:
        @i_@26i_8 = @i_@23i_i_PeRlHaSh;
        @i_@23i_i_PeRlHaSh = (@i_@26i_8-1);
        $c0 when %ne[32](@i_@26i_8, 0) = sym@.Ljoin@l123;
        .Ljoin:l124:
        @i_@13i_hash = @i_@24i_hash_PeRlHaSh;
        @i_42:
        @i_@14i_entry
            =
            bits32[(%shl[32](%and[32](@i_@13i_hash,
            bits32[(@i_@12i_xhv+8)]),
            2)+
                bits32[@i_@12i_xhv])];
        $c0 = sym@@i_50;
        @i_50:
        $c0 when %ne[32](@i_@14i_entry, 0) = sym@.Ljoin@l111;
        .Ljoin:l112:
        $c0 when %eq[32](@i_lval, 0) = sym@.Ljoin@l109;
        .Ljoin:l110:
        $r0 = 0;
        $c0, $r30 = bits32[sym@_Perl_newSV], ($c0+4);
        .Ljoin:l108:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@30i_12 = $r0;
        @i_@15i_sv = @i_@30i_12;
        $r0, $r1, $r2, $r3, $r4
            = @i_hv, @i_key, @i_klen, @i_@15i_sv, @i_@13i_hash;
        $c0, $r30 = bits32[sym@_Perl_hv_store], ($c0+4);
        .Ljoin:l105:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@31i_13 = $r0;
        $r0 = @i_@31i_13;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l109:
        $c0 = sym@@i_57;
        @i_57:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l111:
        $c0 = sym@@i_47;
        @i_47:
        $c0
            when
            %eq[32](bits32[bits32[(@i_@14i_entry+4)]], @i_@13i_hash)
            = sym@.Ljoin@l121;
        .Ljoin:l122:
        $c0 = sym@@i_48;
        .Ljoin:l121:
        $c0 = sym@@i_51;
        @i_51:
        @i_@28i_10 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@14i_entry+@i_@28i_10)]+
                @i_@28i_10)],
            @i_klen) = sym@.Ljoin@l119;
        .Ljoin:l120:
        $c0 = sym@@i_48;
        .Ljoin:l119:
        $c0 = sym@@i_53;
        @i_53:
        $r0, $r1, $r2 = (bits32[(@i_@14i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l118:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@29i_11 = $r0;
        $c0 when %eq[32](@i_@29i_11, 0) = sym@.Ljoin@l114;
        .Ljoin:l115:
        $c0 = sym@@i_48;
        @i_48:
        @i_@14i_entry = bits32[@i_@14i_entry];
        $c0 = sym@@i_50;
        .Ljoin:l114:
        $c0 = sym@@i_55;
        @i_55:
        $r0 = (@i_@14i_entry+8);
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l123:
        $c0 = sym@@i_44;
        @i_44:
        @i_@25i_7 = @i_@22i_s_PeRlHaSh;
        @i_@22i_s_PeRlHaSh = (@i_@25i_7+1);
        @i_@24i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@24i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@25i_7]));
        $c0 = sym@@i_45;
    }
}

section "text"
{
    sym@_Perl_hv_fetch_ent()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_keysv, @i_lval, @i_hash = $r0, $r1, $r2, $r3;
        $t1 = $r30;
        .Linitialize continuations:l159:
        .Lproc body start:l158:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l228;
        .Ljoin:l229:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l228:
        $c0 = sym@@i_60;
        @i_60:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l225;
        .Ljoin:l226:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l224:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@37i_1 = $r0;
        $c0 when %eq[32](@i_@37i_1, 0) = sym@.Ljoin@l220;
        .Ljoin:l221:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        .Ljoin:l219:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@38i_2 = $r0;
        @i_@36i_sv = @i_@38i_2;
        $r0 = @i_keysv;
        $c0, $r30 = bits32[sym@_Perl_newSVsv], ($c0+4);
        .Ljoin:l216:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@39i_3 = $r0;
        $r0 = @i_@39i_3;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        .Ljoin:l213:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@40i_4 = $r0;
        @i_keysv = @i_@40i_4;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@36i_sv, @i_keysv, -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l210:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[bits32[(sym@_PL_hv_fetch_ent_mh+4)]], 0)
            = sym@.Ljoin@l206;
        .Ljoin:l207:
        $r0 = 12;
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l205:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@42i_5 = $r0;
        @i_@41i_k = @i_@42i_5;
        bits32[(sym@_PL_hv_fetch_ent_mh+4)] = @i_@41i_k;
        $c0 = sym@@i_66;
        .Ljoin:l206:
        $c0 = sym@@i_66;
        @i_66:
        bits32[(bits32[bits32[(sym@_PL_hv_fetch_ent_mh+4)]]+4)] = -2;
        bits32[(bits32[bits32[(sym@_PL_hv_fetch_ent_mh+4)]]+8)]
            = @i_keysv;
        bits32[(sym@_PL_hv_fetch_ent_mh+8)] = @i_@36i_sv;
        $r0 = bits32[sym@_PL_hv_fetch_ent_mh];
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l220:
        $c0 = sym@@i_64;
        @i_64:
        $c0 = sym@@i_62;
        .Ljoin:l225:
        $c0 = sym@@i_62;
        @i_62:
        @i_@32i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@32i_xhv], 0) = sym@.Ljoin@l200;
        .Ljoin:l201:
        $c0 when %eq[32](@i_lval, 0) = sym@.Ljoin@l198;
        .Ljoin:l199:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@32i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l197:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@44i_7 = $r0;
        bits32[@i_@32i_xhv] = @i_@44i_7;
        $r0, $r1, $r2
            = bits32[@i_@32i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@32i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l194:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_76;
        @i_76:
        $c0 = sym@@i_73;
        .Ljoin:l198:
        $c0 = sym@@i_75;
        @i_75:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l200:
        $c0 = sym@@i_73;
        @i_73:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@.Ljoin@l189;
        .Ljoin:l190:
        @i_@47i_9 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@47i_9]+4)];
        @i_@46i_77 = bits32[bits32[@i_@47i_9]];
        $c0 = sym@@i_79;
        .Ljoin:l189:
        $c0 = sym@@i_78;
        @i_78:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        .Ljoin:l188:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@48i_10 = $r0;
        @i_@46i_77 = @i_@48i_10;
        $c0 = sym@@i_79;
        @i_79:
        @i_@33i_key = @i_@46i_77;
        $c0 when %ne[32](@i_hash, 0) = sym@.Ljoin@l185;
        @i_82:
        @i_@49i_s_PeRlHaSh = @i_@33i_key;
        @i_@50i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@51i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_86;
        @i_86:
        @i_@53i_12 = @i_@50i_i_PeRlHaSh;
        @i_@50i_i_PeRlHaSh = (@i_@53i_12-1);
        $c0 when %ne[32](@i_@53i_12, 0) = sym@.Ljoin@l183;
        .Ljoin:l184:
        @i_hash = @i_@51i_hash_PeRlHaSh;
        @i_83:
        $c0 = sym@@i_80;
        .Ljoin:l183:
        $c0 = sym@@i_85;
        @i_85:
        @i_@52i_11 = @i_@49i_s_PeRlHaSh;
        @i_@49i_s_PeRlHaSh = (@i_@52i_11+1);
        @i_@51i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@51i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@52i_11]));
        $c0 = sym@@i_86;
        .Ljoin:l185:
        $c0 = sym@@i_80;
        @i_80:
        @i_@34i_entry
            =
            bits32[(%shl[32](%and[32](@i_hash, bits32[(@i_@32i_xhv+8)]),
            2)+
                bits32[@i_@32i_xhv])];
        $c0 = sym@@i_91;
        @i_91:
        $c0 when %ne[32](@i_@34i_entry, 0) = sym@.Ljoin@l171;
        .Ljoin:l172:
        $c0 when %eq[32](@i_lval, 0) = sym@.Ljoin@l169;
        .Ljoin:l170:
        $r0 = 0;
        $c0, $r30 = bits32[sym@_Perl_newSV], ($c0+4);
        .Ljoin:l168:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@57i_16 = $r0;
        @i_@36i_sv = @i_@57i_16;
        $r0, $r1, $r2, $r3 = @i_hv, @i_keysv, @i_@36i_sv, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_hv_store_ent], ($c0+4);
        .Ljoin:l165:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@58i_17 = $r0;
        $r0 = @i_@58i_17;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l169:
        $c0 = sym@@i_98;
        @i_98:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l171:
        $c0 = sym@@i_88;
        @i_88:
        $c0 when %eq[32](bits32[bits32[(@i_@34i_entry+4)]], @i_hash)
            = sym@.Ljoin@l181;
        .Ljoin:l182:
        $c0 = sym@@i_89;
        .Ljoin:l181:
        $c0 = sym@@i_92;
        @i_92:
        @i_@55i_14 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@34i_entry+@i_@55i_14)]+
                @i_@55i_14)],
            bits32[bits32[($r31+24)]]) = sym@.Ljoin@l179;
        .Ljoin:l180:
        $c0 = sym@@i_89;
        .Ljoin:l179:
        $c0 = sym@@i_94;
        @i_94:
        $r0, $r1, $r2
            = (bits32[(@i_@34i_entry+4)]+8), @i_@33i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l178:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@56i_15 = $r0;
        $c0 when %eq[32](@i_@56i_15, 0) = sym@.Ljoin@l174;
        .Ljoin:l175:
        $c0 = sym@@i_89;
        @i_89:
        @i_@34i_entry = bits32[@i_@34i_entry];
        $c0 = sym@@i_91;
        .Ljoin:l174:
        $c0 = sym@@i_96;
        @i_96:
        $r0 = @i_@34i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@@i_hv_magic_check()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_needs_copy, @i_needs_store = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l236:
        .Lproc body start:l235:
        @i_@59i_mg = bits32[(bits32[@i_hv]+20)];
        bits32[@i_needs_copy] = 0;
        bits32[@i_needs_store] = 1;
        $c0 = sym@@i_102;
        @i_102:
        $c0 when %ne[32](@i_@59i_mg, 0) = sym@.Ljoin@l238;
        @i_100:
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l238:
        $c0 = sym@@i_101;
        @i_101:
        @i_@60i_1 = %sx[8,32](bits8[(@i_@59i_mg+12)]);
        $c0 when %lt[32](@i_@60i_1, 65) = sym@.Ljoin@l246;
        .Ljoin:l247:
        $c0 when %gt[32](@i_@60i_1, 90) = sym@.Ljoin@l244;
        .Ljoin:l245:
        bits32[@i_needs_copy] = 1;
        @i_@61i_108 = %sx[8,32](bits8[(@i_@59i_mg+12)]);
        @i_@63i_3 = 80;
        $c0 when %eq[32](@i_@61i_108, @i_@63i_3) = sym@.Ljoin@l242;
        .Ljoin:l243:
        $c0 when %lt[32](@i_@61i_108, @i_@63i_3) = sym@.Ljoin@l241;
        @i_110:
        $c0 when %eq[32](@i_@61i_108, 83) = sym@.Ljoin@l239;
        .Ljoin:l240:
        $c0 = sym@@i_106;
        .Ljoin:l239:
        $c0 = sym@@i_109;
        .Ljoin:l241:
        $c0 = sym@@i_106;
        .Ljoin:l242:
        $c0 = sym@@i_109;
        @i_109:
        bits32[@i_needs_store] = 0;
        $c0 = sym@@i_106;
        @i_106:
        $c0 = sym@@i_104;
        .Ljoin:l244:
        $c0 = sym@@i_104;
        .Ljoin:l246:
        $c0 = sym@@i_104;
        @i_104:
        @i_@59i_mg = bits32[@i_@59i_mg];
        $c0 = sym@@i_102;
    }
}

section "text"
{
    sym@_Perl_hv_store()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_key, @i_klen, @i_val, @i_hash
            = $r0, $r1, $r2, $r3, $r4;
        $t1 = $r30;
        .Linitialize continuations:l255:
        .Lproc body start:l254:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l318;
        .Ljoin:l319:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l318:
        $c0 = sym@@i_112;
        @i_112:
        @i_@68i_1 = @i_hv;
        @i_@64i_xhv = bits32[@i_@68i_1];
        $c0 when %eq[32](%and[32](bits32[(@i_@68i_1+8)], 57344), 0)
            = sym@.Ljoin@l315;
        .Ljoin:l316:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+24)], bits32[($r31+28)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        .Ljoin:l314:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+24)]], 0)
            = sym@.Ljoin@l310;
        .Ljoin:l311:
        $r0, $r1, $r2, $r3 = @i_hv, @i_val, @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l309:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[@i_@64i_xhv], 0) = sym@.Ljoin@l305;
        .Ljoin:l306:
        $c0 when %ne[32](bits32[bits32[($r31+28)]], 0)
            = sym@.Ljoin@l303;
        .Ljoin:l304:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l303:
        $c0 = sym@@i_118;
        .Ljoin:l305:
        $c0 = sym@@i_118;
        @i_118:
        $c0 = sym@@i_116;
        .Ljoin:l310:
        $c0 = sym@@i_116;
        @i_116:
        $c0 = sym@@i_114;
        .Ljoin:l315:
        $c0 = sym@@i_114;
        @i_114:
        $c0 when %ne[32](@i_hash, 0) = sym@.Ljoin@l301;
        @i_122:
        @i_@71i_s_PeRlHaSh = @i_key;
        @i_@72i_i_PeRlHaSh = @i_klen;
        @i_@73i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_126;
        @i_126:
        @i_@75i_3 = @i_@72i_i_PeRlHaSh;
        @i_@72i_i_PeRlHaSh = (@i_@75i_3-1);
        $c0 when %ne[32](@i_@75i_3, 0) = sym@.Ljoin@l299;
        .Ljoin:l300:
        @i_hash = @i_@73i_hash_PeRlHaSh;
        @i_123:
        $c0 = sym@@i_120;
        .Ljoin:l299:
        $c0 = sym@@i_125;
        @i_125:
        @i_@74i_2 = @i_@71i_s_PeRlHaSh;
        @i_@71i_s_PeRlHaSh = (@i_@74i_2+1);
        @i_@73i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@73i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@74i_2]));
        $c0 = sym@@i_126;
        .Ljoin:l301:
        $c0 = sym@@i_120;
        @i_120:
        $c0 when %ne[32](bits32[@i_@64i_xhv], 0) = sym@.Ljoin@l297;
        .Ljoin:l298:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@64i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l296:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@77i_5 = $r0;
        bits32[@i_@64i_xhv] = @i_@77i_5;
        $r0, $r1, $r2
            = bits32[@i_@64i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@64i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l293:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_128;
        .Ljoin:l297:
        $c0 = sym@@i_128;
        @i_128:
        @i_@67i_oentry
            =
            (%shl[32](%and[32](@i_hash, bits32[(@i_@64i_xhv+8)]), 2)+
                bits32[@i_@64i_xhv]);
        @i_@65i_i = 1;
        @i_@66i_entry = bits32[@i_@67i_oentry];
        $c0 = sym@@i_133;
        @i_133:
        $c0 when %ne[32](@i_@66i_entry, 0) = sym@.Ljoin@l276;
        .Ljoin:l277:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        .Ljoin:l275:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@82i_10 = $r0;
        @i_@66i_entry = @i_@82i_10;
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@.Ljoin@l271;
        .Ljoin:l272:
        $r0, $r1, $r2 = @i_key, @i_klen, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_share_hek], ($c0+4);
        .Ljoin:l270:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@83i_11 = $r0;
        bits32[(@i_@66i_entry+4)] = @i_@83i_11;
        $c0 = sym@@i_141;
        .Ljoin:l271:
        $c0 = sym@@i_140;
        @i_140:
        $r0, $r1, $r2 = @i_key, @i_klen, @i_hash;
        $c0, $r30 = bits32[sym@@i_save_hek], ($c0+4);
        .Ljoin:l267:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@84i_12 = $r0;
        bits32[(@i_@66i_entry+4)] = @i_@84i_12;
        $c0 = sym@@i_141;
        @i_141:
        bits32[(@i_@66i_entry+8)] = @i_val;
        bits32[@i_@66i_entry] = bits32[@i_@67i_oentry];
        bits32[@i_@67i_oentry] = @i_@66i_entry;
        @i_@85i_13 = (@i_@64i_xhv+12);
        bits32[@i_@85i_13] = (bits32[@i_@85i_13]+1);
        $c0 when %eq[32](@i_@65i_i, 0) = sym@.Ljoin@l263;
        .Ljoin:l264:
        @i_@86i_14 = (@i_@64i_xhv+4);
        bits32[@i_@86i_14] = (bits32[@i_@86i_14]+1);
        $c0
            when
            %leu[32](bits32[(@i_@64i_xhv+12)], bits32[(@i_@64i_xhv+8)])
            = sym@.Ljoin@l261;
        .Ljoin:l262:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@@i_hsplit], ($c0+4);
        .Ljoin:l260:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_144;
        .Ljoin:l261:
        $c0 = sym@@i_144;
        @i_144:
        $c0 = sym@@i_142;
        .Ljoin:l263:
        $c0 = sym@@i_142;
        @i_142:
        $r0 = (@i_@66i_entry+8);
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l276:
        $c0 = sym@@i_130;
        @i_130:
        $c0 when %eq[32](bits32[bits32[(@i_@66i_entry+4)]], @i_hash)
            = sym@.Ljoin@l289;
        .Ljoin:l290:
        $c0 = sym@@i_131;
        .Ljoin:l289:
        $c0 = sym@@i_134;
        @i_134:
        @i_@80i_8 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@66i_entry+@i_@80i_8)]+
                @i_@80i_8)],
            @i_klen) = sym@.Ljoin@l287;
        .Ljoin:l288:
        $c0 = sym@@i_131;
        .Ljoin:l287:
        $c0 = sym@@i_136;
        @i_136:
        $r0, $r1, $r2 = (bits32[(@i_@66i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l286:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@81i_9 = $r0;
        $c0 when %eq[32](@i_@81i_9, 0) = sym@.Ljoin@l282;
        .Ljoin:l283:
        $c0 = sym@@i_131;
        @i_131:
        @i_@65i_i = 0;
        @i_@66i_entry = bits32[@i_@66i_entry];
        $c0 = sym@@i_133;
        .Ljoin:l282:
        $c0 = sym@@i_138;
        @i_138:
        $r0 = bits32[(@i_@66i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        .Ljoin:l281:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(@i_@66i_entry+8)] = @i_val;
        $r0 = (@i_@66i_entry+8);
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_store_ent()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_keysv, @i_val, @i_hash = $r0, $r1, $r2, $r3;
        $t1 = $r30;
        .Linitialize continuations:l326:
        .Lproc body start:l325:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l411;
        .Ljoin:l412:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l411:
        $c0 = sym@@i_147;
        @i_147:
        @i_@94i_1 = @i_hv;
        @i_@88i_xhv = bits32[@i_@94i_1];
        $c0 when %eq[32](%and[32](bits32[(@i_@94i_1+8)], 57344), 0)
            = sym@.Ljoin@l408;
        .Ljoin:l409:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+28)], bits32[($r31+32)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        .Ljoin:l407:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+28)]], 0)
            = sym@.Ljoin@l403;
        .Ljoin:l404:
        @i_@97i_save_taint = bits32[bits32[sym@_PL_tainted]];
        $c0 when %eq[32](bits32[bits32[sym@_PL_tainting]], 0)
            = sym@.Ljoin@l401;
        .Ljoin:l402:
        @i_@99i_2 = @i_keysv;
        $c0 when %eq[32](%and[32](bits32[(@i_@99i_2+8)], 57344), 0)
            = sym@.Ljoin@l399;
        .Ljoin:l400:
        $r0 = @i_@99i_2;
        $c0, $r30 = bits32[sym@_Perl_sv_tainted], ($c0+4);
        .Ljoin:l398:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@100i_3 = $r0;
        $c0 when %eq[32](@i_@100i_3, 0) = sym@.Ljoin@l394;
        .Ljoin:l395:
        @i_@98i_155 = 1;
        $c0 = sym@@i_157;
        .Ljoin:l394:
        $c0 = sym@@i_156;
        .Ljoin:l399:
        $c0 = sym@@i_156;
        @i_156:
        @i_@98i_155 = 0;
        $c0 = sym@@i_157;
        @i_157:
        bits32[sym@_PL_tainted] = @i_@98i_155;
        $c0 = sym@@i_153;
        .Ljoin:l401:
        $c0 = sym@@i_153;
        @i_153:
        $r0 = @i_keysv;
        $c0, $r30 = bits32[sym@_Perl_newSVsv], ($c0+4);
        .Ljoin:l393:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@101i_4 = $r0;
        $r0 = @i_@101i_4;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        .Ljoin:l390:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@102i_5 = $r0;
        @i_keysv = @i_@102i_5;
        $r0, $r1, $r2, $r3 = @i_hv, @i_val, @i_keysv, -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l387:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](@i_@97i_save_taint, 0) = sym@.Ljoin@l383;
        .Ljoin:l384:
        bits32[sym@_PL_tainted] = 1;
        $c0 = sym@@i_158;
        .Ljoin:l383:
        $c0 = sym@@i_158;
        @i_158:
        $c0 when %ne[32](bits32[@i_@88i_xhv], 0) = sym@.Ljoin@l381;
        .Ljoin:l382:
        $c0 when %ne[32](bits32[bits32[($r31+32)]], 0)
            = sym@.Ljoin@l379;
        .Ljoin:l380:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l379:
        $c0 = sym@@i_160;
        .Ljoin:l381:
        $c0 = sym@@i_160;
        @i_160:
        $c0 = sym@@i_151;
        .Ljoin:l403:
        $c0 = sym@@i_151;
        @i_151:
        $c0 = sym@@i_149;
        .Ljoin:l408:
        $c0 = sym@@i_149;
        @i_149:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@.Ljoin@l376;
        .Ljoin:l377:
        @i_@104i_6 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@104i_6]+4)];
        @i_@103i_162 = bits32[bits32[@i_@104i_6]];
        $c0 = sym@@i_164;
        .Ljoin:l376:
        $c0 = sym@@i_163;
        @i_163:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        .Ljoin:l375:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@105i_7 = $r0;
        @i_@103i_162 = @i_@105i_7;
        $c0 = sym@@i_164;
        @i_164:
        @i_@89i_key = @i_@103i_162;
        $c0 when %ne[32](@i_hash, 0) = sym@.Ljoin@l372;
        @i_167:
        @i_@106i_s_PeRlHaSh = @i_@89i_key;
        @i_@107i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@108i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_171;
        @i_171:
        @i_@110i_9 = @i_@107i_i_PeRlHaSh;
        @i_@107i_i_PeRlHaSh = (@i_@110i_9-1);
        $c0 when %ne[32](@i_@110i_9, 0) = sym@.Ljoin@l370;
        .Ljoin:l371:
        @i_hash = @i_@108i_hash_PeRlHaSh;
        @i_168:
        $c0 = sym@@i_165;
        .Ljoin:l370:
        $c0 = sym@@i_170;
        @i_170:
        @i_@109i_8 = @i_@106i_s_PeRlHaSh;
        @i_@106i_s_PeRlHaSh = (@i_@109i_8+1);
        @i_@108i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@108i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@109i_8]));
        $c0 = sym@@i_171;
        .Ljoin:l372:
        $c0 = sym@@i_165;
        @i_165:
        $c0 when %ne[32](bits32[@i_@88i_xhv], 0) = sym@.Ljoin@l368;
        .Ljoin:l369:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@88i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l367:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@112i_11 = $r0;
        bits32[@i_@88i_xhv] = @i_@112i_11;
        $r0, $r1, $r2
            = bits32[@i_@88i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@88i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l364:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_173;
        .Ljoin:l368:
        $c0 = sym@@i_173;
        @i_173:
        @i_@92i_oentry
            =
            (%shl[32](%and[32](@i_hash, bits32[(@i_@88i_xhv+8)]), 2)+
                bits32[@i_@88i_xhv]);
        @i_@90i_i = 1;
        @i_@91i_entry = bits32[@i_@92i_oentry];
        $c0 = sym@@i_178;
        @i_178:
        $c0 when %ne[32](@i_@91i_entry, 0) = sym@.Ljoin@l347;
        .Ljoin:l348:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        .Ljoin:l346:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@117i_16 = $r0;
        @i_@91i_entry = @i_@117i_16;
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@.Ljoin@l342;
        .Ljoin:l343:
        $r0, $r1, $r2 = @i_@89i_key, bits32[bits32[($r31+24)]], @i_hash;
        $c0, $r30 = bits32[sym@_Perl_share_hek], ($c0+4);
        .Ljoin:l341:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@118i_17 = $r0;
        bits32[(@i_@91i_entry+4)] = @i_@118i_17;
        $c0 = sym@@i_186;
        .Ljoin:l342:
        $c0 = sym@@i_185;
        @i_185:
        $r0, $r1, $r2 = @i_@89i_key, bits32[bits32[($r31+24)]], @i_hash;
        $c0, $r30 = bits32[sym@@i_save_hek], ($c0+4);
        .Ljoin:l338:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@119i_18 = $r0;
        bits32[(@i_@91i_entry+4)] = @i_@119i_18;
        $c0 = sym@@i_186;
        @i_186:
        bits32[(@i_@91i_entry+8)] = @i_val;
        bits32[@i_@91i_entry] = bits32[@i_@92i_oentry];
        bits32[@i_@92i_oentry] = @i_@91i_entry;
        @i_@120i_19 = (@i_@88i_xhv+12);
        bits32[@i_@120i_19] = (bits32[@i_@120i_19]+1);
        $c0 when %eq[32](@i_@90i_i, 0) = sym@.Ljoin@l334;
        .Ljoin:l335:
        @i_@121i_20 = (@i_@88i_xhv+4);
        bits32[@i_@121i_20] = (bits32[@i_@121i_20]+1);
        $c0
            when
            %leu[32](bits32[(@i_@88i_xhv+12)], bits32[(@i_@88i_xhv+8)])
            = sym@.Ljoin@l332;
        .Ljoin:l333:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@@i_hsplit], ($c0+4);
        .Ljoin:l331:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_189;
        .Ljoin:l332:
        $c0 = sym@@i_189;
        @i_189:
        $c0 = sym@@i_187;
        .Ljoin:l334:
        $c0 = sym@@i_187;
        @i_187:
        $r0 = @i_@91i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l347:
        $c0 = sym@@i_175;
        @i_175:
        $c0 when %eq[32](bits32[bits32[(@i_@91i_entry+4)]], @i_hash)
            = sym@.Ljoin@l360;
        .Ljoin:l361:
        $c0 = sym@@i_176;
        .Ljoin:l360:
        $c0 = sym@@i_179;
        @i_179:
        @i_@115i_14 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@91i_entry+@i_@115i_14)]+
                @i_@115i_14)],
            bits32[bits32[($r31+24)]]) = sym@.Ljoin@l358;
        .Ljoin:l359:
        $c0 = sym@@i_176;
        .Ljoin:l358:
        $c0 = sym@@i_181;
        @i_181:
        $r0, $r1, $r2
            = (bits32[(@i_@91i_entry+4)]+8), @i_@89i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l357:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@116i_15 = $r0;
        $c0 when %eq[32](@i_@116i_15, 0) = sym@.Ljoin@l353;
        .Ljoin:l354:
        $c0 = sym@@i_176;
        @i_176:
        @i_@90i_i = 0;
        @i_@91i_entry = bits32[@i_@91i_entry];
        $c0 = sym@@i_178;
        .Ljoin:l353:
        $c0 = sym@@i_183;
        @i_183:
        $r0 = bits32[(@i_@91i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        .Ljoin:l352:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(@i_@91i_entry+8)] = @i_val;
        $r0 = @i_@91i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_delete()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_key, @i_klen, @i_flags = $r0, $r1, $r2, $r3;
        $t1 = $r30;
        .Linitialize continuations:l419:
        .Lproc body start:l418:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l481;
        .Ljoin:l482:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l481:
        $c0 = sym@@i_192;
        @i_192:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l478;
        .Ljoin:l479:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+24)], bits32[($r31+28)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        .Ljoin:l477:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+24)]], 0)
            = sym@.Ljoin@l473;
        .Ljoin:l474:
        $r0, $r1, $r2, $r3 = @i_hv, @i_key, @i_klen, 1;
        $c0, $r30 = bits32[sym@_Perl_hv_fetch], ($c0+4);
        .Ljoin:l472:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@132i_1 = $r0;
        @i_@129i_svp = @i_@132i_1;
        $c0 when %eq[32](@i_@132i_1, 0) = sym@.Ljoin@l468;
        .Ljoin:l469:
        @i_@128i_sv = bits32[@i_@129i_svp];
        $r0 = @i_@128i_sv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        .Ljoin:l467:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[bits32[($r31+28)]], 0)
            = sym@.Ljoin@l463;
        .Ljoin:l464:
        $r0, $r1 = @i_@128i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l462:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@133i_2 = $r0;
        $c0 when %eq[32](@i_@133i_2, 0) = sym@.Ljoin@l458;
        .Ljoin:l459:
        $r0, $r1 = @i_@128i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_sv_unmagic], ($c0+4);
        .Ljoin:l457:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@128i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l458:
        $c0 = sym@@i_200;
        @i_200:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l463:
        $c0 = sym@@i_198;
        @i_198:
        $c0 = sym@@i_196;
        .Ljoin:l468:
        $c0 = sym@@i_196;
        .Ljoin:l473:
        $c0 = sym@@i_196;
        @i_196:
        $c0 = sym@@i_194;
        .Ljoin:l478:
        $c0 = sym@@i_194;
        @i_194:
        @i_@123i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@123i_xhv], 0) = sym@.Ljoin@l451;
        .Ljoin:l452:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l451:
        $c0 = sym@@i_202;
        @i_202:
        @i_204:
        @i_@134i_s_PeRlHaSh = @i_key;
        @i_@135i_i_PeRlHaSh = @i_klen;
        @i_@136i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_208;
        @i_208:
        @i_@138i_4 = @i_@135i_i_PeRlHaSh;
        @i_@135i_i_PeRlHaSh = (@i_@138i_4-1);
        $c0 when %ne[32](@i_@138i_4, 0) = sym@.Ljoin@l448;
        .Ljoin:l449:
        @i_@125i_hash = @i_@136i_hash_PeRlHaSh;
        @i_205:
        @i_@127i_oentry
            =
            (%shl[32](%and[32](@i_@125i_hash, bits32[(@i_@123i_xhv+8)]),
            2)+
                bits32[@i_@123i_xhv]);
        @i_@126i_entry = bits32[@i_@127i_oentry];
        @i_@124i_i = 1;
        $c0 = sym@@i_213;
        @i_213:
        $c0 when %ne[32](@i_@126i_entry, 0) = sym@.Ljoin@l422;
        .Ljoin:l423:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l422:
        $c0 = sym@@i_210;
        @i_210:
        $c0
            when
            %eq[32](bits32[bits32[(@i_@126i_entry+4)]], @i_@125i_hash)
            = sym@.Ljoin@l446;
        .Ljoin:l447:
        $c0 = sym@@i_211;
        .Ljoin:l446:
        $c0 = sym@@i_214;
        @i_214:
        @i_@140i_6 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@126i_entry+@i_@140i_6)]+
                @i_@140i_6)],
            @i_klen) = sym@.Ljoin@l444;
        .Ljoin:l445:
        $c0 = sym@@i_211;
        .Ljoin:l444:
        $c0 = sym@@i_216;
        @i_216:
        $r0, $r1, $r2 = (bits32[(@i_@126i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l443:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@141i_7 = $r0;
        $c0 when %eq[32](@i_@141i_7, 0) = sym@.Ljoin@l439;
        .Ljoin:l440:
        $c0 = sym@@i_211;
        @i_211:
        @i_@124i_i = 0;
        @i_@127i_oentry = @i_@126i_entry;
        @i_@126i_entry = bits32[@i_@127i_oentry];
        $c0 = sym@@i_213;
        .Ljoin:l439:
        $c0 = sym@@i_218;
        @i_218:
        bits32[@i_@127i_oentry] = bits32[@i_@126i_entry];
        $c0 when %eq[32](@i_@124i_i, 0) = sym@.Ljoin@l437;
        .Ljoin:l438:
        $c0 when %ne[32](bits32[@i_@127i_oentry], 0) = sym@.Ljoin@l435;
        .Ljoin:l436:
        @i_@142i_8 = (@i_@123i_xhv+4);
        bits32[@i_@142i_8] = (bits32[@i_@142i_8]-1);
        $c0 = sym@@i_220;
        .Ljoin:l435:
        $c0 = sym@@i_220;
        .Ljoin:l437:
        $c0 = sym@@i_220;
        @i_220:
        $c0 when %eq[32](%and[32](@i_flags, 2), 0) = sym@.Ljoin@l433;
        .Ljoin:l434:
        @i_@128i_sv = 0;
        $c0 = sym@@i_223;
        .Ljoin:l433:
        $c0 = sym@@i_222;
        @i_222:
        $r0 = bits32[(@i_@126i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_mortalcopy], ($c0+4);
        .Ljoin:l432:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@143i_9 = $r0;
        @i_@128i_sv = @i_@143i_9;
        $c0 = sym@@i_223;
        @i_223:
        $c0 when %ne[32](@i_@126i_entry, bits32[(@i_@123i_xhv+32)])
            = sym@.Ljoin@l428;
        .Ljoin:l429:
        @i_@144i_10 = (@i_hv+8);
        bits32[@i_@144i_10]
            = %or[32](bits32[@i_@144i_10], 0x40000000::bits32);
        $c0 = sym@@i_225;
        .Ljoin:l428:
        $c0 = sym@@i_224;
        @i_224:
        $r0, $r1 = @i_hv, @i_@126i_entry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        .Ljoin:l427:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_225;
        @i_225:
        @i_@145i_11 = (@i_@123i_xhv+12);
        bits32[@i_@145i_11] = (bits32[@i_@145i_11]-1);
        $r0 = @i_@128i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l448:
        $c0 = sym@@i_207;
        @i_207:
        @i_@137i_3 = @i_@134i_s_PeRlHaSh;
        @i_@134i_s_PeRlHaSh = (@i_@137i_3+1);
        @i_@136i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@136i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@137i_3]));
        $c0 = sym@@i_208;
    }
}

section "text"
{
    sym@_Perl_hv_delete_ent()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_keysv, @i_flags, @i_hash = $r0, $r1, $r2, $r3;
        $t1 = $r30;
        .Linitialize continuations:l489:
        .Lproc body start:l488:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l557;
        .Ljoin:l558:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l557:
        $c0 = sym@@i_227;
        @i_227:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l554;
        .Ljoin:l555:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+28)], bits32[($r31+32)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        .Ljoin:l553:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+28)]], 0)
            = sym@.Ljoin@l549;
        .Ljoin:l550:
        $r0, $r1, $r2, $r3 = @i_hv, @i_keysv, 1, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_hv_fetch_ent], ($c0+4);
        .Ljoin:l548:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@155i_1 = $r0;
        @i_@149i_entry = @i_@155i_1;
        $c0 when %eq[32](@i_@155i_1, 0) = sym@.Ljoin@l544;
        .Ljoin:l545:
        @i_@152i_sv = bits32[(@i_@149i_entry+8)];
        $r0 = @i_@152i_sv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        .Ljoin:l543:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[bits32[($r31+32)]], 0)
            = sym@.Ljoin@l539;
        .Ljoin:l540:
        $r0, $r1 = @i_@152i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l538:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@156i_2 = $r0;
        $c0 when %eq[32](@i_@156i_2, 0) = sym@.Ljoin@l534;
        .Ljoin:l535:
        $r0, $r1 = @i_@152i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_sv_unmagic], ($c0+4);
        .Ljoin:l533:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@152i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l534:
        $c0 = sym@@i_235;
        @i_235:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l539:
        $c0 = sym@@i_233;
        @i_233:
        $c0 = sym@@i_231;
        .Ljoin:l544:
        $c0 = sym@@i_231;
        .Ljoin:l549:
        $c0 = sym@@i_231;
        @i_231:
        $c0 = sym@@i_229;
        .Ljoin:l554:
        $c0 = sym@@i_229;
        @i_229:
        @i_@146i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@146i_xhv], 0) = sym@.Ljoin@l527;
        .Ljoin:l528:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l527:
        $c0 = sym@@i_237;
        @i_237:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@.Ljoin@l524;
        .Ljoin:l525:
        @i_@158i_3 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@158i_3]+4)];
        @i_@157i_239 = bits32[bits32[@i_@158i_3]];
        $c0 = sym@@i_241;
        .Ljoin:l524:
        $c0 = sym@@i_240;
        @i_240:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        .Ljoin:l523:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@159i_4 = $r0;
        @i_@157i_239 = @i_@159i_4;
        $c0 = sym@@i_241;
        @i_241:
        @i_@148i_key = @i_@157i_239;
        $c0 when %ne[32](@i_hash, 0) = sym@.Ljoin@l520;
        @i_244:
        @i_@160i_s_PeRlHaSh = @i_@148i_key;
        @i_@161i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@162i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_248;
        @i_248:
        @i_@164i_6 = @i_@161i_i_PeRlHaSh;
        @i_@161i_i_PeRlHaSh = (@i_@164i_6-1);
        $c0 when %ne[32](@i_@164i_6, 0) = sym@.Ljoin@l518;
        .Ljoin:l519:
        @i_hash = @i_@162i_hash_PeRlHaSh;
        @i_245:
        $c0 = sym@@i_242;
        .Ljoin:l518:
        $c0 = sym@@i_247;
        @i_247:
        @i_@163i_5 = @i_@160i_s_PeRlHaSh;
        @i_@160i_s_PeRlHaSh = (@i_@163i_5+1);
        @i_@162i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@162i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@163i_5]));
        $c0 = sym@@i_248;
        .Ljoin:l520:
        $c0 = sym@@i_242;
        @i_242:
        @i_@150i_oentry
            =
            (%shl[32](%and[32](@i_hash, bits32[(@i_@146i_xhv+8)]), 2)+
                bits32[@i_@146i_xhv]);
        @i_@149i_entry = bits32[@i_@150i_oentry];
        @i_@147i_i = 1;
        $c0 = sym@@i_253;
        @i_253:
        $c0 when %ne[32](@i_@149i_entry, 0) = sym@.Ljoin@l492;
        .Ljoin:l493:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l492:
        $c0 = sym@@i_250;
        @i_250:
        $c0 when %eq[32](bits32[bits32[(@i_@149i_entry+4)]], @i_hash)
            = sym@.Ljoin@l516;
        .Ljoin:l517:
        $c0 = sym@@i_251;
        .Ljoin:l516:
        $c0 = sym@@i_254;
        @i_254:
        @i_@166i_8 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@149i_entry+@i_@166i_8)]+
                @i_@166i_8)],
            bits32[bits32[($r31+24)]]) = sym@.Ljoin@l514;
        .Ljoin:l515:
        $c0 = sym@@i_251;
        .Ljoin:l514:
        $c0 = sym@@i_256;
        @i_256:
        $r0, $r1, $r2
            = (bits32[(@i_@149i_entry+4)]+8), @i_@148i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l513:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@167i_9 = $r0;
        $c0 when %eq[32](@i_@167i_9, 0) = sym@.Ljoin@l509;
        .Ljoin:l510:
        $c0 = sym@@i_251;
        @i_251:
        @i_@147i_i = 0;
        @i_@150i_oentry = @i_@149i_entry;
        @i_@149i_entry = bits32[@i_@150i_oentry];
        $c0 = sym@@i_253;
        .Ljoin:l509:
        $c0 = sym@@i_258;
        @i_258:
        bits32[@i_@150i_oentry] = bits32[@i_@149i_entry];
        $c0 when %eq[32](@i_@147i_i, 0) = sym@.Ljoin@l507;
        .Ljoin:l508:
        $c0 when %ne[32](bits32[@i_@150i_oentry], 0) = sym@.Ljoin@l505;
        .Ljoin:l506:
        @i_@168i_10 = (@i_@146i_xhv+4);
        bits32[@i_@168i_10] = (bits32[@i_@168i_10]-1);
        $c0 = sym@@i_260;
        .Ljoin:l505:
        $c0 = sym@@i_260;
        .Ljoin:l507:
        $c0 = sym@@i_260;
        @i_260:
        $c0 when %eq[32](%and[32](@i_flags, 2), 0) = sym@.Ljoin@l503;
        .Ljoin:l504:
        @i_@152i_sv = 0;
        $c0 = sym@@i_263;
        .Ljoin:l503:
        $c0 = sym@@i_262;
        @i_262:
        $r0 = bits32[(@i_@149i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_mortalcopy], ($c0+4);
        .Ljoin:l502:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@169i_11 = $r0;
        @i_@152i_sv = @i_@169i_11;
        $c0 = sym@@i_263;
        @i_263:
        $c0 when %ne[32](@i_@149i_entry, bits32[(@i_@146i_xhv+32)])
            = sym@.Ljoin@l498;
        .Ljoin:l499:
        @i_@170i_12 = (@i_hv+8);
        bits32[@i_@170i_12]
            = %or[32](bits32[@i_@170i_12], 0x40000000::bits32);
        $c0 = sym@@i_265;
        .Ljoin:l498:
        $c0 = sym@@i_264;
        @i_264:
        $r0, $r1 = @i_hv, @i_@149i_entry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        .Ljoin:l497:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_265;
        @i_265:
        @i_@171i_13 = (@i_@146i_xhv+12);
        bits32[@i_@171i_13] = (bits32[@i_@171i_13]-1);
        $r0 = @i_@152i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_exists()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_key, @i_klen = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l565:
        .Lproc body start:l564:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l630;
        .Ljoin:l631:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l630:
        $c0 = sym@@i_267;
        @i_267:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l627;
        .Ljoin:l628:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l626:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@176i_1 = $r0;
        $c0 when %eq[32](@i_@176i_1, 0) = sym@.Ljoin@l622;
        .Ljoin:l623:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        .Ljoin:l621:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@177i_2 = $r0;
        @i_@175i_sv = @i_@177i_2;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@175i_sv, @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l618:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0, $r1 = @i_@175i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l615:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@178i_3 = $r0;
        $r0, $r1 = @i_@175i_sv, @i_@178i_3;
        $c0, $r30 = bits32[sym@_Perl_magic_existspack], ($c0+4);
        .Ljoin:l612:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](@i_@175i_sv, 0) = sym@.Ljoin@l608;
        .Ljoin:l609:
        @i_@179i_279 = 0;
        $c0 = sym@@i_281;
        .Ljoin:l608:
        $c0 = sym@@i_280;
        @i_280:
        $c0 when %eq[32](%and[32](bits32[(@i_@175i_sv+8)], 262144), 0)
            = sym@.Ljoin@l606;
        .Ljoin:l607:
        @i_@186i_4 = bits32[sym@_PL_Xpv];
        @i_@187i_5 = bits32[@i_@175i_sv];
        bits32[@i_@186i_4] = @i_@187i_5;
        $c0 when %eq[32](@i_@187i_5, 0) = sym@.Ljoin@l604;
        .Ljoin:l605:
        @i_@188i_6 = bits32[@i_@186i_4];
        @i_@189i_7 = %sx[8,32](bits8[bits32[@i_@188i_6]]);
        @i_@190i_8 = 48;
        $c0 when %gt[32](@i_@189i_7, @i_@190i_8) = sym@.Ljoin@l602;
        .Ljoin:l603:
        @i_@191i_9 = bits32[(@i_@188i_6+4)];
        $c0 when %gtu[32](@i_@191i_9, 1) = sym@.Ljoin@l600;
        .Ljoin:l601:
        $c0 when %eq[32](@i_@191i_9, 0) = sym@.Ljoin@l598;
        .Ljoin:l599:
        $c0 when %eq[32](@i_@189i_7, @i_@190i_8) = sym@.Ljoin@l597;
        .Ljoin:l635:
        $c0 = sym@@i_287;
        .Ljoin:l597:
        $c0 = sym@@i_284;
        .Ljoin:l598:
        $c0 = sym@@i_284;
        .Ljoin:l600:
        $c0 = sym@@i_287;
        .Ljoin:l602:
        $c0 = sym@@i_287;
        @i_287:
        @i_@181i_273 = 1;
        $c0 = sym@@i_285;
        .Ljoin:l604:
        $c0 = sym@@i_284;
        @i_284:
        @i_@181i_273 = 0;
        $c0 = sym@@i_285;
        @i_285:
        @i_@180i_278 = @i_@181i_273;
        $c0 = sym@@i_283;
        .Ljoin:l606:
        $c0 = sym@@i_282;
        @i_282:
        $c0 when %eq[32](%and[32](bits32[(@i_@175i_sv+8)], 65536), 0)
            = sym@.Ljoin@l595;
        .Ljoin:l596:
        $c0 when %eq[32](bits32[(bits32[@i_@175i_sv]+12)], 0)
            = sym@.Ljoin@l593;
        .Ljoin:l594:
        @i_@183i_277 = 1;
        $c0 = sym@@i_291;
        .Ljoin:l593:
        $c0 = sym@@i_290;
        @i_290:
        @i_@183i_277 = 0;
        $c0 = sym@@i_291;
        @i_291:
        @i_@182i_276 = @i_@183i_277;
        $c0 = sym@@i_289;
        .Ljoin:l595:
        $c0 = sym@@i_288;
        @i_288:
        $c0 when %eq[32](%and[32](bits32[(@i_@175i_sv+8)], 131072), 0)
            = sym@.Ljoin@l591;
        .Ljoin:l592:
        $c0
            when
            %eq[2](%fcmp[32](bits32[(bits32[@i_@175i_sv]+16)],
            bits32[bits32[sym@@f_296]]),
            %float_eq[]()) = sym@.Ljoin@l589;
        .Ljoin:l590:
        @i_@185i_275 = 1;
        $c0 = sym@@i_295;
        .Ljoin:l589:
        $c0 = sym@@i_294;
        @i_294:
        @i_@185i_275 = 0;
        $c0 = sym@@i_295;
        @i_295:
        @i_@184i_274 = @i_@185i_275;
        $c0 = sym@@i_293;
        .Ljoin:l591:
        $c0 = sym@@i_292;
        @i_292:
        $r0 = @i_@175i_sv;
        $c0, $r30 = bits32[sym@_Perl_sv_2bool], ($c0+4);
        .Ljoin:l588:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@192i_10 = $r0;
        @i_@184i_274 = @i_@192i_10;
        $c0 = sym@@i_293;
        @i_293:
        @i_@182i_276 = @i_@184i_274;
        $c0 = sym@@i_289;
        @i_289:
        @i_@180i_278 = @i_@182i_276;
        $c0 = sym@@i_283;
        @i_283:
        @i_@179i_279 = @i_@180i_278;
        $c0 = sym@@i_281;
        @i_281:
        $r0 = @i_@179i_279;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l622:
        $c0 = sym@@i_271;
        @i_271:
        $c0 = sym@@i_269;
        .Ljoin:l627:
        $c0 = sym@@i_269;
        @i_269:
        @i_@172i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@172i_xhv], 0) = sym@.Ljoin@l583;
        .Ljoin:l584:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l583:
        $c0 = sym@@i_297;
        @i_297:
        @i_299:
        @i_@193i_s_PeRlHaSh = @i_key;
        @i_@194i_i_PeRlHaSh = @i_klen;
        @i_@195i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_303;
        @i_303:
        @i_@197i_12 = @i_@194i_i_PeRlHaSh;
        @i_@194i_i_PeRlHaSh = (@i_@197i_12-1);
        $c0 when %ne[32](@i_@197i_12, 0) = sym@.Ljoin@l580;
        .Ljoin:l581:
        @i_@173i_hash = @i_@195i_hash_PeRlHaSh;
        @i_300:
        @i_@174i_entry
            =
            bits32[(%shl[32](%and[32](@i_@173i_hash,
            bits32[(@i_@172i_xhv+8)]),
            2)+
                bits32[@i_@172i_xhv])];
        $c0 = sym@@i_308;
        @i_308:
        $c0 when %ne[32](@i_@174i_entry, 0) = sym@.Ljoin@l568;
        .Ljoin:l569:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l568:
        $c0 = sym@@i_305;
        @i_305:
        $c0
            when
            %eq[32](bits32[bits32[(@i_@174i_entry+4)]], @i_@173i_hash)
            = sym@.Ljoin@l578;
        .Ljoin:l579:
        $c0 = sym@@i_306;
        .Ljoin:l578:
        $c0 = sym@@i_309;
        @i_309:
        @i_@199i_14 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@174i_entry+@i_@199i_14)]+
                @i_@199i_14)],
            @i_klen) = sym@.Ljoin@l576;
        .Ljoin:l577:
        $c0 = sym@@i_306;
        .Ljoin:l576:
        $c0 = sym@@i_311;
        @i_311:
        $r0, $r1, $r2 = (bits32[(@i_@174i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l575:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@200i_15 = $r0;
        $c0 when %eq[32](@i_@200i_15, 0) = sym@.Ljoin@l571;
        .Ljoin:l572:
        $c0 = sym@@i_306;
        @i_306:
        @i_@174i_entry = bits32[@i_@174i_entry];
        $c0 = sym@@i_308;
        .Ljoin:l571:
        $c0 = sym@@i_313;
        @i_313:
        $r0 = 1;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l580:
        $c0 = sym@@i_302;
        @i_302:
        @i_@196i_11 = @i_@193i_s_PeRlHaSh;
        @i_@193i_s_PeRlHaSh = (@i_@196i_11+1);
        @i_@195i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@195i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@196i_11]));
        $c0 = sym@@i_303;
    }
}

section "text"
{
    sym@_Perl_hv_exists_ent()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_keysv, @i_hash = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l639:
        .Lproc body start:l638:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l716;
        .Ljoin:l717:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l716:
        $c0 = sym@@i_316;
        @i_316:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l713;
        .Ljoin:l714:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l712:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@206i_1 = $r0;
        $c0 when %eq[32](@i_@206i_1, 0) = sym@.Ljoin@l708;
        .Ljoin:l709:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        .Ljoin:l707:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@207i_2 = $r0;
        @i_@205i_sv = @i_@207i_2;
        $r0 = @i_keysv;
        $c0, $r30 = bits32[sym@_Perl_newSVsv], ($c0+4);
        .Ljoin:l704:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@208i_3 = $r0;
        $r0 = @i_@208i_3;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        .Ljoin:l701:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@209i_4 = $r0;
        @i_keysv = @i_@209i_4;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@205i_sv, @i_keysv, -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l698:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0, $r1 = @i_@205i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l695:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@210i_5 = $r0;
        $r0, $r1 = @i_@205i_sv, @i_@210i_5;
        $c0, $r30 = bits32[sym@_Perl_magic_existspack], ($c0+4);
        .Ljoin:l692:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](@i_@205i_sv, 0) = sym@.Ljoin@l688;
        .Ljoin:l689:
        @i_@211i_328 = 0;
        $c0 = sym@@i_330;
        .Ljoin:l688:
        $c0 = sym@@i_329;
        @i_329:
        $c0 when %eq[32](%and[32](bits32[(@i_@205i_sv+8)], 262144), 0)
            = sym@.Ljoin@l686;
        .Ljoin:l687:
        @i_@218i_6 = bits32[sym@_PL_Xpv];
        @i_@219i_7 = bits32[@i_@205i_sv];
        bits32[@i_@218i_6] = @i_@219i_7;
        $c0 when %eq[32](@i_@219i_7, 0) = sym@.Ljoin@l684;
        .Ljoin:l685:
        @i_@220i_8 = bits32[@i_@218i_6];
        @i_@221i_9 = %sx[8,32](bits8[bits32[@i_@220i_8]]);
        @i_@222i_10 = 48;
        $c0 when %gt[32](@i_@221i_9, @i_@222i_10) = sym@.Ljoin@l682;
        .Ljoin:l683:
        @i_@223i_11 = bits32[(@i_@220i_8+4)];
        $c0 when %gtu[32](@i_@223i_11, 1) = sym@.Ljoin@l680;
        .Ljoin:l681:
        $c0 when %eq[32](@i_@223i_11, 0) = sym@.Ljoin@l678;
        .Ljoin:l679:
        $c0 when %eq[32](@i_@221i_9, @i_@222i_10) = sym@.Ljoin@l677;
        .Ljoin:l721:
        $c0 = sym@@i_336;
        .Ljoin:l677:
        $c0 = sym@@i_333;
        .Ljoin:l678:
        $c0 = sym@@i_333;
        .Ljoin:l680:
        $c0 = sym@@i_336;
        .Ljoin:l682:
        $c0 = sym@@i_336;
        @i_336:
        @i_@213i_322 = 1;
        $c0 = sym@@i_334;
        .Ljoin:l684:
        $c0 = sym@@i_333;
        @i_333:
        @i_@213i_322 = 0;
        $c0 = sym@@i_334;
        @i_334:
        @i_@212i_327 = @i_@213i_322;
        $c0 = sym@@i_332;
        .Ljoin:l686:
        $c0 = sym@@i_331;
        @i_331:
        $c0 when %eq[32](%and[32](bits32[(@i_@205i_sv+8)], 65536), 0)
            = sym@.Ljoin@l675;
        .Ljoin:l676:
        $c0 when %eq[32](bits32[(bits32[@i_@205i_sv]+12)], 0)
            = sym@.Ljoin@l673;
        .Ljoin:l674:
        @i_@215i_326 = 1;
        $c0 = sym@@i_340;
        .Ljoin:l673:
        $c0 = sym@@i_339;
        @i_339:
        @i_@215i_326 = 0;
        $c0 = sym@@i_340;
        @i_340:
        @i_@214i_325 = @i_@215i_326;
        $c0 = sym@@i_338;
        .Ljoin:l675:
        $c0 = sym@@i_337;
        @i_337:
        $c0 when %eq[32](%and[32](bits32[(@i_@205i_sv+8)], 131072), 0)
            = sym@.Ljoin@l671;
        .Ljoin:l672:
        $c0
            when
            %eq[2](%fcmp[32](bits32[(bits32[@i_@205i_sv]+16)],
            bits32[bits32[sym@@f_296]]),
            %float_eq[]()) = sym@.Ljoin@l669;
        .Ljoin:l670:
        @i_@217i_324 = 1;
        $c0 = sym@@i_344;
        .Ljoin:l669:
        $c0 = sym@@i_343;
        @i_343:
        @i_@217i_324 = 0;
        $c0 = sym@@i_344;
        @i_344:
        @i_@216i_323 = @i_@217i_324;
        $c0 = sym@@i_342;
        .Ljoin:l671:
        $c0 = sym@@i_341;
        @i_341:
        $r0 = @i_@205i_sv;
        $c0, $r30 = bits32[sym@_Perl_sv_2bool], ($c0+4);
        .Ljoin:l668:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@224i_12 = $r0;
        @i_@216i_323 = @i_@224i_12;
        $c0 = sym@@i_342;
        @i_342:
        @i_@214i_325 = @i_@216i_323;
        $c0 = sym@@i_338;
        @i_338:
        @i_@212i_327 = @i_@214i_325;
        $c0 = sym@@i_332;
        @i_332:
        @i_@211i_328 = @i_@212i_327;
        $c0 = sym@@i_330;
        @i_330:
        $r0 = @i_@211i_328;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l708:
        $c0 = sym@@i_320;
        @i_320:
        $c0 = sym@@i_318;
        .Ljoin:l713:
        $c0 = sym@@i_318;
        @i_318:
        @i_@201i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@201i_xhv], 0) = sym@.Ljoin@l663;
        .Ljoin:l664:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l663:
        $c0 = sym@@i_345;
        @i_345:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@.Ljoin@l660;
        .Ljoin:l661:
        @i_@226i_13 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@226i_13]+4)];
        @i_@225i_347 = bits32[bits32[@i_@226i_13]];
        $c0 = sym@@i_349;
        .Ljoin:l660:
        $c0 = sym@@i_348;
        @i_348:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        .Ljoin:l659:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@227i_14 = $r0;
        @i_@225i_347 = @i_@227i_14;
        $c0 = sym@@i_349;
        @i_349:
        @i_@202i_key = @i_@225i_347;
        $c0 when %ne[32](@i_hash, 0) = sym@.Ljoin@l656;
        @i_352:
        @i_@228i_s_PeRlHaSh = @i_@202i_key;
        @i_@229i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@230i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_356;
        @i_356:
        @i_@232i_16 = @i_@229i_i_PeRlHaSh;
        @i_@229i_i_PeRlHaSh = (@i_@232i_16-1);
        $c0 when %ne[32](@i_@232i_16, 0) = sym@.Ljoin@l654;
        .Ljoin:l655:
        @i_hash = @i_@230i_hash_PeRlHaSh;
        @i_353:
        $c0 = sym@@i_350;
        .Ljoin:l654:
        $c0 = sym@@i_355;
        @i_355:
        @i_@231i_15 = @i_@228i_s_PeRlHaSh;
        @i_@228i_s_PeRlHaSh = (@i_@231i_15+1);
        @i_@230i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@230i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@231i_15]));
        $c0 = sym@@i_356;
        .Ljoin:l656:
        $c0 = sym@@i_350;
        @i_350:
        @i_@203i_entry
            =
            bits32[(%shl[32](%and[32](@i_hash,
            bits32[(@i_@201i_xhv+8)]),
            2)+
                bits32[@i_@201i_xhv])];
        $c0 = sym@@i_361;
        @i_361:
        $c0 when %ne[32](@i_@203i_entry, 0) = sym@.Ljoin@l642;
        .Ljoin:l643:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l642:
        $c0 = sym@@i_358;
        @i_358:
        $c0 when %eq[32](bits32[bits32[(@i_@203i_entry+4)]], @i_hash)
            = sym@.Ljoin@l652;
        .Ljoin:l653:
        $c0 = sym@@i_359;
        .Ljoin:l652:
        $c0 = sym@@i_362;
        @i_362:
        @i_@234i_18 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@203i_entry+@i_@234i_18)]+
                @i_@234i_18)],
            bits32[bits32[($r31+24)]]) = sym@.Ljoin@l650;
        .Ljoin:l651:
        $c0 = sym@@i_359;
        .Ljoin:l650:
        $c0 = sym@@i_364;
        @i_364:
        $r0, $r1, $r2
            = (bits32[(@i_@203i_entry+4)]+8), @i_@202i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l649:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@235i_19 = $r0;
        $c0 when %eq[32](@i_@235i_19, 0) = sym@.Ljoin@l645;
        .Ljoin:l646:
        $c0 = sym@@i_359;
        @i_359:
        @i_@203i_entry = bits32[@i_@203i_entry];
        $c0 = sym@@i_361;
        .Ljoin:l645:
        $c0 = sym@@i_366;
        @i_366:
        $r0 = 1;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@@i_hsplit()
    {
        $r31 = ($r31+-24);
        @i_hv = $r0;
        $t1 = $r30;
        .Linitialize continuations:l725:
        .Lproc body start:l724:
        @i_@236i_xhv = bits32[@i_hv];
        @i_@244i_oldsize = (bits32[(@i_@236i_xhv+8)]+1);
        @i_@237i_newsize = %shl[32](@i_@244i_oldsize, 1);
        @i_@239i_a = bits32[@i_@236i_xhv];
        @i_@245i_1 = 1;
        bits32[sym@_PL_nomemok] = @i_@245i_1;
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32](@i_@237i_newsize, 2), @i_@245i_1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l757:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@246i_2 = $r0;
        @i_@239i_a = @i_@246i_2;
        $c0 when %ne[32](@i_@239i_a, 0) = sym@.Ljoin@l753;
        .Ljoin:l754:
        bits32[sym@_PL_nomemok] = 0;
        $c0 = sym@@i_368;
        .Ljoin:l753:
        $c0 = sym@@i_369;
        @i_369:
        $r0, $r1, $r2
            = bits32[@i_@236i_xhv], @i_@239i_a,
            %mul[32](1, %shl[32](@i_@244i_oldsize, 2));
        $c0, $r30 = bits32[sym@_Perl_my_bcopy], ($c0+4);
        .Ljoin:l752:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %lt[32](@i_@244i_oldsize, 64) = sym@.Ljoin@l749;
        @i_373:
        $c0 when %ne[32](bits32[bits32[sym@_PL_nice_chunk]], 0)
            = sym@.Ljoin@l747;
        .Ljoin:l748:
        bits32[sym@_PL_nice_chunk] = bits32[@i_@236i_xhv];
        bits32[sym@_PL_nice_chunk_size]
            = (%shl[32](%shl[32](@i_@244i_oldsize, 2), 1)-16);
        $c0 = sym@@i_372;
        .Ljoin:l747:
        $c0 = sym@@i_376;
        @i_376:
        $r0 = bits32[@i_@236i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l746:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_372;
        .Ljoin:l749:
        $c0 = sym@@i_371;
        @i_371:
        $r0 = bits32[@i_@236i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l743:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_372;
        @i_372:
        @i_@247i_3 = 0;
        bits32[sym@_PL_nomemok] = @i_@247i_3;
        @i_@249i_5 = 2;
        $r0, $r1, $r2
            = (%shl[32](@i_@244i_oldsize, @i_@249i_5)+@i_@239i_a),
            @i_@247i_3,
            %mul[32](1,
            %shl[32]((@i_@237i_newsize-@i_@244i_oldsize), @i_@249i_5));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l740:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@250i_6 = (@i_@237i_newsize-1);
        @i_@237i_newsize = @i_@250i_6;
        bits32[(@i_@236i_xhv+8)] = @i_@250i_6;
        bits32[@i_@236i_xhv] = @i_@239i_a;
        @i_@240i_aep = @i_@239i_a;
        @i_@238i_i = 0;
        $c0 = sym@@i_381;
        @i_381:
        $c0 when %lt[32](@i_@238i_i, @i_@244i_oldsize)
            = sym@.Ljoin@l727;
        .Ljoin:l761:
        $c0 = sym@@i_368;
        @i_368:
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l727:
        $c0 = sym@@i_378;
        @i_378:
        $c0 when %ne[32](bits32[@i_@240i_aep], 0) = sym@.Ljoin@l736;
        .Ljoin:l737:
        $c0 = sym@@i_379;
        .Ljoin:l736:
        $c0 = sym@@i_382;
        @i_382:
        @i_@241i_bep = (%shl[32](@i_@244i_oldsize, 2)+@i_@240i_aep);
        @i_@243i_oentry = @i_@240i_aep;
        @i_@242i_entry = bits32[@i_@240i_aep];
        $c0 = sym@@i_387;
        @i_387:
        $c0 when %ne[32](@i_@242i_entry, 0) = sym@.Ljoin@l730;
        .Ljoin:l731:
        $c0 when %ne[32](bits32[@i_@240i_aep], 0) = sym@.Ljoin@l728;
        .Ljoin:l729:
        @i_@253i_9 = (@i_@236i_xhv+4);
        bits32[@i_@253i_9] = (bits32[@i_@253i_9]-1);
        $c0 = sym@@i_392;
        .Ljoin:l728:
        $c0 = sym@@i_392;
        @i_392:
        $c0 = sym@@i_379;
        @i_379:
        @i_@238i_i = (@i_@238i_i+1);
        @i_@240i_aep = (@i_@240i_aep+4);
        $c0 = sym@@i_381;
        .Ljoin:l730:
        $c0 = sym@@i_384;
        @i_384:
        $c0
            when
            %eq[32](%and[32](bits32[bits32[(@i_@242i_entry+4)]],
            @i_@237i_newsize),
            @i_@238i_i) = sym@.Ljoin@l734;
        .Ljoin:l735:
        bits32[@i_@243i_oentry] = bits32[@i_@242i_entry];
        bits32[@i_@242i_entry] = bits32[@i_@241i_bep];
        $c0 when %ne[32](bits32[@i_@241i_bep], 0) = sym@.Ljoin@l732;
        .Ljoin:l733:
        @i_@252i_8 = (@i_@236i_xhv+4);
        bits32[@i_@252i_8] = (bits32[@i_@252i_8]+1);
        $c0 = sym@@i_390;
        .Ljoin:l732:
        $c0 = sym@@i_390;
        @i_390:
        bits32[@i_@241i_bep] = @i_@242i_entry;
        $c0 = sym@@i_385;
        .Ljoin:l734:
        $c0 = sym@@i_388;
        @i_388:
        @i_@243i_oentry = @i_@242i_entry;
        $c0 = sym@@i_385;
        @i_385:
        @i_@242i_entry = bits32[@i_@243i_oentry];
        $c0 = sym@@i_387;
    }
}

section "text"
{
    sym@_Perl_hv_ksplit()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_newmax = $r0, $r1;
        $t1 = $r30;
        .Linitialize continuations:l765:
        .Lproc body start:l764:
        @i_@254i_xhv = bits32[@i_hv];
        @i_@262i_oldsize = (bits32[(@i_@254i_xhv+8)]+1);
        @i_@255i_newsize = @i_newmax;
        @i_@263i_1 = @i_newmax;
        $c0 when %ne[32](@i_@255i_newsize, @i_@263i_1)
            = sym@.Ljoin@l815;
        .Ljoin:l816:
        $c0 when %gt[32](@i_@263i_1, @i_@262i_oldsize)
            = sym@.Ljoin@l814;
        .Ljoin:l820:
        $c0 = sym@@i_397;
        .Ljoin:l814:
        $c0 = sym@@i_399;
        @i_399:
        $c0
            when
            %ne[32](%and[32](@i_@255i_newsize,
            (%com[32](@i_@255i_newsize)+1)),
            @i_@255i_newsize) = sym@.Ljoin@l812;
        .Ljoin:l813:
        $c0 when %ge[32](@i_@255i_newsize, @i_newmax) = sym@.Ljoin@l810;
        .Ljoin:l811:
        @i_@255i_newsize = %shl[32](@i_@255i_newsize, 1);
        $c0 = sym@@i_401;
        .Ljoin:l810:
        $c0 = sym@@i_401;
        @i_401:
        $c0 when %ge[32](@i_@255i_newsize, @i_newmax) = sym@.Ljoin@l808;
        .Ljoin:l809:
        $c0 = sym@@i_394;
        .Ljoin:l808:
        $c0 = sym@@i_403;
        @i_403:
        @i_@258i_a = bits32[@i_@254i_xhv];
        $c0 when %eq[32](@i_@258i_a, 0) = sym@.Ljoin@l806;
        .Ljoin:l807:
        @i_@266i_4 = 1;
        bits32[sym@_PL_nomemok] = @i_@266i_4;
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32](@i_@255i_newsize, 2), @i_@266i_4)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l805:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@267i_5 = $r0;
        @i_@258i_a = @i_@267i_5;
        $c0 when %ne[32](@i_@258i_a, 0) = sym@.Ljoin@l801;
        .Ljoin:l802:
        bits32[sym@_PL_nomemok] = 0;
        $c0 = sym@@i_394;
        .Ljoin:l801:
        $c0 = sym@@i_407;
        @i_407:
        $r0, $r1, $r2
            = bits32[@i_@254i_xhv], @i_@258i_a,
            %mul[32](1, %shl[32](@i_@262i_oldsize, 2));
        $c0, $r30 = bits32[sym@_Perl_my_bcopy], ($c0+4);
        .Ljoin:l800:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %lt[32](@i_@262i_oldsize, 64) = sym@.Ljoin@l797;
        @i_411:
        $c0 when %ne[32](bits32[bits32[sym@_PL_nice_chunk]], 0)
            = sym@.Ljoin@l795;
        .Ljoin:l796:
        bits32[sym@_PL_nice_chunk] = bits32[@i_@254i_xhv];
        bits32[sym@_PL_nice_chunk_size]
            = (%shl[32](%shl[32](@i_@262i_oldsize, 2), 1)-16);
        $c0 = sym@@i_410;
        .Ljoin:l795:
        $c0 = sym@@i_414;
        @i_414:
        $r0 = bits32[@i_@254i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l794:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_410;
        .Ljoin:l797:
        $c0 = sym@@i_409;
        @i_409:
        $r0 = bits32[@i_@254i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l791:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_410;
        @i_410:
        @i_@268i_6 = 0;
        bits32[sym@_PL_nomemok] = @i_@268i_6;
        @i_@270i_8 = 2;
        $r0, $r1, $r2
            = (%shl[32](@i_@262i_oldsize, @i_@270i_8)+@i_@258i_a),
            @i_@268i_6,
            %mul[32](1,
            %shl[32]((@i_@255i_newsize-@i_@262i_oldsize), @i_@270i_8));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l788:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_406;
        .Ljoin:l806:
        $c0 = sym@@i_405;
        @i_405:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32](@i_@255i_newsize, 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l785:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@271i_9 = $r0;
        @i_@258i_a = @i_@271i_9;
        $r0, $r1, $r2
            = @i_@258i_a, 0,
            %mul[32](1,
            (%shl[32](%shl[32](@i_@255i_newsize, 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l782:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_406;
        @i_406:
        @i_@272i_10 = (@i_@255i_newsize-1);
        @i_@255i_newsize = @i_@272i_10;
        bits32[(@i_@254i_xhv+8)] = @i_@272i_10;
        bits32[@i_@254i_xhv] = @i_@258i_a;
        $c0 when %ne[32](bits32[(@i_@254i_xhv+4)], 0) = sym@.Ljoin@l778;
        .Ljoin:l779:
        $c0 = sym@@i_394;
        .Ljoin:l778:
        $c0 = sym@@i_416;
        @i_416:
        @i_@259i_aep = @i_@258i_a;
        @i_@256i_i = 0;
        $c0 = sym@@i_421;
        @i_421:
        $c0 when %lt[32](@i_@256i_i, @i_@262i_oldsize)
            = sym@.Ljoin@l767;
        .Ljoin:l821:
        $c0 = sym@@i_394;
        .Ljoin:l767:
        $c0 = sym@@i_418;
        @i_418:
        $c0 when %ne[32](bits32[@i_@259i_aep], 0) = sym@.Ljoin@l776;
        .Ljoin:l777:
        $c0 = sym@@i_419;
        .Ljoin:l776:
        $c0 = sym@@i_422;
        @i_422:
        @i_@261i_oentry = @i_@259i_aep;
        @i_@260i_entry = bits32[@i_@259i_aep];
        $c0 = sym@@i_427;
        @i_427:
        $c0 when %ne[32](@i_@260i_entry, 0) = sym@.Ljoin@l770;
        .Ljoin:l771:
        $c0 when %ne[32](bits32[@i_@259i_aep], 0) = sym@.Ljoin@l768;
        .Ljoin:l769:
        @i_@277i_15 = (@i_@254i_xhv+4);
        bits32[@i_@277i_15] = (bits32[@i_@277i_15]-1);
        $c0 = sym@@i_432;
        .Ljoin:l768:
        $c0 = sym@@i_432;
        @i_432:
        $c0 = sym@@i_419;
        @i_419:
        @i_@256i_i = (@i_@256i_i+1);
        @i_@259i_aep = (@i_@259i_aep+4);
        $c0 = sym@@i_421;
        .Ljoin:l770:
        $c0 = sym@@i_424;
        @i_424:
        @i_@274i_12
            =
            %and[32](bits32[bits32[(@i_@260i_entry+4)]],
            @i_@255i_newsize);
        @i_@257i_j = @i_@274i_12;
        $c0 when %eq[32](@i_@274i_12, @i_@256i_i) = sym@.Ljoin@l774;
        .Ljoin:l775:
        @i_@257i_j = (@i_@257i_j-@i_@256i_i);
        bits32[@i_@261i_oentry] = bits32[@i_@260i_entry];
        @i_@275i_13 = bits32[(%shl[32](@i_@257i_j, 2)+@i_@259i_aep)];
        bits32[@i_@260i_entry] = @i_@275i_13;
        $c0 when %ne[32](@i_@275i_13, 0) = sym@.Ljoin@l772;
        .Ljoin:l773:
        @i_@276i_14 = (@i_@254i_xhv+4);
        bits32[@i_@276i_14] = (bits32[@i_@276i_14]+1);
        $c0 = sym@@i_430;
        .Ljoin:l772:
        $c0 = sym@@i_430;
        @i_430:
        bits32[(%shl[32](@i_@257i_j, 2)+@i_@259i_aep)] = @i_@260i_entry;
        $c0 = sym@@i_425;
        .Ljoin:l774:
        $c0 = sym@@i_428;
        @i_428:
        @i_@261i_oentry = @i_@260i_entry;
        $c0 = sym@@i_425;
        @i_425:
        @i_@260i_entry = bits32[@i_@261i_oentry];
        $c0 = sym@@i_427;
        .Ljoin:l812:
        $c0 = sym@@i_398;
        @i_398:
        @i_@255i_newsize
            =
            %and[32](@i_@255i_newsize,
            %com[32](%and[32](@i_@255i_newsize,
            (%com[32](@i_@255i_newsize)+1))));
        $c0 = sym@@i_399;
        .Ljoin:l815:
        $c0 = sym@@i_397;
        @i_397:
        $c0 = sym@@i_394;
        @i_394:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_newHV()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        .Linitialize continuations:l825:
        .Lproc body start:l824:
        $r0 = 0;
        $c0, $r30 = bits32[sym@_Perl_newSV], ($c0+4);
        .Ljoin:l836:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@280i_1 = $r0;
        @i_@278i_hv = @i_@280i_1;
        $r0, $r1 = @i_@278i_hv, 11;
        $c0, $r30 = bits32[sym@_Perl_sv_upgrade], ($c0+4);
        .Ljoin:l833:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@279i_xhv = bits32[@i_@278i_hv];
        @i_@282i_3 = (@i_@278i_hv+8);
        bits32[@i_@282i_3] = %and[32](bits32[@i_@282i_3], -67371009);
        @i_@283i_4 = (@i_@278i_hv+8);
        bits32[@i_@283i_4] = %and[32](bits32[@i_@283i_4], -33685505);
        @i_@284i_5 = (@i_@278i_hv+8);
        bits32[@i_@284i_5] = %or[32](bits32[@i_@284i_5], 536870912);
        bits32[(@i_@279i_xhv+8)] = 7;
        bits32[(@i_@279i_xhv+4)] = 0;
        bits32[(@i_@279i_xhv+36)] = 0;
        $r0 = @i_@278i_hv;
        $c0, $r30 = bits32[sym@_Perl_hv_iterinit], ($c0+4);
        .Ljoin:l830:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@278i_hv;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_newHVhv()
    {
        $r31 = ($r31+-24);
        @i_ohv = $r0;
        $t1 = $r30;
        .Linitialize continuations:l843:
        .Lproc body start:l842:
        $c0 when %eq[32](@i_ohv, 0) = sym@.Ljoin@l870;
        .Ljoin:l871:
        @i_@288i_436 = bits32[(bits32[@i_ohv]+8)];
        $c0 = sym@@i_438;
        .Ljoin:l870:
        $c0 = sym@@i_437;
        @i_437:
        @i_@288i_436 = 0;
        $c0 = sym@@i_438;
        @i_438:
        @i_@286i_hv_max = @i_@288i_436;
        $c0 when %eq[32](@i_ohv, 0) = sym@.Ljoin@l868;
        .Ljoin:l869:
        @i_@289i_439 = bits32[(bits32[@i_ohv]+4)];
        $c0 = sym@@i_441;
        .Ljoin:l868:
        $c0 = sym@@i_440;
        @i_440:
        @i_@289i_439 = 0;
        $c0 = sym@@i_441;
        @i_441:
        @i_@287i_hv_fill = @i_@289i_439;
        $c0, $r30 = bits32[sym@_Perl_newHV], ($c0+4);
        .Ljoin:l867:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@290i_1 = $r0;
        @i_@285i_hv = @i_@290i_1;
        $c0 = sym@@i_443;
        @i_443:
        $c0 when %eq[32](@i_@286i_hv_max, 0) = sym@.Ljoin@l863;
        .Ljoin:l864:
        $c0
            when
            %geu[32]((@i_@286i_hv_max+1), %shl[32](@i_@287i_hv_fill, 1))
            = sym@.Ljoin@l862;
        .Ljoin:l875:
        $c0 = sym@@i_445;
        .Ljoin:l862:
        $c0 = sym@@i_442;
        @i_442:
        @i_@286i_hv_max = %shrl[32](@i_@286i_hv_max, 1);
        $c0 = sym@@i_443;
        .Ljoin:l863:
        $c0 = sym@@i_445;
        @i_445:
        bits32[(bits32[@i_@285i_hv]+8)] = @i_@286i_hv_max;
        $c0 when %ne[32](@i_@287i_hv_fill, 0) = sym@.Ljoin@l860;
        .Ljoin:l861:
        $r0 = @i_@285i_hv;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l860:
        $c0 = sym@@i_446;
        @i_446:
        @i_@293i_hv_riter = bits32[(bits32[@i_ohv]+28)];
        @i_@294i_hv_eiter = bits32[(bits32[@i_ohv]+32)];
        $r0 = @i_ohv;
        $c0, $r30 = bits32[sym@_Perl_hv_iterinit], ($c0+4);
        .Ljoin:l858:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_449;
        @i_449:
        $r0 = @i_ohv;
        $c0, $r30 = bits32[sym@_Perl_hv_iternext], ($c0+4);
        .Ljoin:l850:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@301i_9 = $r0;
        @i_@292i_entry = @i_@301i_9;
        $c0 when %ne[32](@i_@301i_9, 0) = sym@.Ljoin@l846;
        .Ljoin:l847:
        bits32[(bits32[@i_ohv]+28)] = @i_@293i_hv_riter;
        bits32[(bits32[@i_ohv]+32)] = @i_@294i_hv_eiter;
        $r0 = @i_@285i_hv;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l846:
        $c0 = sym@@i_448;
        @i_448:
        @i_@296i_4 = 4;
        @i_@297i_5 = bits32[(@i_@292i_entry+@i_@296i_4)];
        @i_@298i_6 = 8;
        bits32[sym@_PL_Sv] = bits32[(@i_@292i_entry+@i_@298i_6)];
        @i_@299i_7 = bits32[bits32[sym@_PL_Sv]];
        $c0 when %eq[32](@i_@299i_7, 0) = sym@.Ljoin@l854;
        .Ljoin:l855:
        @i_@300i_8 = (@i_@299i_7+4);
        bits32[@i_@300i_8] = (bits32[@i_@300i_8]+1);
        $c0 = sym@@i_452;
        .Ljoin:l854:
        $c0 = sym@@i_452;
        @i_452:
        $r0, $r1, $r2, $r3, $r4
            = @i_@285i_hv, (@i_@297i_5+@i_@298i_6),
            bits32[(@i_@297i_5+@i_@296i_4)], bits32[bits32[sym@_PL_Sv]],
            bits32[bits32[(@i_@292i_entry+4)]];
        $c0, $r30 = bits32[sym@_Perl_hv_store], ($c0+4);
        .Ljoin:l853:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_449;
    }
}

section "text"
{
    sym@_Perl_hv_free_ent()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_entry = $r0, $r1;
        $t1 = $r30;
        .Linitialize continuations:l879:
        .Lproc body start:l878:
        $c0 when %ne[32](@i_entry, 0) = sym@.Ljoin@l913;
        .Ljoin:l914:
        $c0 = sym@@i_453;
        .Ljoin:l913:
        $c0 = sym@@i_454;
        @i_454:
        @i_@302i_val = bits32[(@i_entry+8)];
        $c0 when %eq[32](@i_@302i_val, 0) = sym@.Ljoin@l911;
        .Ljoin:l912:
        $c0 when %ne[32](%and[32](bits32[(@i_@302i_val+8)], 255), 13)
            = sym@.Ljoin@l909;
        .Ljoin:l910:
        $c0
            when
            %eq[32](bits32[(bits32[(bits32[@i_@302i_val]+28)]+32)], 0)
            = sym@.Ljoin@l907;
        .Ljoin:l908:
        @i_@303i_458 = 0;
        $c0 = sym@@i_460;
        .Ljoin:l907:
        $c0 = sym@@i_459;
        @i_459:
        @i_@305i_2 = 28;
        @i_@303i_458
            =
            bits32[(bits32[(bits32[@i_@302i_val]+@i_@305i_2)]+
                @i_@305i_2)];
        $c0 = sym@@i_460;
        @i_460:
        @i_@306i_3 = 0;
        $c0 when %eq[32](@i_@303i_458, @i_@306i_3) = sym@.Ljoin@l905;
        .Ljoin:l906:
        $c0 when %eq[32](bits32[(bits32[@i_hv]+40)], @i_@306i_3)
            = sym@.Ljoin@l903;
        .Ljoin:l904:
        @i_@307i_4 = bits32[sym@_PL_sub_generation];
        bits32[@i_@307i_4] = (bits32[@i_@307i_4]+1);
        $c0 = sym@@i_456;
        .Ljoin:l903:
        $c0 = sym@@i_456;
        .Ljoin:l905:
        $c0 = sym@@i_456;
        .Ljoin:l909:
        $c0 = sym@@i_456;
        .Ljoin:l911:
        $c0 = sym@@i_456;
        @i_456:
        $r0 = @i_@302i_val;
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        .Ljoin:l902:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@308i_5 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@308i_5)]+@i_@308i_5)],
            -2) = sym@.Ljoin@l898;
        .Ljoin:l899:
        $r0 = bits32[(bits32[(@i_entry+4)]+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        .Ljoin:l897:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l894:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_462;
        .Ljoin:l898:
        $c0 = sym@@i_461;
        @i_461:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@.Ljoin@l890;
        .Ljoin:l891:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_unshare_hek], ($c0+4);
        .Ljoin:l889:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_464;
        .Ljoin:l890:
        $c0 = sym@@i_463;
        @i_463:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l886:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_464;
        @i_464:
        $c0 = sym@@i_462;
        @i_462:
        $r0 = @i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        .Ljoin:l883:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_453;
        @i_453:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_delayfree_ent()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_entry = $r0, $r1;
        $t1 = $r30;
        .Linitialize continuations:l921:
        .Lproc body start:l920:
        $c0 when %ne[32](@i_entry, 0) = sym@.Ljoin@l953;
        .Ljoin:l954:
        $c0 = sym@@i_465;
        .Ljoin:l953:
        $c0 = sym@@i_466;
        @i_466:
        @i_@310i_1 = 8;
        @i_@311i_2 = bits32[(@i_entry+@i_@310i_1)];
        $c0
            when
            %ne[32](%and[32](bits32[(@i_@311i_2+@i_@310i_1)], 255), 13)
            = sym@.Ljoin@l951;
        .Ljoin:l952:
        $c0
            when
            %eq[32](bits32[(bits32[(bits32[@i_@311i_2]+28)]+32)], 0)
            = sym@.Ljoin@l949;
        .Ljoin:l950:
        @i_@309i_470 = 0;
        $c0 = sym@@i_472;
        .Ljoin:l949:
        $c0 = sym@@i_471;
        @i_471:
        @i_@312i_3 = 28;
        @i_@309i_470
            =
            bits32[(bits32[(bits32[bits32[(@i_entry+8)]]+@i_@312i_3)]+
                @i_@312i_3)];
        $c0 = sym@@i_472;
        @i_472:
        @i_@313i_4 = 0;
        $c0 when %eq[32](@i_@309i_470, @i_@313i_4) = sym@.Ljoin@l947;
        .Ljoin:l948:
        $c0 when %eq[32](bits32[(bits32[@i_hv]+40)], @i_@313i_4)
            = sym@.Ljoin@l945;
        .Ljoin:l946:
        @i_@314i_5 = bits32[sym@_PL_sub_generation];
        bits32[@i_@314i_5] = (bits32[@i_@314i_5]+1);
        $c0 = sym@@i_468;
        .Ljoin:l945:
        $c0 = sym@@i_468;
        .Ljoin:l947:
        $c0 = sym@@i_468;
        .Ljoin:l951:
        $c0 = sym@@i_468;
        @i_468:
        $r0 = bits32[(@i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        .Ljoin:l944:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@315i_6 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@315i_6)]+@i_@315i_6)],
            -2) = sym@.Ljoin@l940;
        .Ljoin:l941:
        $r0 = bits32[(bits32[(@i_entry+4)]+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        .Ljoin:l939:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l936:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_474;
        .Ljoin:l940:
        $c0 = sym@@i_473;
        @i_473:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@.Ljoin@l932;
        .Ljoin:l933:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_unshare_hek], ($c0+4);
        .Ljoin:l931:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_476;
        .Ljoin:l932:
        $c0 = sym@@i_475;
        @i_475:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l928:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_476;
        @i_476:
        $c0 = sym@@i_474;
        @i_474:
        $r0 = @i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        .Ljoin:l925:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_465;
        @i_465:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_clear()
    {
        $r31 = ($r31+-24);
        @i_hv = $r0;
        $t1 = $r30;
        .Linitialize continuations:l961:
        .Lproc body start:l960:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l976;
        .Ljoin:l977:
        $c0 = sym@@i_477;
        .Ljoin:l976:
        $c0 = sym@@i_478;
        @i_478:
        @i_@317i_1 = @i_hv;
        @i_@316i_xhv = bits32[@i_@317i_1];
        $r0 = @i_@317i_1;
        $c0, $r30 = bits32[sym@@i_hfreeentries], ($c0+4);
        .Ljoin:l975:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(@i_@316i_xhv+4)] = 0;
        bits32[(@i_@316i_xhv+12)] = 0;
        $c0 when %eq[32](bits32[@i_@316i_xhv], 0) = sym@.Ljoin@l971;
        .Ljoin:l972:
        $r0, $r1, $r2
            = bits32[@i_@316i_xhv], 0,
            %shl[32]((bits32[(@i_@316i_xhv+8)]+1), 2);
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l970:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_480;
        .Ljoin:l971:
        $c0 = sym@@i_480;
        @i_480:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l966;
        .Ljoin:l967:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        .Ljoin:l965:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_482;
        .Ljoin:l966:
        $c0 = sym@@i_482;
        @i_482:
        $c0 = sym@@i_477;
        @i_477:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@@i_hfreeentries()
    {
        $r31 = ($r31+-24);
        @i_hv = $r0;
        $t1 = $r30;
        .Linitialize continuations:l984:
        .Lproc body start:l983:
        @i_@321i_oentry = 0;
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l1000;
        .Ljoin:l1001:
        $c0 = sym@@i_484;
        .Ljoin:l1000:
        $c0 = sym@@i_485;
        @i_485:
        $c0 when %ne[32](bits32[bits32[@i_hv]], 0) = sym@.Ljoin@l998;
        .Ljoin:l999:
        $c0 = sym@@i_484;
        .Ljoin:l998:
        $c0 = sym@@i_487;
        @i_487:
        @i_@322i_riter = 0;
        @i_@324i_1 = @i_hv;
        @i_@323i_max = bits32[(bits32[@i_@324i_1]+8)];
        @i_@319i_array = bits32[bits32[@i_@324i_1]];
        @i_@320i_entry = bits32[@i_@319i_array];
        $c0 = sym@@i_489;
        @i_489:
        $c0 when %eq[32](@i_@320i_entry, 0) = sym@.Ljoin@l996;
        .Ljoin:l997:
        @i_@321i_oentry = @i_@320i_entry;
        @i_@320i_entry = bits32[@i_@320i_entry];
        $r0, $r1 = @i_hv, @i_@321i_oentry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        .Ljoin:l995:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_493;
        .Ljoin:l996:
        $c0 = sym@@i_493;
        @i_493:
        $c0 when %ne[32](@i_@320i_entry, 0) = sym@.Ljoin@l991;
        .Ljoin:l992:
        @i_@326i_3 = (@i_@322i_riter+1);
        @i_@322i_riter = @i_@326i_3;
        $c0 when %le[32](@i_@326i_3, @i_@323i_max) = sym@.Ljoin@l989;
        .Ljoin:l990:
        $c0 = sym@@i_491;
        @i_491:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_hv_iterinit], ($c0+4);
        .Ljoin:l988:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_484;
        @i_484:
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l989:
        $c0 = sym@@i_497;
        @i_497:
        @i_@320i_entry
            = bits32[(%shl[32](@i_@322i_riter, 2)+@i_@319i_array)];
        $c0 = sym@@i_489;
        .Ljoin:l991:
        $c0 = sym@@i_489;
    }
}

section "text"
{
    sym@_Perl_hv_undef()
    {
        $r31 = ($r31+-24);
        @i_hv = $r0;
        $t1 = $r30;
        .Linitialize continuations:l1008:
        .Lproc body start:l1007:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l1026;
        .Ljoin:l1027:
        $c0 = sym@@i_499;
        .Ljoin:l1026:
        $c0 = sym@@i_500;
        @i_500:
        @i_@328i_1 = @i_hv;
        @i_@327i_xhv = bits32[@i_@328i_1];
        $r0 = @i_@328i_1;
        $c0, $r30 = bits32[sym@@i_hfreeentries], ($c0+4);
        .Ljoin:l1025:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = bits32[@i_@327i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l1022:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[(bits32[@i_hv]+40)], 0)
            = sym@.Ljoin@l1018;
        .Ljoin:l1019:
        $r0 = bits32[(bits32[@i_hv]+40)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l1017:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(bits32[@i_hv]+40)] = 0;
        $c0 = sym@@i_502;
        .Ljoin:l1018:
        $c0 = sym@@i_502;
        @i_502:
        bits32[@i_@327i_xhv] = 0;
        bits32[(@i_@327i_xhv+8)] = 7;
        bits32[(@i_@327i_xhv+4)] = 0;
        bits32[(@i_@327i_xhv+12)] = 0;
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l1013;
        .Ljoin:l1014:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        .Ljoin:l1012:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_504;
        .Ljoin:l1013:
        $c0 = sym@@i_504;
        @i_504:
        $c0 = sym@@i_499;
        @i_499:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_iterinit()
    {
        $r31 = ($r31+-24);
        @i_hv = $r0;
        $t1 = $r30;
        .Linitialize continuations:l1034:
        .Lproc body start:l1033:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l1047;
        .Ljoin:l1048:
        $r0 = bits32[sym@@i_509];
        $c0, $r30 = bits32[sym@_Perl_croak], ($c0+4);
        .Ljoin:l1046:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_507;
        .Ljoin:l1047:
        $c0 = sym@@i_507;
        @i_507:
        @i_@329i_xhv = bits32[@i_hv];
        @i_@330i_entry = bits32[(@i_@329i_xhv+32)];
        $c0 when %eq[32](@i_@330i_entry, 0) = sym@.Ljoin@l1042;
        .Ljoin:l1043:
        $c0
            when
            %eq[32](%and[32](bits32[(@i_hv+8)], 0x40000000::bits32), 0)
            = sym@.Ljoin@l1040;
        .Ljoin:l1041:
        @i_@331i_1 = (@i_hv+8);
        bits32[@i_@331i_1]
            = %and[32](bits32[@i_@331i_1], 0xffffffffbfffffff::bits32);
        $r0, $r1 = @i_hv, @i_@330i_entry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        .Ljoin:l1039:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_510;
        .Ljoin:l1040:
        $c0 = sym@@i_510;
        .Ljoin:l1042:
        $c0 = sym@@i_510;
        @i_510:
        bits32[(@i_@329i_xhv+28)] = -1;
        bits32[(@i_@329i_xhv+32)] = 0;
        $r0 = bits32[(@i_@329i_xhv+12)];
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_iternext()
    {
        $r31 = ($r31+-24);
        @i_hv = $r0;
        $t1 = $r30;
        .Linitialize continuations:l1055:
        .Lproc body start:l1054:
        $c0 when %ne[32](@i_hv, 0) = sym@.Ljoin@l1145;
        .Ljoin:l1146:
        $r0 = bits32[sym@@i_509];
        $c0, $r30 = bits32[sym@_Perl_croak], ($c0+4);
        .Ljoin:l1144:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_513;
        .Ljoin:l1145:
        $c0 = sym@@i_513;
        @i_513:
        @i_@337i_1 = @i_hv;
        @i_@332i_xhv = bits32[@i_@337i_1];
        @i_@338i_2 = bits32[(@i_@332i_xhv+32)];
        @i_@333i_entry = @i_@338i_2;
        @i_@334i_oldentry = @i_@338i_2;
        $c0 when %eq[32](%and[32](bits32[(@i_@337i_1+8)], 32768), 0)
            = sym@.Ljoin@l1140;
        .Ljoin:l1141:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l1139:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@339i_3 = $r0;
        @i_@336i_517 = @i_@339i_3;
        $c0 = sym@@i_519;
        .Ljoin:l1140:
        $c0 = sym@@i_518;
        @i_518:
        @i_@336i_517 = 0;
        $c0 = sym@@i_519;
        @i_519:
        @i_@335i_mg = @i_@336i_517;
        $c0 when %eq[32](@i_@336i_517, 0) = sym@.Ljoin@l1135;
        .Ljoin:l1136:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        .Ljoin:l1134:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@342i_5 = $r0;
        @i_@341i_key = @i_@342i_5;
        $c0 when %eq[32](@i_@333i_entry, 0) = sym@.Ljoin@l1130;
        .Ljoin:l1131:
        $c0 when %eq[32]((bits32[(@i_@333i_entry+4)]+8), 0)
            = sym@.Ljoin@l1128;
        .Ljoin:l1129:
        @i_@345i_6 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_@333i_entry+@i_@345i_6)]+
                @i_@345i_6)],
            -2) = sym@.Ljoin@l1126;
        .Ljoin:l1127:
        @i_@344i_522 = bits32[(bits32[(@i_@333i_entry+4)]+8)];
        $c0 = sym@@i_527;
        .Ljoin:l1126:
        $c0 = sym@@i_526;
        @i_526:
        @i_@346i_7 = 4;
        @i_@347i_8 = bits32[(@i_@333i_entry+@i_@346i_7)];
        $r0, $r1 = (@i_@347i_8+8), bits32[(@i_@347i_8+@i_@346i_7)];
        $c0, $r30 = bits32[sym@_Perl_newSVpv], ($c0+4);
        .Ljoin:l1125:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@348i_9 = $r0;
        $r0 = @i_@348i_9;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        .Ljoin:l1122:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@349i_10 = $r0;
        @i_@344i_522 = @i_@349i_10;
        $c0 = sym@@i_527;
        @i_527:
        @i_@343i_523 = @i_@344i_522;
        $c0 = sym@@i_525;
        .Ljoin:l1128:
        $c0 = sym@@i_524;
        @i_524:
        @i_@343i_523 = bits32[sym@_PL_sv_undef];
        $c0 = sym@@i_525;
        @i_525:
        $r0, $r1 = @i_@341i_key, @i_@343i_523;
        $c0, $r30 = bits32[sym@_Perl_sv_setsv], ($c0+4);
        .Ljoin:l1119:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@351i_11 = 4;
        @i_@352i_12 = bits32[(@i_@333i_entry+@i_@351i_11)];
        $c0 when %eq[32]((@i_@352i_12+8), 0) = sym@.Ljoin@l1115;
        .Ljoin:l1116:
        $c0 when %ne[32](bits32[(@i_@352i_12+@i_@351i_11)], -2)
            = sym@.Ljoin@l1113;
        .Ljoin:l1114:
        @i_@350i_528 = bits32[(bits32[(@i_@333i_entry+4)]+8)];
        $c0 = sym@@i_530;
        .Ljoin:l1113:
        $c0 = sym@@i_529;
        .Ljoin:l1115:
        $c0 = sym@@i_529;
        @i_529:
        @i_@350i_528 = 0;
        $c0 = sym@@i_530;
        @i_530:
        $r0 = @i_@350i_528;
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        .Ljoin:l1112:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_521;
        .Ljoin:l1130:
        $c0 = sym@@i_520;
        @i_520:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        .Ljoin:l1109:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@355i_13 = $r0;
        @i_@333i_entry = @i_@355i_13;
        bits32[(@i_@332i_xhv+32)] = @i_@355i_13;
        $r0, $r1, $r2 = @i_@333i_entry, 0, 12;
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l1106:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 12;
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l1103:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@356i_14 = $r0;
        @i_@353i_k = @i_@356i_14;
        $r0, $r1, $r2 = @i_@353i_k, 0, 12;
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l1100:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@354i_hek = @i_@353i_k;
        bits32[(@i_@333i_entry+4)] = @i_@354i_hek;
        @i_@357i_15 = 4;
        bits32[(bits32[(@i_@333i_entry+@i_@357i_15)]+@i_@357i_15)] = -2;
        $c0 = sym@@i_521;
        @i_521:
        $r0, $r1, $r2 = @i_hv, @i_@335i_mg, @i_@341i_key;
        $c0, $r30 = bits32[sym@_Perl_magic_nextpack], ($c0+4);
        .Ljoin:l1097:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0
            when
            %eq[32](%and[32](bits32[(@i_@341i_key+8)], 118423552), 0)
            = sym@.Ljoin@l1093;
        .Ljoin:l1094:
        @i_@358i_16 = 4;
        bits32[(bits32[(@i_@333i_entry+@i_@358i_16)]+@i_@358i_16)] = -2;
        bits32[sym@_PL_Sv] = @i_@341i_key;
        @i_@359i_17 = bits32[bits32[sym@_PL_Sv]];
        $c0 when %eq[32](@i_@359i_17, 0) = sym@.Ljoin@l1091;
        .Ljoin:l1092:
        @i_@360i_18 = (@i_@359i_17+4);
        bits32[@i_@360i_18] = (bits32[@i_@360i_18]+1);
        $c0 = sym@@i_534;
        .Ljoin:l1091:
        $c0 = sym@@i_534;
        @i_534:
        bits32[(bits32[(@i_@333i_entry+4)]+8)]
            = bits32[bits32[sym@_PL_Sv]];
        $r0 = @i_@333i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l1093:
        $c0 = sym@@i_531;
        @i_531:
        $c0 when %eq[32](bits32[(@i_@333i_entry+8)], 0)
            = sym@.Ljoin@l1088;
        .Ljoin:l1089:
        $r0 = bits32[(@i_@333i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        .Ljoin:l1087:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_535;
        .Ljoin:l1088:
        $c0 = sym@@i_535;
        @i_535:
        $r0 = bits32[(@i_@333i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l1084:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@333i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        .Ljoin:l1081:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(@i_@332i_xhv+32)] = 0;
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l1135:
        $c0 = sym@@i_515;
        @i_515:
        $c0 when %ne[32](bits32[@i_@332i_xhv], 0) = sym@.Ljoin@l1076;
        .Ljoin:l1077:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@332i_xhv+8)]+1), 2), 1)-
                16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        .Ljoin:l1075:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@362i_20 = $r0;
        bits32[@i_@332i_xhv] = @i_@362i_20;
        $r0, $r1, $r2
            = bits32[@i_@332i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@332i_xhv+8)]+1), 2), 1)-
                16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        .Ljoin:l1072:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_537;
        .Ljoin:l1076:
        $c0 = sym@@i_537;
        @i_537:
        $c0 when %eq[32](@i_@333i_entry, 0) = sym@.Ljoin@l1068;
        .Ljoin:l1069:
        @i_@333i_entry = bits32[@i_@333i_entry];
        $c0 = sym@@i_542;
        .Ljoin:l1068:
        $c0 = sym@@i_542;
        @i_542:
        $c0 when %eq[32](@i_@333i_entry, 0) = sym@.Ljoin@l1065;
        .Ljoin:l1150:
        $c0 = sym@@i_543;
        .Ljoin:l1065:
        $c0 = sym@@i_541;
        @i_541:
        @i_@364i_22 = (@i_@332i_xhv+28);
        bits32[@i_@364i_22] = (bits32[@i_@364i_22]+1);
        $c0
            when
            %leu[32](bits32[(@i_@332i_xhv+28)],
            bits32[(@i_@332i_xhv+8)]) = sym@.Ljoin@l1066;
        .Ljoin:l1067:
        bits32[(@i_@332i_xhv+28)] = -1;
        $c0 = sym@@i_543;
        @i_543:
        $c0 when %eq[32](@i_@334i_oldentry, 0) = sym@.Ljoin@l1063;
        .Ljoin:l1064:
        $c0
            when
            %eq[32](%and[32](bits32[(@i_hv+8)], 0x40000000::bits32), 0)
            = sym@.Ljoin@l1061;
        .Ljoin:l1062:
        @i_@367i_25 = (@i_hv+8);
        bits32[@i_@367i_25]
            = %and[32](bits32[@i_@367i_25], 0xffffffffbfffffff::bits32);
        $r0, $r1 = @i_hv, @i_@334i_oldentry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        .Ljoin:l1060:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_546;
        .Ljoin:l1061:
        $c0 = sym@@i_546;
        .Ljoin:l1063:
        $c0 = sym@@i_546;
        @i_546:
        bits32[(@i_@332i_xhv+32)] = @i_@333i_entry;
        $r0 = @i_@333i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l1066:
        $c0 = sym@@i_544;
        @i_544:
        @i_@333i_entry
            =
            bits32[(%shl[32](bits32[(@i_@332i_xhv+28)], 2)+
                bits32[@i_@332i_xhv])];
        $c0 = sym@@i_542;
    }
}

section "text"
{
    sym@_Perl_hv_iterkey()
    {
        $r31 = ($r31+-24);
        @i_entry, @i_retlen = $r0, $r1;
        $t1 = $r30;
        .Linitialize continuations:l1154:
        .Lproc body start:l1153:
        @i_@368i_1 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@368i_1)]+@i_@368i_1)],
            -2) = sym@.Ljoin@l1163;
        .Ljoin:l1164:
        @i_@372i_2 = 8;
        $c0
            when
            %eq[32](%and[32](bits32[(bits32[(bits32[(@i_entry+4)]+
                @i_@372i_2)]+
                @i_@372i_2)],
            262144),
            0) = sym@.Ljoin@l1161;
        .Ljoin:l1162:
        @i_@373i_3 = 4;
        @i_@374i_4 = (@i_entry+@i_@373i_3);
        @i_@375i_5 = 8;
        bits32[($r31+24)]
            =
            bits32[(bits32[bits32[(bits32[@i_@374i_4]+@i_@375i_5)]]+
                @i_@373i_3)];
        @i_@371i_551
            = bits32[bits32[bits32[(bits32[@i_@374i_4]+@i_@375i_5)]]];
        $c0 = sym@@i_553;
        .Ljoin:l1161:
        $c0 = sym@@i_552;
        @i_552:
        $r0, $r1 = bits32[(bits32[(@i_entry+4)]+8)], bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        .Ljoin:l1160:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@376i_6 = $r0;
        @i_@371i_551 = @i_@376i_6;
        $c0 = sym@@i_553;
        @i_553:
        @i_@370i_p = @i_@371i_551;
        bits32[@i_retlen] = bits32[bits32[($r31+24)]];
        $r0 = @i_@370i_p;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l1163:
        $c0 = sym@@i_549;
        @i_549:
        @i_@377i_7 = 4;
        bits32[@i_retlen]
            = bits32[(bits32[(@i_entry+@i_@377i_7)]+@i_@377i_7)];
        $r0 = (bits32[(@i_entry+4)]+8);
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_iterkeysv()
    {
        $r31 = ($r31+-24);
        @i_entry = $r0;
        $t1 = $r30;
        .Linitialize continuations:l1171:
        .Lproc body start:l1170:
        @i_@378i_1 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@378i_1)]+@i_@378i_1)],
            -2) = sym@.Ljoin@l1186;
        .Ljoin:l1187:
        $r0 = bits32[(bits32[(@i_entry+4)]+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_mortalcopy], ($c0+4);
        .Ljoin:l1185:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@379i_2 = $r0;
        $r0 = @i_@379i_2;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l1186:
        $c0 = sym@@i_555;
        @i_555:
        @i_@381i_3 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_entry+@i_@381i_3)]+@i_@381i_3)],
            0) = sym@.Ljoin@l1180;
        .Ljoin:l1181:
        @i_@380i_558 = (bits32[(@i_entry+4)]+8);
        $c0 = sym@@i_560;
        .Ljoin:l1180:
        $c0 = sym@@i_559;
        @i_559:
        @i_@380i_558 = bits32[sym@@i_557];
        $c0 = sym@@i_560;
        @i_560:
        @i_@382i_4 = 4;
        $r0, $r1
            = @i_@380i_558,
            bits32[(bits32[(@i_entry+@i_@382i_4)]+@i_@382i_4)];
        $c0, $r30 = bits32[sym@_Perl_newSVpv], ($c0+4);
        .Ljoin:l1179:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@383i_5 = $r0;
        $r0 = @i_@383i_5;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        .Ljoin:l1176:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@384i_6 = $r0;
        $r0 = @i_@384i_6;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_iterval()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_entry = $r0, $r1;
        $t1 = $r30;
        .Linitialize continuations:l1194:
        .Lproc body start:l1193:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@.Ljoin@l1214;
        .Ljoin:l1215:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        .Ljoin:l1213:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@385i_1 = $r0;
        $c0 when %eq[32](@i_@385i_1, 0) = sym@.Ljoin@l1209;
        .Ljoin:l1210:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        .Ljoin:l1208:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@387i_2 = $r0;
        @i_@386i_sv = @i_@387i_2;
        @i_@388i_3 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@388i_3)]+@i_@388i_3)],
            -2) = sym@.Ljoin@l1204;
        .Ljoin:l1205:
        $r0, $r1, $r2, $r3
            = @i_hv, @i_@386i_sv, bits32[(bits32[(@i_entry+4)]+8)], -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l1203:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_567;
        .Ljoin:l1204:
        $c0 = sym@@i_566;
        @i_566:
        @i_@389i_4 = 4;
        @i_@390i_5 = bits32[(@i_entry+@i_@389i_4)];
        $r0, $r1, $r2, $r3
            = @i_hv, @i_@386i_sv, (@i_@390i_5+8),
            bits32[(@i_@390i_5+@i_@389i_4)];
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        .Ljoin:l1200:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_567;
        @i_567:
        $r0 = @i_@386i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l1209:
        $c0 = sym@@i_564;
        @i_564:
        $c0 = sym@@i_562;
        .Ljoin:l1214:
        $c0 = sym@@i_562;
        @i_562:
        $r0 = bits32[(@i_entry+8)];
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_iternextsv()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_key, @i_retlen = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l1222:
        .Lproc body start:l1221:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_hv_iternext], ($c0+4);
        .Ljoin:l1236:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@392i_1 = $r0;
        @i_@391i_he = @i_@392i_1;
        $c0 when %ne[32](@i_@392i_1, 0) = sym@.Ljoin@l1232;
        .Ljoin:l1233:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        .Ljoin:l1232:
        $c0 = sym@@i_569;
        @i_569:
        $r0, $r1 = @i_@391i_he, @i_retlen;
        $c0, $r30 = bits32[sym@_Perl_hv_iterkey], ($c0+4);
        .Ljoin:l1230:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@393i_2 = $r0;
        bits32[@i_key] = @i_@393i_2;
        $r0, $r1 = @i_hv, @i_@391i_he;
        $c0, $r30 = bits32[sym@_Perl_hv_iterval], ($c0+4);
        .Ljoin:l1227:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@394i_3 = $r0;
        $r0 = @i_@394i_3;
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_hv_magic()
    {
        $r31 = ($r31+-24);
        @i_hv, @i_gv, @i_how = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l1243:
        .Lproc body start:l1242:
        $r0, $r1, $r2, $r3, $r4 = @i_hv, @i_gv, @i_how, 0, 0;
        $c0, $r30 = bits32[sym@_Perl_sv_magic], ($c0+4);
        .Ljoin:l1247:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_571:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_sharepvn()
    {
        $r31 = ($r31+-24);
        @i_sv, @i_len, @i_hash = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l1254:
        .Lproc body start:l1253:
        $r0, $r1, $r2 = @i_sv, @i_len, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_share_hek], ($c0+4);
        .Ljoin:l1259:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@395i_1 = $r0;
        $r0 = (@i_@395i_1+8);
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_unsharepvn()
    {
        $r31 = ($r31+-24);
        @i_str, @i_len, @i_hash = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l1266:
        .Lproc body start:l1265:
        @i_@399i_i = 1;
        @i_@400i_found = 0;
        @i_@396i_xhv = bits32[bits32[bits32[sym@_PL_strtab]]];
        @i_@398i_oentry
            =
            (%shl[32](%and[32](@i_hash, bits32[(@i_@396i_xhv+8)]), 2)+
                bits32[@i_@396i_xhv]);
        @i_@397i_entry = bits32[@i_@398i_oentry];
        $c0 = sym@@i_577;
        @i_577:
        $c0 when %ne[32](@i_@397i_entry, 0) = sym@.Ljoin@l1273;
        .Ljoin:l1298:
        $c0 = sym@@i_576;
        .Ljoin:l1273:
        $c0 = sym@@i_574;
        @i_574:
        $c0 when %eq[32](bits32[bits32[(@i_@397i_entry+4)]], @i_hash)
            = sym@.Ljoin@l1293;
        .Ljoin:l1294:
        $c0 = sym@@i_575;
        .Ljoin:l1293:
        $c0 = sym@@i_578;
        @i_578:
        @i_@402i_2 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@397i_entry+@i_@402i_2)]+
                @i_@402i_2)],
            @i_len) = sym@.Ljoin@l1291;
        .Ljoin:l1292:
        $c0 = sym@@i_575;
        .Ljoin:l1291:
        $c0 = sym@@i_580;
        @i_580:
        $r0, $r1, $r2 = (bits32[(@i_@397i_entry+4)]+8), @i_str, @i_len;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l1290:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@403i_3 = $r0;
        $c0 when %eq[32](@i_@403i_3, 0) = sym@.Ljoin@l1286;
        .Ljoin:l1287:
        $c0 = sym@@i_575;
        @i_575:
        @i_@399i_i = 0;
        @i_@398i_oentry = @i_@397i_entry;
        @i_@397i_entry = bits32[@i_@398i_oentry];
        $c0 = sym@@i_577;
        .Ljoin:l1286:
        $c0 = sym@@i_582;
        @i_582:
        @i_@400i_found = 1;
        @i_@404i_4 = (@i_@397i_entry+8);
        @i_@405i_5 = (bits32[@i_@404i_4]+-12);
        bits32[@i_@404i_4] = @i_@405i_5;
        $c0 when %ne[32](@i_@405i_5, 0) = sym@.Ljoin@l1284;
        .Ljoin:l1285:
        bits32[@i_@398i_oentry] = bits32[@i_@397i_entry];
        $c0 when %eq[32](@i_@399i_i, 0) = sym@.Ljoin@l1282;
        .Ljoin:l1283:
        $c0 when %ne[32](bits32[@i_@398i_oentry], 0) = sym@.Ljoin@l1280;
        .Ljoin:l1281:
        @i_@406i_6 = (@i_@396i_xhv+4);
        bits32[@i_@406i_6] = (bits32[@i_@406i_6]-1);
        $c0 = sym@@i_586;
        .Ljoin:l1280:
        $c0 = sym@@i_586;
        .Ljoin:l1282:
        $c0 = sym@@i_586;
        @i_586:
        $r0 = bits32[(@i_@397i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        .Ljoin:l1279:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@397i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        .Ljoin:l1276:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@407i_7 = (@i_@396i_xhv+12);
        bits32[@i_@407i_7] = (bits32[@i_@407i_7]-1);
        $c0 = sym@@i_576;
        .Ljoin:l1284:
        $c0 = sym@@i_576;
        @i_576:
        $c0 when %ne[32](@i_@400i_found, 0) = sym@.Ljoin@l1271;
        .Ljoin:l1272:
        $r0 = bits32[sym@@i_590];
        $c0, $r30 = bits32[sym@_Perl_warn], ($c0+4);
        .Ljoin:l1270:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_588;
        .Ljoin:l1271:
        $c0 = sym@@i_588;
        @i_588:
        @i_573:
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "text"
{
    sym@_Perl_share_hek()
    {
        $r31 = ($r31+-24);
        @i_str, @i_len, @i_hash = $r0, $r1, $r2;
        $t1 = $r30;
        .Linitialize continuations:l1302:
        .Lproc body start:l1301:
        @i_@411i_i = 1;
        @i_@412i_found = 0;
        @i_@408i_xhv = bits32[bits32[bits32[sym@_PL_strtab]]];
        @i_@410i_oentry
            =
            (%shl[32](%and[32](@i_hash, bits32[(@i_@408i_xhv+8)]), 2)+
                bits32[@i_@408i_xhv]);
        @i_@409i_entry = bits32[@i_@410i_oentry];
        $c0 = sym@@i_595;
        @i_595:
        $c0 when %ne[32](@i_@409i_entry, 0) = sym@.Ljoin@l1320;
        .Ljoin:l1333:
        $c0 = sym@@i_594;
        .Ljoin:l1320:
        $c0 = sym@@i_592;
        @i_592:
        $c0 when %eq[32](bits32[bits32[(@i_@409i_entry+4)]], @i_hash)
            = sym@.Ljoin@l1328;
        .Ljoin:l1329:
        $c0 = sym@@i_593;
        .Ljoin:l1328:
        $c0 = sym@@i_596;
        @i_596:
        @i_@414i_2 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@409i_entry+@i_@414i_2)]+
                @i_@414i_2)],
            @i_len) = sym@.Ljoin@l1326;
        .Ljoin:l1327:
        $c0 = sym@@i_593;
        .Ljoin:l1326:
        $c0 = sym@@i_598;
        @i_598:
        $r0, $r1, $r2 = (bits32[(@i_@409i_entry+4)]+8), @i_str, @i_len;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        .Ljoin:l1325:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@415i_3 = $r0;
        $c0 when %eq[32](@i_@415i_3, 0) = sym@.Ljoin@l1321;
        .Ljoin:l1322:
        $c0 = sym@@i_593;
        @i_593:
        @i_@411i_i = 0;
        @i_@409i_entry = bits32[@i_@409i_entry];
        $c0 = sym@@i_595;
        .Ljoin:l1321:
        $c0 = sym@@i_600;
        @i_600:
        @i_@412i_found = 1;
        $c0 = sym@@i_594;
        @i_594:
        $c0 when %ne[32](@i_@412i_found, 0) = sym@.Ljoin@l1318;
        .Ljoin:l1319:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        .Ljoin:l1317:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@416i_4 = $r0;
        @i_@409i_entry = @i_@416i_4;
        $r0, $r1, $r2 = @i_str, @i_len, @i_hash;
        $c0, $r30 = bits32[sym@@i_save_hek], ($c0+4);
        .Ljoin:l1314:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@417i_5 = $r0;
        bits32[(@i_@409i_entry+4)] = @i_@417i_5;
        bits32[(@i_@409i_entry+8)] = 0;
        bits32[@i_@409i_entry] = bits32[@i_@410i_oentry];
        bits32[@i_@410i_oentry] = @i_@409i_entry;
        @i_@418i_6 = (@i_@408i_xhv+12);
        bits32[@i_@418i_6] = (bits32[@i_@418i_6]+1);
        $c0 when %eq[32](@i_@411i_i, 0) = sym@.Ljoin@l1310;
        .Ljoin:l1311:
        @i_@419i_7 = (@i_@408i_xhv+4);
        bits32[@i_@419i_7] = (bits32[@i_@419i_7]+1);
        $c0
            when
            %leu[32](bits32[(@i_@408i_xhv+12)],
            bits32[(@i_@408i_xhv+8)]) = sym@.Ljoin@l1308;
        .Ljoin:l1309:
        $r0 = bits32[bits32[sym@_PL_strtab]];
        $c0, $r30 = bits32[sym@@i_hsplit], ($c0+4);
        .Ljoin:l1307:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_606;
        .Ljoin:l1308:
        $c0 = sym@@i_606;
        @i_606:
        $c0 = sym@@i_604;
        .Ljoin:l1310:
        $c0 = sym@@i_604;
        @i_604:
        $c0 = sym@@i_602;
        .Ljoin:l1318:
        $c0 = sym@@i_602;
        @i_602:
        @i_@421i_9 = (@i_@409i_entry+8);
        bits32[@i_@421i_9] = (bits32[@i_@421i_9]+12);
        $r0 = bits32[(@i_@409i_entry+4)];
        $r31 = ($r31+24);
        $c0 = $t1;
    }
}

section "data" { sym@@i_590: }

section "data" { bits32[1::bits32] { 0x41::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x6d::bits32 }; }

section "data" { bits32[1::bits32] { 0x70::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x6f::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x66::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x6f::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x2d::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x78::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x65::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x74::bits32 }; }

section "data" { bits32[1::bits32] { 0x72::bits32 }; }

section "data" { bits32[1::bits32] { 0x69::bits32 }; }

section "data" { bits32[1::bits32] { 0x6e::bits32 }; }

section "data" { bits32[1::bits32] { 0x67::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" { sym@@i_557: }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" { sym@@i_509: }

section "data" { bits32[1::bits32] { 0x42::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x64::bits32 }; }

section "data" { bits32[1::bits32] { 0x20::bits32 }; }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x61::bits32 }; }

section "data" { bits32[1::bits32] { 0x73::bits32 }; }

section "data" { bits32[1::bits32] { 0x68::bits32 }; }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" { align 4; }

section "data" { sym@@f_296: }

section "data" { bits32[1::bits32] { 0x0::bits32 }; }

section "data" {  }

