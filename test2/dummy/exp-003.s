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
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI,
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

section "rodata" { align 4; }

section "rodata" { sym@@i___huge_val: }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { fffffffffffffff0::bits32 }; }

section "rodata" { bits32[1::bits32] { 7f::bits32 }; }

section "text"
{
    sym@@i_new_he()
    {
        $r31 = ($r31+-24);
        $t1 = $r30;
        initialize continuations:l5:
        proc body start:l4:
        $c0 when %ne[32](bits32[bits32[sym@_PL_he_root]], 0)
            = sym@join@l11;
        join:l12:
        $c0, $r30 = bits32[sym@@i_more_he], ($c0+4);
        join:l10:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_21;
        join:l11:
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
        initialize continuations:l20:
        proc body start:l19:
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
        initialize continuations:l30:
        proc body start:l29:
        $r0 = 1008;
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l36:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@5i_1 = $r0;
        bits32[sym@_PL_he_root] = @i_@5i_1;
        @i_@3i_he = bits32[bits32[sym@_PL_he_root]];
        @i_@4i_heend = (@i_@3i_he+996);
        $c0 = sym@@i_26;
        @i_26:
        $c0 when %ltu[32](@i_@3i_he, @i_@4i_heend) = sym@join@l32;
        join:l33:
        bits32[@i_@3i_he] = 0;
        @i_24:
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l32:
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
        initialize continuations:l44:
        proc body start:l43:
        @i_@9i_1 = 1;
        $r0 = %mul[32](@i_@9i_1, ((@i_len+8)+@i_@9i_1));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l52:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@10i_2 = $r0;
        @i_@8i_k = @i_@10i_2;
        @i_@7i_hek = @i_@8i_k;
        $r0, $r1, $r2 = @i_str, (@i_@7i_hek+8), %mul[32](1, @i_len);
        $c0, $r30 = bits32[sym@_Perl_my_bcopy], ($c0+4);
        join:l49:
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
        initialize continuations:l60:
        proc body start:l59:
        $r0, $r1, $r2 = (@i_hek+8), bits32[(@i_hek+4)], bits32[@i_hek];
        $c0, $r30 = bits32[sym@_Perl_unsharepvn], ($c0+4);
        join:l64:
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
        initialize continuations:l72:
        proc body start:l71:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l124;
        join:l125:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l124:
        $c0 = sym@@i_31;
        @i_31:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l121;
        join:l122:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l120:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@16i_1 = $r0;
        $c0 when %eq[32](@i_@16i_1, 0) = sym@join@l116;
        join:l117:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        join:l115:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@17i_2 = $r0;
        @i_@15i_sv = @i_@17i_2;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@15i_sv, @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l112:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@18i_3 = bits32[sym@_PL_hv_fetch_sv];
        bits32[@i_@18i_3] = @i_@15i_sv;
        $r0 = @i_@18i_3;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l116:
        $c0 = sym@@i_35;
        @i_35:
        $c0 = sym@@i_33;
        join:l121:
        $c0 = sym@@i_33;
        @i_33:
        @i_@12i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@12i_xhv], 0) = sym@join@l107;
        join:l108:
        $c0 when %eq[32](@i_lval, 0) = sym@join@l105;
        join:l106:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@12i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l104:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@20i_5 = $r0;
        bits32[@i_@12i_xhv] = @i_@20i_5;
        $r0, $r1, $r2
            = bits32[@i_@12i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@12i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l101:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_40;
        @i_40:
        $c0 = sym@@i_37;
        join:l105:
        $c0 = sym@@i_39;
        @i_39:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l107:
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
        $c0 when %ne[32](@i_@26i_8, 0) = sym@join@l96;
        join:l97:
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
        $c0 when %ne[32](@i_@14i_entry, 0) = sym@join@l84;
        join:l85:
        $c0 when %eq[32](@i_lval, 0) = sym@join@l82;
        join:l83:
        $r0 = 0;
        $c0, $r30 = bits32[sym@_Perl_newSV], ($c0+4);
        join:l81:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@30i_12 = $r0;
        @i_@15i_sv = @i_@30i_12;
        $r0, $r1, $r2, $r3, $r4
            = @i_hv, @i_key, @i_klen, @i_@15i_sv, @i_@13i_hash;
        $c0, $r30 = bits32[sym@_Perl_hv_store], ($c0+4);
        join:l78:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@31i_13 = $r0;
        $r0 = @i_@31i_13;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l82:
        $c0 = sym@@i_57;
        @i_57:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l84:
        $c0 = sym@@i_47;
        @i_47:
        $c0
            when
            %eq[32](bits32[bits32[(@i_@14i_entry+4)]], @i_@13i_hash)
            = sym@join@l94;
        join:l95:
        $c0 = sym@@i_48;
        join:l94:
        $c0 = sym@@i_51;
        @i_51:
        @i_@28i_10 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@14i_entry+@i_@28i_10)]+
                @i_@28i_10)],
            @i_klen) = sym@join@l92;
        join:l93:
        $c0 = sym@@i_48;
        join:l92:
        $c0 = sym@@i_53;
        @i_53:
        $r0, $r1, $r2 = (bits32[(@i_@14i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l91:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@29i_11 = $r0;
        $c0 when %eq[32](@i_@29i_11, 0) = sym@join@l87;
        join:l88:
        $c0 = sym@@i_48;
        @i_48:
        @i_@14i_entry = bits32[@i_@14i_entry];
        $c0 = sym@@i_50;
        join:l87:
        $c0 = sym@@i_55;
        @i_55:
        $r0 = (@i_@14i_entry+8);
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l96:
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
        initialize continuations:l133:
        proc body start:l132:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l202;
        join:l203:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l202:
        $c0 = sym@@i_60;
        @i_60:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l199;
        join:l200:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l198:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@37i_1 = $r0;
        $c0 when %eq[32](@i_@37i_1, 0) = sym@join@l194;
        join:l195:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        join:l193:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@38i_2 = $r0;
        @i_@36i_sv = @i_@38i_2;
        $r0 = @i_keysv;
        $c0, $r30 = bits32[sym@_Perl_newSVsv], ($c0+4);
        join:l190:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@39i_3 = $r0;
        $r0 = @i_@39i_3;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        join:l187:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@40i_4 = $r0;
        @i_keysv = @i_@40i_4;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@36i_sv, @i_keysv, -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l184:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[bits32[(sym@_PL_hv_fetch_ent_mh+4)]], 0)
            = sym@join@l180;
        join:l181:
        $r0 = 12;
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l179:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@42i_5 = $r0;
        @i_@41i_k = @i_@42i_5;
        bits32[(sym@_PL_hv_fetch_ent_mh+4)] = @i_@41i_k;
        $c0 = sym@@i_66;
        join:l180:
        $c0 = sym@@i_66;
        @i_66:
        bits32[(bits32[bits32[(sym@_PL_hv_fetch_ent_mh+4)]]+4)] = -2;
        bits32[(bits32[bits32[(sym@_PL_hv_fetch_ent_mh+4)]]+8)]
            = @i_keysv;
        bits32[(sym@_PL_hv_fetch_ent_mh+8)] = @i_@36i_sv;
        $r0 = bits32[sym@_PL_hv_fetch_ent_mh];
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l194:
        $c0 = sym@@i_64;
        @i_64:
        $c0 = sym@@i_62;
        join:l199:
        $c0 = sym@@i_62;
        @i_62:
        @i_@32i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@32i_xhv], 0) = sym@join@l174;
        join:l175:
        $c0 when %eq[32](@i_lval, 0) = sym@join@l172;
        join:l173:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@32i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l171:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@44i_7 = $r0;
        bits32[@i_@32i_xhv] = @i_@44i_7;
        $r0, $r1, $r2
            = bits32[@i_@32i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@32i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l168:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_76;
        @i_76:
        $c0 = sym@@i_73;
        join:l172:
        $c0 = sym@@i_75;
        @i_75:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l174:
        $c0 = sym@@i_73;
        @i_73:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@join@l163;
        join:l164:
        @i_@47i_9 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@47i_9]+4)];
        @i_@46i_77 = bits32[bits32[@i_@47i_9]];
        $c0 = sym@@i_79;
        join:l163:
        $c0 = sym@@i_78;
        @i_78:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        join:l162:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@48i_10 = $r0;
        @i_@46i_77 = @i_@48i_10;
        $c0 = sym@@i_79;
        @i_79:
        @i_@33i_key = @i_@46i_77;
        $c0 when %ne[32](@i_hash, 0) = sym@join@l159;
        @i_82:
        @i_@49i_s_PeRlHaSh = @i_@33i_key;
        @i_@50i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@51i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_86;
        @i_86:
        @i_@53i_12 = @i_@50i_i_PeRlHaSh;
        @i_@50i_i_PeRlHaSh = (@i_@53i_12-1);
        $c0 when %ne[32](@i_@53i_12, 0) = sym@join@l157;
        join:l158:
        @i_hash = @i_@51i_hash_PeRlHaSh;
        @i_83:
        $c0 = sym@@i_80;
        join:l157:
        $c0 = sym@@i_85;
        @i_85:
        @i_@52i_11 = @i_@49i_s_PeRlHaSh;
        @i_@49i_s_PeRlHaSh = (@i_@52i_11+1);
        @i_@51i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@51i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@52i_11]));
        $c0 = sym@@i_86;
        join:l159:
        $c0 = sym@@i_80;
        @i_80:
        @i_@34i_entry
            =
            bits32[(%shl[32](%and[32](@i_hash, bits32[(@i_@32i_xhv+8)]),
            2)+
                bits32[@i_@32i_xhv])];
        $c0 = sym@@i_91;
        @i_91:
        $c0 when %ne[32](@i_@34i_entry, 0) = sym@join@l145;
        join:l146:
        $c0 when %eq[32](@i_lval, 0) = sym@join@l143;
        join:l144:
        $r0 = 0;
        $c0, $r30 = bits32[sym@_Perl_newSV], ($c0+4);
        join:l142:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@57i_16 = $r0;
        @i_@36i_sv = @i_@57i_16;
        $r0, $r1, $r2, $r3 = @i_hv, @i_keysv, @i_@36i_sv, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_hv_store_ent], ($c0+4);
        join:l139:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@58i_17 = $r0;
        $r0 = @i_@58i_17;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l143:
        $c0 = sym@@i_98;
        @i_98:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l145:
        $c0 = sym@@i_88;
        @i_88:
        $c0 when %eq[32](bits32[bits32[(@i_@34i_entry+4)]], @i_hash)
            = sym@join@l155;
        join:l156:
        $c0 = sym@@i_89;
        join:l155:
        $c0 = sym@@i_92;
        @i_92:
        @i_@55i_14 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@34i_entry+@i_@55i_14)]+
                @i_@55i_14)],
            bits32[bits32[($r31+24)]]) = sym@join@l153;
        join:l154:
        $c0 = sym@@i_89;
        join:l153:
        $c0 = sym@@i_94;
        @i_94:
        $r0, $r1, $r2
            = (bits32[(@i_@34i_entry+4)]+8), @i_@33i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l152:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@56i_15 = $r0;
        $c0 when %eq[32](@i_@56i_15, 0) = sym@join@l148;
        join:l149:
        $c0 = sym@@i_89;
        @i_89:
        @i_@34i_entry = bits32[@i_@34i_entry];
        $c0 = sym@@i_91;
        join:l148:
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
        initialize continuations:l211:
        proc body start:l210:
        @i_@59i_mg = bits32[(bits32[@i_hv]+20)];
        bits32[@i_needs_copy] = 0;
        bits32[@i_needs_store] = 1;
        $c0 = sym@@i_102;
        @i_102:
        $c0 when %ne[32](@i_@59i_mg, 0) = sym@join@l213;
        @i_100:
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l213:
        $c0 = sym@@i_101;
        @i_101:
        @i_@60i_1 = %sx[8,32](bits8[(@i_@59i_mg+12)]);
        $c0 when %lt[32](@i_@60i_1, 65) = sym@join@l221;
        join:l222:
        $c0 when %gt[32](@i_@60i_1, 90) = sym@join@l219;
        join:l220:
        bits32[@i_needs_copy] = 1;
        @i_@61i_108 = %sx[8,32](bits8[(@i_@59i_mg+12)]);
        @i_@63i_3 = 80;
        $c0 when %eq[32](@i_@61i_108, @i_@63i_3) = sym@join@l217;
        join:l218:
        $c0 when %lt[32](@i_@61i_108, @i_@63i_3) = sym@join@l216;
        @i_110:
        $c0 when %eq[32](@i_@61i_108, 83) = sym@join@l214;
        join:l215:
        $c0 = sym@@i_106;
        join:l214:
        $c0 = sym@@i_109;
        join:l216:
        $c0 = sym@@i_106;
        join:l217:
        $c0 = sym@@i_109;
        @i_109:
        bits32[@i_needs_store] = 0;
        $c0 = sym@@i_106;
        @i_106:
        $c0 = sym@@i_104;
        join:l219:
        $c0 = sym@@i_104;
        join:l221:
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
        initialize continuations:l231:
        proc body start:l230:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l294;
        join:l295:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l294:
        $c0 = sym@@i_112;
        @i_112:
        @i_@68i_1 = @i_hv;
        @i_@64i_xhv = bits32[@i_@68i_1];
        $c0 when %eq[32](%and[32](bits32[(@i_@68i_1+8)], 57344), 0)
            = sym@join@l291;
        join:l292:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+24)], bits32[($r31+28)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        join:l290:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+24)]], 0) = sym@join@l286;
        join:l287:
        $r0, $r1, $r2, $r3 = @i_hv, @i_val, @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l285:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[@i_@64i_xhv], 0) = sym@join@l281;
        join:l282:
        $c0 when %ne[32](bits32[bits32[($r31+28)]], 0) = sym@join@l279;
        join:l280:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l279:
        $c0 = sym@@i_118;
        join:l281:
        $c0 = sym@@i_118;
        @i_118:
        $c0 = sym@@i_116;
        join:l286:
        $c0 = sym@@i_116;
        @i_116:
        $c0 = sym@@i_114;
        join:l291:
        $c0 = sym@@i_114;
        @i_114:
        $c0 when %ne[32](@i_hash, 0) = sym@join@l277;
        @i_122:
        @i_@71i_s_PeRlHaSh = @i_key;
        @i_@72i_i_PeRlHaSh = @i_klen;
        @i_@73i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_126;
        @i_126:
        @i_@75i_3 = @i_@72i_i_PeRlHaSh;
        @i_@72i_i_PeRlHaSh = (@i_@75i_3-1);
        $c0 when %ne[32](@i_@75i_3, 0) = sym@join@l275;
        join:l276:
        @i_hash = @i_@73i_hash_PeRlHaSh;
        @i_123:
        $c0 = sym@@i_120;
        join:l275:
        $c0 = sym@@i_125;
        @i_125:
        @i_@74i_2 = @i_@71i_s_PeRlHaSh;
        @i_@71i_s_PeRlHaSh = (@i_@74i_2+1);
        @i_@73i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@73i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@74i_2]));
        $c0 = sym@@i_126;
        join:l277:
        $c0 = sym@@i_120;
        @i_120:
        $c0 when %ne[32](bits32[@i_@64i_xhv], 0) = sym@join@l273;
        join:l274:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@64i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l272:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@77i_5 = $r0;
        bits32[@i_@64i_xhv] = @i_@77i_5;
        $r0, $r1, $r2
            = bits32[@i_@64i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@64i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l269:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_128;
        join:l273:
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
        $c0 when %ne[32](@i_@66i_entry, 0) = sym@join@l252;
        join:l253:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        join:l251:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@82i_10 = $r0;
        @i_@66i_entry = @i_@82i_10;
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@join@l247;
        join:l248:
        $r0, $r1, $r2 = @i_key, @i_klen, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_share_hek], ($c0+4);
        join:l246:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@83i_11 = $r0;
        bits32[(@i_@66i_entry+4)] = @i_@83i_11;
        $c0 = sym@@i_141;
        join:l247:
        $c0 = sym@@i_140;
        @i_140:
        $r0, $r1, $r2 = @i_key, @i_klen, @i_hash;
        $c0, $r30 = bits32[sym@@i_save_hek], ($c0+4);
        join:l243:
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
        $c0 when %eq[32](@i_@65i_i, 0) = sym@join@l239;
        join:l240:
        @i_@86i_14 = (@i_@64i_xhv+4);
        bits32[@i_@86i_14] = (bits32[@i_@86i_14]+1);
        $c0
            when
            %leu[32](bits32[(@i_@64i_xhv+12)], bits32[(@i_@64i_xhv+8)])
            = sym@join@l237;
        join:l238:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@@i_hsplit], ($c0+4);
        join:l236:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_144;
        join:l237:
        $c0 = sym@@i_144;
        @i_144:
        $c0 = sym@@i_142;
        join:l239:
        $c0 = sym@@i_142;
        @i_142:
        $r0 = (@i_@66i_entry+8);
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l252:
        $c0 = sym@@i_130;
        @i_130:
        $c0 when %eq[32](bits32[bits32[(@i_@66i_entry+4)]], @i_hash)
            = sym@join@l265;
        join:l266:
        $c0 = sym@@i_131;
        join:l265:
        $c0 = sym@@i_134;
        @i_134:
        @i_@80i_8 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@66i_entry+@i_@80i_8)]+
                @i_@80i_8)],
            @i_klen) = sym@join@l263;
        join:l264:
        $c0 = sym@@i_131;
        join:l263:
        $c0 = sym@@i_136;
        @i_136:
        $r0, $r1, $r2 = (bits32[(@i_@66i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l262:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@81i_9 = $r0;
        $c0 when %eq[32](@i_@81i_9, 0) = sym@join@l258;
        join:l259:
        $c0 = sym@@i_131;
        @i_131:
        @i_@65i_i = 0;
        @i_@66i_entry = bits32[@i_@66i_entry];
        $c0 = sym@@i_133;
        join:l258:
        $c0 = sym@@i_138;
        @i_138:
        $r0 = bits32[(@i_@66i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        join:l257:
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
        initialize continuations:l303:
        proc body start:l302:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l388;
        join:l389:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l388:
        $c0 = sym@@i_147;
        @i_147:
        @i_@94i_1 = @i_hv;
        @i_@88i_xhv = bits32[@i_@94i_1];
        $c0 when %eq[32](%and[32](bits32[(@i_@94i_1+8)], 57344), 0)
            = sym@join@l385;
        join:l386:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+28)], bits32[($r31+32)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        join:l384:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+28)]], 0) = sym@join@l380;
        join:l381:
        @i_@97i_save_taint = bits32[bits32[sym@_PL_tainted]];
        $c0 when %eq[32](bits32[bits32[sym@_PL_tainting]], 0)
            = sym@join@l378;
        join:l379:
        @i_@99i_2 = @i_keysv;
        $c0 when %eq[32](%and[32](bits32[(@i_@99i_2+8)], 57344), 0)
            = sym@join@l376;
        join:l377:
        $r0 = @i_@99i_2;
        $c0, $r30 = bits32[sym@_Perl_sv_tainted], ($c0+4);
        join:l375:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@100i_3 = $r0;
        $c0 when %eq[32](@i_@100i_3, 0) = sym@join@l371;
        join:l372:
        @i_@98i_155 = 1;
        $c0 = sym@@i_157;
        join:l371:
        $c0 = sym@@i_156;
        join:l376:
        $c0 = sym@@i_156;
        @i_156:
        @i_@98i_155 = 0;
        $c0 = sym@@i_157;
        @i_157:
        bits32[sym@_PL_tainted] = @i_@98i_155;
        $c0 = sym@@i_153;
        join:l378:
        $c0 = sym@@i_153;
        @i_153:
        $r0 = @i_keysv;
        $c0, $r30 = bits32[sym@_Perl_newSVsv], ($c0+4);
        join:l370:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@101i_4 = $r0;
        $r0 = @i_@101i_4;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        join:l367:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@102i_5 = $r0;
        @i_keysv = @i_@102i_5;
        $r0, $r1, $r2, $r3 = @i_hv, @i_val, @i_keysv, -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l364:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](@i_@97i_save_taint, 0) = sym@join@l360;
        join:l361:
        bits32[sym@_PL_tainted] = 1;
        $c0 = sym@@i_158;
        join:l360:
        $c0 = sym@@i_158;
        @i_158:
        $c0 when %ne[32](bits32[@i_@88i_xhv], 0) = sym@join@l358;
        join:l359:
        $c0 when %ne[32](bits32[bits32[($r31+32)]], 0) = sym@join@l356;
        join:l357:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l356:
        $c0 = sym@@i_160;
        join:l358:
        $c0 = sym@@i_160;
        @i_160:
        $c0 = sym@@i_151;
        join:l380:
        $c0 = sym@@i_151;
        @i_151:
        $c0 = sym@@i_149;
        join:l385:
        $c0 = sym@@i_149;
        @i_149:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@join@l353;
        join:l354:
        @i_@104i_6 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@104i_6]+4)];
        @i_@103i_162 = bits32[bits32[@i_@104i_6]];
        $c0 = sym@@i_164;
        join:l353:
        $c0 = sym@@i_163;
        @i_163:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        join:l352:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@105i_7 = $r0;
        @i_@103i_162 = @i_@105i_7;
        $c0 = sym@@i_164;
        @i_164:
        @i_@89i_key = @i_@103i_162;
        $c0 when %ne[32](@i_hash, 0) = sym@join@l349;
        @i_167:
        @i_@106i_s_PeRlHaSh = @i_@89i_key;
        @i_@107i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@108i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_171;
        @i_171:
        @i_@110i_9 = @i_@107i_i_PeRlHaSh;
        @i_@107i_i_PeRlHaSh = (@i_@110i_9-1);
        $c0 when %ne[32](@i_@110i_9, 0) = sym@join@l347;
        join:l348:
        @i_hash = @i_@108i_hash_PeRlHaSh;
        @i_168:
        $c0 = sym@@i_165;
        join:l347:
        $c0 = sym@@i_170;
        @i_170:
        @i_@109i_8 = @i_@106i_s_PeRlHaSh;
        @i_@106i_s_PeRlHaSh = (@i_@109i_8+1);
        @i_@108i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@108i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@109i_8]));
        $c0 = sym@@i_171;
        join:l349:
        $c0 = sym@@i_165;
        @i_165:
        $c0 when %ne[32](bits32[@i_@88i_xhv], 0) = sym@join@l345;
        join:l346:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@88i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l344:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@112i_11 = $r0;
        bits32[@i_@88i_xhv] = @i_@112i_11;
        $r0, $r1, $r2
            = bits32[@i_@88i_xhv], 0,
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@88i_xhv+8)]+1), 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l341:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_173;
        join:l345:
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
        $c0 when %ne[32](@i_@91i_entry, 0) = sym@join@l324;
        join:l325:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        join:l323:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@117i_16 = $r0;
        @i_@91i_entry = @i_@117i_16;
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@join@l319;
        join:l320:
        $r0, $r1, $r2 = @i_@89i_key, bits32[bits32[($r31+24)]], @i_hash;
        $c0, $r30 = bits32[sym@_Perl_share_hek], ($c0+4);
        join:l318:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@118i_17 = $r0;
        bits32[(@i_@91i_entry+4)] = @i_@118i_17;
        $c0 = sym@@i_186;
        join:l319:
        $c0 = sym@@i_185;
        @i_185:
        $r0, $r1, $r2 = @i_@89i_key, bits32[bits32[($r31+24)]], @i_hash;
        $c0, $r30 = bits32[sym@@i_save_hek], ($c0+4);
        join:l315:
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
        $c0 when %eq[32](@i_@90i_i, 0) = sym@join@l311;
        join:l312:
        @i_@121i_20 = (@i_@88i_xhv+4);
        bits32[@i_@121i_20] = (bits32[@i_@121i_20]+1);
        $c0
            when
            %leu[32](bits32[(@i_@88i_xhv+12)], bits32[(@i_@88i_xhv+8)])
            = sym@join@l309;
        join:l310:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@@i_hsplit], ($c0+4);
        join:l308:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_189;
        join:l309:
        $c0 = sym@@i_189;
        @i_189:
        $c0 = sym@@i_187;
        join:l311:
        $c0 = sym@@i_187;
        @i_187:
        $r0 = @i_@91i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l324:
        $c0 = sym@@i_175;
        @i_175:
        $c0 when %eq[32](bits32[bits32[(@i_@91i_entry+4)]], @i_hash)
            = sym@join@l337;
        join:l338:
        $c0 = sym@@i_176;
        join:l337:
        $c0 = sym@@i_179;
        @i_179:
        @i_@115i_14 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@91i_entry+@i_@115i_14)]+
                @i_@115i_14)],
            bits32[bits32[($r31+24)]]) = sym@join@l335;
        join:l336:
        $c0 = sym@@i_176;
        join:l335:
        $c0 = sym@@i_181;
        @i_181:
        $r0, $r1, $r2
            = (bits32[(@i_@91i_entry+4)]+8), @i_@89i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l334:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@116i_15 = $r0;
        $c0 when %eq[32](@i_@116i_15, 0) = sym@join@l330;
        join:l331:
        $c0 = sym@@i_176;
        @i_176:
        @i_@90i_i = 0;
        @i_@91i_entry = bits32[@i_@91i_entry];
        $c0 = sym@@i_178;
        join:l330:
        $c0 = sym@@i_183;
        @i_183:
        $r0 = bits32[(@i_@91i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        join:l329:
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
        initialize continuations:l397:
        proc body start:l396:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l459;
        join:l460:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l459:
        $c0 = sym@@i_192;
        @i_192:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l456;
        join:l457:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+24)], bits32[($r31+28)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        join:l455:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+24)]], 0) = sym@join@l451;
        join:l452:
        $r0, $r1, $r2, $r3 = @i_hv, @i_key, @i_klen, 1;
        $c0, $r30 = bits32[sym@_Perl_hv_fetch], ($c0+4);
        join:l450:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@132i_1 = $r0;
        @i_@129i_svp = @i_@132i_1;
        $c0 when %eq[32](@i_@132i_1, 0) = sym@join@l446;
        join:l447:
        @i_@128i_sv = bits32[@i_@129i_svp];
        $r0 = @i_@128i_sv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        join:l445:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[bits32[($r31+28)]], 0) = sym@join@l441;
        join:l442:
        $r0, $r1 = @i_@128i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l440:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@133i_2 = $r0;
        $c0 when %eq[32](@i_@133i_2, 0) = sym@join@l436;
        join:l437:
        $r0, $r1 = @i_@128i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_sv_unmagic], ($c0+4);
        join:l435:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@128i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l436:
        $c0 = sym@@i_200;
        @i_200:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l441:
        $c0 = sym@@i_198;
        @i_198:
        $c0 = sym@@i_196;
        join:l446:
        $c0 = sym@@i_196;
        join:l451:
        $c0 = sym@@i_196;
        @i_196:
        $c0 = sym@@i_194;
        join:l456:
        $c0 = sym@@i_194;
        @i_194:
        @i_@123i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@123i_xhv], 0) = sym@join@l429;
        join:l430:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l429:
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
        $c0 when %ne[32](@i_@138i_4, 0) = sym@join@l426;
        join:l427:
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
        $c0 when %ne[32](@i_@126i_entry, 0) = sym@join@l400;
        join:l401:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l400:
        $c0 = sym@@i_210;
        @i_210:
        $c0
            when
            %eq[32](bits32[bits32[(@i_@126i_entry+4)]], @i_@125i_hash)
            = sym@join@l424;
        join:l425:
        $c0 = sym@@i_211;
        join:l424:
        $c0 = sym@@i_214;
        @i_214:
        @i_@140i_6 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@126i_entry+@i_@140i_6)]+
                @i_@140i_6)],
            @i_klen) = sym@join@l422;
        join:l423:
        $c0 = sym@@i_211;
        join:l422:
        $c0 = sym@@i_216;
        @i_216:
        $r0, $r1, $r2 = (bits32[(@i_@126i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l421:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@141i_7 = $r0;
        $c0 when %eq[32](@i_@141i_7, 0) = sym@join@l417;
        join:l418:
        $c0 = sym@@i_211;
        @i_211:
        @i_@124i_i = 0;
        @i_@127i_oentry = @i_@126i_entry;
        @i_@126i_entry = bits32[@i_@127i_oentry];
        $c0 = sym@@i_213;
        join:l417:
        $c0 = sym@@i_218;
        @i_218:
        bits32[@i_@127i_oentry] = bits32[@i_@126i_entry];
        $c0 when %eq[32](@i_@124i_i, 0) = sym@join@l415;
        join:l416:
        $c0 when %ne[32](bits32[@i_@127i_oentry], 0) = sym@join@l413;
        join:l414:
        @i_@142i_8 = (@i_@123i_xhv+4);
        bits32[@i_@142i_8] = (bits32[@i_@142i_8]-1);
        $c0 = sym@@i_220;
        join:l413:
        $c0 = sym@@i_220;
        join:l415:
        $c0 = sym@@i_220;
        @i_220:
        $c0 when %eq[32](%and[32](@i_flags, 2), 0) = sym@join@l411;
        join:l412:
        @i_@128i_sv = 0;
        $c0 = sym@@i_223;
        join:l411:
        $c0 = sym@@i_222;
        @i_222:
        $r0 = bits32[(@i_@126i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_mortalcopy], ($c0+4);
        join:l410:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@143i_9 = $r0;
        @i_@128i_sv = @i_@143i_9;
        $c0 = sym@@i_223;
        @i_223:
        $c0 when %ne[32](@i_@126i_entry, bits32[(@i_@123i_xhv+32)])
            = sym@join@l406;
        join:l407:
        @i_@144i_10 = (@i_hv+8);
        bits32[@i_@144i_10]
            = %or[32](bits32[@i_@144i_10], 0x40000000::bits32);
        $c0 = sym@@i_225;
        join:l406:
        $c0 = sym@@i_224;
        @i_224:
        $r0, $r1 = @i_hv, @i_@126i_entry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        join:l405:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_225;
        @i_225:
        @i_@145i_11 = (@i_@123i_xhv+12);
        bits32[@i_@145i_11] = (bits32[@i_@145i_11]-1);
        $r0 = @i_@128i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l426:
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
        initialize continuations:l468:
        proc body start:l467:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l536;
        join:l537:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l536:
        $c0 = sym@@i_227;
        @i_227:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l533;
        join:l534:
        $r0, $r1, $r2 = @i_hv, bits32[($r31+28)], bits32[($r31+32)];
        $c0, $r30 = bits32[sym@@i_hv_magic_check], ($c0+4);
        join:l532:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[bits32[($r31+28)]], 0) = sym@join@l528;
        join:l529:
        $r0, $r1, $r2, $r3 = @i_hv, @i_keysv, 1, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_hv_fetch_ent], ($c0+4);
        join:l527:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@155i_1 = $r0;
        @i_@149i_entry = @i_@155i_1;
        $c0 when %eq[32](@i_@155i_1, 0) = sym@join@l523;
        join:l524:
        @i_@152i_sv = bits32[(@i_@149i_entry+8)];
        $r0 = @i_@152i_sv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        join:l522:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](bits32[bits32[($r31+32)]], 0) = sym@join@l518;
        join:l519:
        $r0, $r1 = @i_@152i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l517:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@156i_2 = $r0;
        $c0 when %eq[32](@i_@156i_2, 0) = sym@join@l513;
        join:l514:
        $r0, $r1 = @i_@152i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_sv_unmagic], ($c0+4);
        join:l512:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@152i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l513:
        $c0 = sym@@i_235;
        @i_235:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l518:
        $c0 = sym@@i_233;
        @i_233:
        $c0 = sym@@i_231;
        join:l523:
        $c0 = sym@@i_231;
        join:l528:
        $c0 = sym@@i_231;
        @i_231:
        $c0 = sym@@i_229;
        join:l533:
        $c0 = sym@@i_229;
        @i_229:
        @i_@146i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@146i_xhv], 0) = sym@join@l506;
        join:l507:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l506:
        $c0 = sym@@i_237;
        @i_237:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@join@l503;
        join:l504:
        @i_@158i_3 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@158i_3]+4)];
        @i_@157i_239 = bits32[bits32[@i_@158i_3]];
        $c0 = sym@@i_241;
        join:l503:
        $c0 = sym@@i_240;
        @i_240:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        join:l502:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@159i_4 = $r0;
        @i_@157i_239 = @i_@159i_4;
        $c0 = sym@@i_241;
        @i_241:
        @i_@148i_key = @i_@157i_239;
        $c0 when %ne[32](@i_hash, 0) = sym@join@l499;
        @i_244:
        @i_@160i_s_PeRlHaSh = @i_@148i_key;
        @i_@161i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@162i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_248;
        @i_248:
        @i_@164i_6 = @i_@161i_i_PeRlHaSh;
        @i_@161i_i_PeRlHaSh = (@i_@164i_6-1);
        $c0 when %ne[32](@i_@164i_6, 0) = sym@join@l497;
        join:l498:
        @i_hash = @i_@162i_hash_PeRlHaSh;
        @i_245:
        $c0 = sym@@i_242;
        join:l497:
        $c0 = sym@@i_247;
        @i_247:
        @i_@163i_5 = @i_@160i_s_PeRlHaSh;
        @i_@160i_s_PeRlHaSh = (@i_@163i_5+1);
        @i_@162i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@162i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@163i_5]));
        $c0 = sym@@i_248;
        join:l499:
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
        $c0 when %ne[32](@i_@149i_entry, 0) = sym@join@l471;
        join:l472:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l471:
        $c0 = sym@@i_250;
        @i_250:
        $c0 when %eq[32](bits32[bits32[(@i_@149i_entry+4)]], @i_hash)
            = sym@join@l495;
        join:l496:
        $c0 = sym@@i_251;
        join:l495:
        $c0 = sym@@i_254;
        @i_254:
        @i_@166i_8 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@149i_entry+@i_@166i_8)]+
                @i_@166i_8)],
            bits32[bits32[($r31+24)]]) = sym@join@l493;
        join:l494:
        $c0 = sym@@i_251;
        join:l493:
        $c0 = sym@@i_256;
        @i_256:
        $r0, $r1, $r2
            = (bits32[(@i_@149i_entry+4)]+8), @i_@148i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l492:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@167i_9 = $r0;
        $c0 when %eq[32](@i_@167i_9, 0) = sym@join@l488;
        join:l489:
        $c0 = sym@@i_251;
        @i_251:
        @i_@147i_i = 0;
        @i_@150i_oentry = @i_@149i_entry;
        @i_@149i_entry = bits32[@i_@150i_oentry];
        $c0 = sym@@i_253;
        join:l488:
        $c0 = sym@@i_258;
        @i_258:
        bits32[@i_@150i_oentry] = bits32[@i_@149i_entry];
        $c0 when %eq[32](@i_@147i_i, 0) = sym@join@l486;
        join:l487:
        $c0 when %ne[32](bits32[@i_@150i_oentry], 0) = sym@join@l484;
        join:l485:
        @i_@168i_10 = (@i_@146i_xhv+4);
        bits32[@i_@168i_10] = (bits32[@i_@168i_10]-1);
        $c0 = sym@@i_260;
        join:l484:
        $c0 = sym@@i_260;
        join:l486:
        $c0 = sym@@i_260;
        @i_260:
        $c0 when %eq[32](%and[32](@i_flags, 2), 0) = sym@join@l482;
        join:l483:
        @i_@152i_sv = 0;
        $c0 = sym@@i_263;
        join:l482:
        $c0 = sym@@i_262;
        @i_262:
        $r0 = bits32[(@i_@149i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_mortalcopy], ($c0+4);
        join:l481:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@169i_11 = $r0;
        @i_@152i_sv = @i_@169i_11;
        $c0 = sym@@i_263;
        @i_263:
        $c0 when %ne[32](@i_@149i_entry, bits32[(@i_@146i_xhv+32)])
            = sym@join@l477;
        join:l478:
        @i_@170i_12 = (@i_hv+8);
        bits32[@i_@170i_12]
            = %or[32](bits32[@i_@170i_12], 0x40000000::bits32);
        $c0 = sym@@i_265;
        join:l477:
        $c0 = sym@@i_264;
        @i_264:
        $r0, $r1 = @i_hv, @i_@149i_entry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        join:l476:
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
        initialize continuations:l545:
        proc body start:l544:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l610;
        join:l611:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l610:
        $c0 = sym@@i_267;
        @i_267:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l607;
        join:l608:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l606:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@176i_1 = $r0;
        $c0 when %eq[32](@i_@176i_1, 0) = sym@join@l602;
        join:l603:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        join:l601:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@177i_2 = $r0;
        @i_@175i_sv = @i_@177i_2;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@175i_sv, @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l598:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0, $r1 = @i_@175i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l595:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@178i_3 = $r0;
        $r0, $r1 = @i_@175i_sv, @i_@178i_3;
        $c0, $r30 = bits32[sym@_Perl_magic_existspack], ($c0+4);
        join:l592:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](@i_@175i_sv, 0) = sym@join@l588;
        join:l589:
        @i_@179i_279 = 0;
        $c0 = sym@@i_281;
        join:l588:
        $c0 = sym@@i_280;
        @i_280:
        $c0 when %eq[32](%and[32](bits32[(@i_@175i_sv+8)], 262144), 0)
            = sym@join@l586;
        join:l587:
        @i_@186i_4 = bits32[sym@_PL_Xpv];
        @i_@187i_5 = bits32[@i_@175i_sv];
        bits32[@i_@186i_4] = @i_@187i_5;
        $c0 when %eq[32](@i_@187i_5, 0) = sym@join@l584;
        join:l585:
        @i_@188i_6 = bits32[@i_@186i_4];
        @i_@189i_7 = %sx[8,32](bits8[bits32[@i_@188i_6]]);
        @i_@190i_8 = 48;
        $c0 when %gt[32](@i_@189i_7, @i_@190i_8) = sym@join@l582;
        join:l583:
        @i_@191i_9 = bits32[(@i_@188i_6+4)];
        $c0 when %gtu[32](@i_@191i_9, 1) = sym@join@l580;
        join:l581:
        $c0 when %eq[32](@i_@191i_9, 0) = sym@join@l578;
        join:l579:
        $c0 when %eq[32](@i_@189i_7, @i_@190i_8) = sym@join@l577;
        join:l615:
        $c0 = sym@@i_287;
        join:l577:
        $c0 = sym@@i_284;
        join:l578:
        $c0 = sym@@i_284;
        join:l580:
        $c0 = sym@@i_287;
        join:l582:
        $c0 = sym@@i_287;
        @i_287:
        @i_@181i_273 = 1;
        $c0 = sym@@i_285;
        join:l584:
        $c0 = sym@@i_284;
        @i_284:
        @i_@181i_273 = 0;
        $c0 = sym@@i_285;
        @i_285:
        @i_@180i_278 = @i_@181i_273;
        $c0 = sym@@i_283;
        join:l586:
        $c0 = sym@@i_282;
        @i_282:
        $c0 when %eq[32](%and[32](bits32[(@i_@175i_sv+8)], 65536), 0)
            = sym@join@l575;
        join:l576:
        $c0 when %eq[32](bits32[(bits32[@i_@175i_sv]+12)], 0)
            = sym@join@l573;
        join:l574:
        @i_@183i_277 = 1;
        $c0 = sym@@i_291;
        join:l573:
        $c0 = sym@@i_290;
        @i_290:
        @i_@183i_277 = 0;
        $c0 = sym@@i_291;
        @i_291:
        @i_@182i_276 = @i_@183i_277;
        $c0 = sym@@i_289;
        join:l575:
        $c0 = sym@@i_288;
        @i_288:
        $c0 when %eq[32](%and[32](bits32[(@i_@175i_sv+8)], 131072), 0)
            = sym@join@l571;
        join:l572:
        $c0
            when
            %eq[2](%fcmp[32](bits32[(bits32[@i_@175i_sv]+16)],
            bits32[bits32[sym@@f_296]]),
            %float_eq[]()) = sym@join@l569;
        join:l570:
        @i_@185i_275 = 1;
        $c0 = sym@@i_295;
        join:l569:
        $c0 = sym@@i_294;
        @i_294:
        @i_@185i_275 = 0;
        $c0 = sym@@i_295;
        @i_295:
        @i_@184i_274 = @i_@185i_275;
        $c0 = sym@@i_293;
        join:l571:
        $c0 = sym@@i_292;
        @i_292:
        $r0 = @i_@175i_sv;
        $c0, $r30 = bits32[sym@_Perl_sv_2bool], ($c0+4);
        join:l568:
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
        join:l602:
        $c0 = sym@@i_271;
        @i_271:
        $c0 = sym@@i_269;
        join:l607:
        $c0 = sym@@i_269;
        @i_269:
        @i_@172i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@172i_xhv], 0) = sym@join@l563;
        join:l564:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l563:
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
        $c0 when %ne[32](@i_@197i_12, 0) = sym@join@l560;
        join:l561:
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
        $c0 when %ne[32](@i_@174i_entry, 0) = sym@join@l548;
        join:l549:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l548:
        $c0 = sym@@i_305;
        @i_305:
        $c0
            when
            %eq[32](bits32[bits32[(@i_@174i_entry+4)]], @i_@173i_hash)
            = sym@join@l558;
        join:l559:
        $c0 = sym@@i_306;
        join:l558:
        $c0 = sym@@i_309;
        @i_309:
        @i_@199i_14 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@174i_entry+@i_@199i_14)]+
                @i_@199i_14)],
            @i_klen) = sym@join@l556;
        join:l557:
        $c0 = sym@@i_306;
        join:l556:
        $c0 = sym@@i_311;
        @i_311:
        $r0, $r1, $r2 = (bits32[(@i_@174i_entry+4)]+8), @i_key, @i_klen;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l555:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@200i_15 = $r0;
        $c0 when %eq[32](@i_@200i_15, 0) = sym@join@l551;
        join:l552:
        $c0 = sym@@i_306;
        @i_306:
        @i_@174i_entry = bits32[@i_@174i_entry];
        $c0 = sym@@i_308;
        join:l551:
        $c0 = sym@@i_313;
        @i_313:
        $r0 = 1;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l560:
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
        initialize continuations:l620:
        proc body start:l619:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l697;
        join:l698:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l697:
        $c0 = sym@@i_316;
        @i_316:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l694;
        join:l695:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l693:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@206i_1 = $r0;
        $c0 when %eq[32](@i_@206i_1, 0) = sym@join@l689;
        join:l690:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        join:l688:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@207i_2 = $r0;
        @i_@205i_sv = @i_@207i_2;
        $r0 = @i_keysv;
        $c0, $r30 = bits32[sym@_Perl_newSVsv], ($c0+4);
        join:l685:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@208i_3 = $r0;
        $r0 = @i_@208i_3;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        join:l682:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@209i_4 = $r0;
        @i_keysv = @i_@209i_4;
        $r0, $r1, $r2, $r3 = @i_hv, @i_@205i_sv, @i_keysv, -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l679:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0, $r1 = @i_@205i_sv, 112;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l676:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@210i_5 = $r0;
        $r0, $r1 = @i_@205i_sv, @i_@210i_5;
        $c0, $r30 = bits32[sym@_Perl_magic_existspack], ($c0+4);
        join:l673:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %ne[32](@i_@205i_sv, 0) = sym@join@l669;
        join:l670:
        @i_@211i_328 = 0;
        $c0 = sym@@i_330;
        join:l669:
        $c0 = sym@@i_329;
        @i_329:
        $c0 when %eq[32](%and[32](bits32[(@i_@205i_sv+8)], 262144), 0)
            = sym@join@l667;
        join:l668:
        @i_@218i_6 = bits32[sym@_PL_Xpv];
        @i_@219i_7 = bits32[@i_@205i_sv];
        bits32[@i_@218i_6] = @i_@219i_7;
        $c0 when %eq[32](@i_@219i_7, 0) = sym@join@l665;
        join:l666:
        @i_@220i_8 = bits32[@i_@218i_6];
        @i_@221i_9 = %sx[8,32](bits8[bits32[@i_@220i_8]]);
        @i_@222i_10 = 48;
        $c0 when %gt[32](@i_@221i_9, @i_@222i_10) = sym@join@l663;
        join:l664:
        @i_@223i_11 = bits32[(@i_@220i_8+4)];
        $c0 when %gtu[32](@i_@223i_11, 1) = sym@join@l661;
        join:l662:
        $c0 when %eq[32](@i_@223i_11, 0) = sym@join@l659;
        join:l660:
        $c0 when %eq[32](@i_@221i_9, @i_@222i_10) = sym@join@l658;
        join:l702:
        $c0 = sym@@i_336;
        join:l658:
        $c0 = sym@@i_333;
        join:l659:
        $c0 = sym@@i_333;
        join:l661:
        $c0 = sym@@i_336;
        join:l663:
        $c0 = sym@@i_336;
        @i_336:
        @i_@213i_322 = 1;
        $c0 = sym@@i_334;
        join:l665:
        $c0 = sym@@i_333;
        @i_333:
        @i_@213i_322 = 0;
        $c0 = sym@@i_334;
        @i_334:
        @i_@212i_327 = @i_@213i_322;
        $c0 = sym@@i_332;
        join:l667:
        $c0 = sym@@i_331;
        @i_331:
        $c0 when %eq[32](%and[32](bits32[(@i_@205i_sv+8)], 65536), 0)
            = sym@join@l656;
        join:l657:
        $c0 when %eq[32](bits32[(bits32[@i_@205i_sv]+12)], 0)
            = sym@join@l654;
        join:l655:
        @i_@215i_326 = 1;
        $c0 = sym@@i_340;
        join:l654:
        $c0 = sym@@i_339;
        @i_339:
        @i_@215i_326 = 0;
        $c0 = sym@@i_340;
        @i_340:
        @i_@214i_325 = @i_@215i_326;
        $c0 = sym@@i_338;
        join:l656:
        $c0 = sym@@i_337;
        @i_337:
        $c0 when %eq[32](%and[32](bits32[(@i_@205i_sv+8)], 131072), 0)
            = sym@join@l652;
        join:l653:
        $c0
            when
            %eq[2](%fcmp[32](bits32[(bits32[@i_@205i_sv]+16)],
            bits32[bits32[sym@@f_296]]),
            %float_eq[]()) = sym@join@l650;
        join:l651:
        @i_@217i_324 = 1;
        $c0 = sym@@i_344;
        join:l650:
        $c0 = sym@@i_343;
        @i_343:
        @i_@217i_324 = 0;
        $c0 = sym@@i_344;
        @i_344:
        @i_@216i_323 = @i_@217i_324;
        $c0 = sym@@i_342;
        join:l652:
        $c0 = sym@@i_341;
        @i_341:
        $r0 = @i_@205i_sv;
        $c0, $r30 = bits32[sym@_Perl_sv_2bool], ($c0+4);
        join:l649:
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
        join:l689:
        $c0 = sym@@i_320;
        @i_320:
        $c0 = sym@@i_318;
        join:l694:
        $c0 = sym@@i_318;
        @i_318:
        @i_@201i_xhv = bits32[@i_hv];
        $c0 when %ne[32](bits32[@i_@201i_xhv], 0) = sym@join@l644;
        join:l645:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l644:
        $c0 = sym@@i_345;
        @i_345:
        $c0 when %eq[32](%and[32](bits32[(@i_keysv+8)], 262144), 0)
            = sym@join@l641;
        join:l642:
        @i_@226i_13 = @i_keysv;
        bits32[($r31+24)] = bits32[(bits32[@i_@226i_13]+4)];
        @i_@225i_347 = bits32[bits32[@i_@226i_13]];
        $c0 = sym@@i_349;
        join:l641:
        $c0 = sym@@i_348;
        @i_348:
        $r0, $r1 = @i_keysv, bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        join:l640:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@227i_14 = $r0;
        @i_@225i_347 = @i_@227i_14;
        $c0 = sym@@i_349;
        @i_349:
        @i_@202i_key = @i_@225i_347;
        $c0 when %ne[32](@i_hash, 0) = sym@join@l637;
        @i_352:
        @i_@228i_s_PeRlHaSh = @i_@202i_key;
        @i_@229i_i_PeRlHaSh = bits32[bits32[($r31+24)]];
        @i_@230i_hash_PeRlHaSh = 0;
        $c0 = sym@@i_356;
        @i_356:
        @i_@232i_16 = @i_@229i_i_PeRlHaSh;
        @i_@229i_i_PeRlHaSh = (@i_@232i_16-1);
        $c0 when %ne[32](@i_@232i_16, 0) = sym@join@l635;
        join:l636:
        @i_hash = @i_@230i_hash_PeRlHaSh;
        @i_353:
        $c0 = sym@@i_350;
        join:l635:
        $c0 = sym@@i_355;
        @i_355:
        @i_@231i_15 = @i_@228i_s_PeRlHaSh;
        @i_@228i_s_PeRlHaSh = (@i_@231i_15+1);
        @i_@230i_hash_PeRlHaSh
            =
            (%mul[32](33, @i_@230i_hash_PeRlHaSh)+
                %sx[8,32](bits8[@i_@231i_15]));
        $c0 = sym@@i_356;
        join:l637:
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
        $c0 when %ne[32](@i_@203i_entry, 0) = sym@join@l623;
        join:l624:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l623:
        $c0 = sym@@i_358;
        @i_358:
        $c0 when %eq[32](bits32[bits32[(@i_@203i_entry+4)]], @i_hash)
            = sym@join@l633;
        join:l634:
        $c0 = sym@@i_359;
        join:l633:
        $c0 = sym@@i_362;
        @i_362:
        @i_@234i_18 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@203i_entry+@i_@234i_18)]+
                @i_@234i_18)],
            bits32[bits32[($r31+24)]]) = sym@join@l631;
        join:l632:
        $c0 = sym@@i_359;
        join:l631:
        $c0 = sym@@i_364;
        @i_364:
        $r0, $r1, $r2
            = (bits32[(@i_@203i_entry+4)]+8), @i_@202i_key,
            bits32[bits32[($r31+24)]];
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l630:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@235i_19 = $r0;
        $c0 when %eq[32](@i_@235i_19, 0) = sym@join@l626;
        join:l627:
        $c0 = sym@@i_359;
        @i_359:
        @i_@203i_entry = bits32[@i_@203i_entry];
        $c0 = sym@@i_361;
        join:l626:
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
        initialize continuations:l707:
        proc body start:l706:
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
        join:l739:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@246i_2 = $r0;
        @i_@239i_a = @i_@246i_2;
        $c0 when %ne[32](@i_@239i_a, 0) = sym@join@l735;
        join:l736:
        bits32[sym@_PL_nomemok] = 0;
        $c0 = sym@@i_368;
        join:l735:
        $c0 = sym@@i_369;
        @i_369:
        $r0, $r1, $r2
            = bits32[@i_@236i_xhv], @i_@239i_a,
            %mul[32](1, %shl[32](@i_@244i_oldsize, 2));
        $c0, $r30 = bits32[sym@_Perl_my_bcopy], ($c0+4);
        join:l734:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %lt[32](@i_@244i_oldsize, 64) = sym@join@l731;
        @i_373:
        $c0 when %ne[32](bits32[bits32[sym@_PL_nice_chunk]], 0)
            = sym@join@l729;
        join:l730:
        bits32[sym@_PL_nice_chunk] = bits32[@i_@236i_xhv];
        bits32[sym@_PL_nice_chunk_size]
            = (%shl[32](%shl[32](@i_@244i_oldsize, 2), 1)-16);
        $c0 = sym@@i_372;
        join:l729:
        $c0 = sym@@i_376;
        @i_376:
        $r0 = bits32[@i_@236i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l728:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_372;
        join:l731:
        $c0 = sym@@i_371;
        @i_371:
        $r0 = bits32[@i_@236i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l725:
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
        join:l722:
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
        $c0 when %lt[32](@i_@238i_i, @i_@244i_oldsize) = sym@join@l709;
        join:l743:
        $c0 = sym@@i_368;
        @i_368:
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l709:
        $c0 = sym@@i_378;
        @i_378:
        $c0 when %ne[32](bits32[@i_@240i_aep], 0) = sym@join@l718;
        join:l719:
        $c0 = sym@@i_379;
        join:l718:
        $c0 = sym@@i_382;
        @i_382:
        @i_@241i_bep = (%shl[32](@i_@244i_oldsize, 2)+@i_@240i_aep);
        @i_@243i_oentry = @i_@240i_aep;
        @i_@242i_entry = bits32[@i_@240i_aep];
        $c0 = sym@@i_387;
        @i_387:
        $c0 when %ne[32](@i_@242i_entry, 0) = sym@join@l712;
        join:l713:
        $c0 when %ne[32](bits32[@i_@240i_aep], 0) = sym@join@l710;
        join:l711:
        @i_@253i_9 = (@i_@236i_xhv+4);
        bits32[@i_@253i_9] = (bits32[@i_@253i_9]-1);
        $c0 = sym@@i_392;
        join:l710:
        $c0 = sym@@i_392;
        @i_392:
        $c0 = sym@@i_379;
        @i_379:
        @i_@238i_i = (@i_@238i_i+1);
        @i_@240i_aep = (@i_@240i_aep+4);
        $c0 = sym@@i_381;
        join:l712:
        $c0 = sym@@i_384;
        @i_384:
        $c0
            when
            %eq[32](%and[32](bits32[bits32[(@i_@242i_entry+4)]],
            @i_@237i_newsize),
            @i_@238i_i) = sym@join@l716;
        join:l717:
        bits32[@i_@243i_oentry] = bits32[@i_@242i_entry];
        bits32[@i_@242i_entry] = bits32[@i_@241i_bep];
        $c0 when %ne[32](bits32[@i_@241i_bep], 0) = sym@join@l714;
        join:l715:
        @i_@252i_8 = (@i_@236i_xhv+4);
        bits32[@i_@252i_8] = (bits32[@i_@252i_8]+1);
        $c0 = sym@@i_390;
        join:l714:
        $c0 = sym@@i_390;
        @i_390:
        bits32[@i_@241i_bep] = @i_@242i_entry;
        $c0 = sym@@i_385;
        join:l716:
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
        initialize continuations:l748:
        proc body start:l747:
        @i_@254i_xhv = bits32[@i_hv];
        @i_@262i_oldsize = (bits32[(@i_@254i_xhv+8)]+1);
        @i_@255i_newsize = @i_newmax;
        @i_@263i_1 = @i_newmax;
        $c0 when %ne[32](@i_@255i_newsize, @i_@263i_1) = sym@join@l798;
        join:l799:
        $c0 when %gt[32](@i_@263i_1, @i_@262i_oldsize) = sym@join@l797;
        join:l804:
        $c0 = sym@@i_397;
        join:l797:
        $c0 = sym@@i_399;
        @i_399:
        $c0
            when
            %ne[32](%and[32](@i_@255i_newsize,
            (%com[32](@i_@255i_newsize)+1)),
            @i_@255i_newsize) = sym@join@l795;
        join:l796:
        $c0 when %ge[32](@i_@255i_newsize, @i_newmax) = sym@join@l793;
        join:l794:
        @i_@255i_newsize = %shl[32](@i_@255i_newsize, 1);
        $c0 = sym@@i_401;
        join:l793:
        $c0 = sym@@i_401;
        @i_401:
        $c0 when %ge[32](@i_@255i_newsize, @i_newmax) = sym@join@l791;
        join:l792:
        $c0 = sym@@i_394;
        join:l791:
        $c0 = sym@@i_403;
        @i_403:
        @i_@258i_a = bits32[@i_@254i_xhv];
        $c0 when %eq[32](@i_@258i_a, 0) = sym@join@l789;
        join:l790:
        @i_@266i_4 = 1;
        bits32[sym@_PL_nomemok] = @i_@266i_4;
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32](@i_@255i_newsize, 2), @i_@266i_4)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l788:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@267i_5 = $r0;
        @i_@258i_a = @i_@267i_5;
        $c0 when %ne[32](@i_@258i_a, 0) = sym@join@l784;
        join:l785:
        bits32[sym@_PL_nomemok] = 0;
        $c0 = sym@@i_394;
        join:l784:
        $c0 = sym@@i_407;
        @i_407:
        $r0, $r1, $r2
            = bits32[@i_@254i_xhv], @i_@258i_a,
            %mul[32](1, %shl[32](@i_@262i_oldsize, 2));
        $c0, $r30 = bits32[sym@_Perl_my_bcopy], ($c0+4);
        join:l783:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %lt[32](@i_@262i_oldsize, 64) = sym@join@l780;
        @i_411:
        $c0 when %ne[32](bits32[bits32[sym@_PL_nice_chunk]], 0)
            = sym@join@l778;
        join:l779:
        bits32[sym@_PL_nice_chunk] = bits32[@i_@254i_xhv];
        bits32[sym@_PL_nice_chunk_size]
            = (%shl[32](%shl[32](@i_@262i_oldsize, 2), 1)-16);
        $c0 = sym@@i_410;
        join:l778:
        $c0 = sym@@i_414;
        @i_414:
        $r0 = bits32[@i_@254i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l777:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_410;
        join:l780:
        $c0 = sym@@i_409;
        @i_409:
        $r0 = bits32[@i_@254i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l774:
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
        join:l771:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_406;
        join:l789:
        $c0 = sym@@i_405;
        @i_405:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32](@i_@255i_newsize, 2), 1)-16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l768:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@271i_9 = $r0;
        @i_@258i_a = @i_@271i_9;
        $r0, $r1, $r2
            = @i_@258i_a, 0,
            %mul[32](1,
            (%shl[32](%shl[32](@i_@255i_newsize, 2), 1)-16));
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l765:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_406;
        @i_406:
        @i_@272i_10 = (@i_@255i_newsize-1);
        @i_@255i_newsize = @i_@272i_10;
        bits32[(@i_@254i_xhv+8)] = @i_@272i_10;
        bits32[@i_@254i_xhv] = @i_@258i_a;
        $c0 when %ne[32](bits32[(@i_@254i_xhv+4)], 0) = sym@join@l761;
        join:l762:
        $c0 = sym@@i_394;
        join:l761:
        $c0 = sym@@i_416;
        @i_416:
        @i_@259i_aep = @i_@258i_a;
        @i_@256i_i = 0;
        $c0 = sym@@i_421;
        @i_421:
        $c0 when %lt[32](@i_@256i_i, @i_@262i_oldsize) = sym@join@l750;
        join:l803:
        $c0 = sym@@i_394;
        join:l750:
        $c0 = sym@@i_418;
        @i_418:
        $c0 when %ne[32](bits32[@i_@259i_aep], 0) = sym@join@l759;
        join:l760:
        $c0 = sym@@i_419;
        join:l759:
        $c0 = sym@@i_422;
        @i_422:
        @i_@261i_oentry = @i_@259i_aep;
        @i_@260i_entry = bits32[@i_@259i_aep];
        $c0 = sym@@i_427;
        @i_427:
        $c0 when %ne[32](@i_@260i_entry, 0) = sym@join@l753;
        join:l754:
        $c0 when %ne[32](bits32[@i_@259i_aep], 0) = sym@join@l751;
        join:l752:
        @i_@277i_15 = (@i_@254i_xhv+4);
        bits32[@i_@277i_15] = (bits32[@i_@277i_15]-1);
        $c0 = sym@@i_432;
        join:l751:
        $c0 = sym@@i_432;
        @i_432:
        $c0 = sym@@i_419;
        @i_419:
        @i_@256i_i = (@i_@256i_i+1);
        @i_@259i_aep = (@i_@259i_aep+4);
        $c0 = sym@@i_421;
        join:l753:
        $c0 = sym@@i_424;
        @i_424:
        @i_@274i_12
            =
            %and[32](bits32[bits32[(@i_@260i_entry+4)]],
            @i_@255i_newsize);
        @i_@257i_j = @i_@274i_12;
        $c0 when %eq[32](@i_@274i_12, @i_@256i_i) = sym@join@l757;
        join:l758:
        @i_@257i_j = (@i_@257i_j-@i_@256i_i);
        bits32[@i_@261i_oentry] = bits32[@i_@260i_entry];
        @i_@275i_13 = bits32[(%shl[32](@i_@257i_j, 2)+@i_@259i_aep)];
        bits32[@i_@260i_entry] = @i_@275i_13;
        $c0 when %ne[32](@i_@275i_13, 0) = sym@join@l755;
        join:l756:
        @i_@276i_14 = (@i_@254i_xhv+4);
        bits32[@i_@276i_14] = (bits32[@i_@276i_14]+1);
        $c0 = sym@@i_430;
        join:l755:
        $c0 = sym@@i_430;
        @i_430:
        bits32[(%shl[32](@i_@257i_j, 2)+@i_@259i_aep)] = @i_@260i_entry;
        $c0 = sym@@i_425;
        join:l757:
        $c0 = sym@@i_428;
        @i_428:
        @i_@261i_oentry = @i_@260i_entry;
        $c0 = sym@@i_425;
        @i_425:
        @i_@260i_entry = bits32[@i_@261i_oentry];
        $c0 = sym@@i_427;
        join:l795:
        $c0 = sym@@i_398;
        @i_398:
        @i_@255i_newsize
            =
            %and[32](@i_@255i_newsize,
            %com[32](%and[32](@i_@255i_newsize,
            (%com[32](@i_@255i_newsize)+1))));
        $c0 = sym@@i_399;
        join:l798:
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
        initialize continuations:l809:
        proc body start:l808:
        $r0 = 0;
        $c0, $r30 = bits32[sym@_Perl_newSV], ($c0+4);
        join:l820:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@280i_1 = $r0;
        @i_@278i_hv = @i_@280i_1;
        $r0, $r1 = @i_@278i_hv, 11;
        $c0, $r30 = bits32[sym@_Perl_sv_upgrade], ($c0+4);
        join:l817:
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
        join:l814:
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
        initialize continuations:l828:
        proc body start:l827:
        $c0 when %eq[32](@i_ohv, 0) = sym@join@l855;
        join:l856:
        @i_@288i_436 = bits32[(bits32[@i_ohv]+8)];
        $c0 = sym@@i_438;
        join:l855:
        $c0 = sym@@i_437;
        @i_437:
        @i_@288i_436 = 0;
        $c0 = sym@@i_438;
        @i_438:
        @i_@286i_hv_max = @i_@288i_436;
        $c0 when %eq[32](@i_ohv, 0) = sym@join@l853;
        join:l854:
        @i_@289i_439 = bits32[(bits32[@i_ohv]+4)];
        $c0 = sym@@i_441;
        join:l853:
        $c0 = sym@@i_440;
        @i_440:
        @i_@289i_439 = 0;
        $c0 = sym@@i_441;
        @i_441:
        @i_@287i_hv_fill = @i_@289i_439;
        $c0, $r30 = bits32[sym@_Perl_newHV], ($c0+4);
        join:l852:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@290i_1 = $r0;
        @i_@285i_hv = @i_@290i_1;
        $c0 = sym@@i_443;
        @i_443:
        $c0 when %eq[32](@i_@286i_hv_max, 0) = sym@join@l848;
        join:l849:
        $c0
            when
            %geu[32]((@i_@286i_hv_max+1), %shl[32](@i_@287i_hv_fill, 1))
            = sym@join@l847;
        join:l860:
        $c0 = sym@@i_445;
        join:l847:
        $c0 = sym@@i_442;
        @i_442:
        @i_@286i_hv_max = %shrl[32](@i_@286i_hv_max, 1);
        $c0 = sym@@i_443;
        join:l848:
        $c0 = sym@@i_445;
        @i_445:
        bits32[(bits32[@i_@285i_hv]+8)] = @i_@286i_hv_max;
        $c0 when %ne[32](@i_@287i_hv_fill, 0) = sym@join@l845;
        join:l846:
        $r0 = @i_@285i_hv;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l845:
        $c0 = sym@@i_446;
        @i_446:
        @i_@293i_hv_riter = bits32[(bits32[@i_ohv]+28)];
        @i_@294i_hv_eiter = bits32[(bits32[@i_ohv]+32)];
        $r0 = @i_ohv;
        $c0, $r30 = bits32[sym@_Perl_hv_iterinit], ($c0+4);
        join:l843:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_449;
        @i_449:
        $r0 = @i_ohv;
        $c0, $r30 = bits32[sym@_Perl_hv_iternext], ($c0+4);
        join:l835:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@301i_9 = $r0;
        @i_@292i_entry = @i_@301i_9;
        $c0 when %ne[32](@i_@301i_9, 0) = sym@join@l831;
        join:l832:
        bits32[(bits32[@i_ohv]+28)] = @i_@293i_hv_riter;
        bits32[(bits32[@i_ohv]+32)] = @i_@294i_hv_eiter;
        $r0 = @i_@285i_hv;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l831:
        $c0 = sym@@i_448;
        @i_448:
        @i_@296i_4 = 4;
        @i_@297i_5 = bits32[(@i_@292i_entry+@i_@296i_4)];
        @i_@298i_6 = 8;
        bits32[sym@_PL_Sv] = bits32[(@i_@292i_entry+@i_@298i_6)];
        @i_@299i_7 = bits32[bits32[sym@_PL_Sv]];
        $c0 when %eq[32](@i_@299i_7, 0) = sym@join@l839;
        join:l840:
        @i_@300i_8 = (@i_@299i_7+4);
        bits32[@i_@300i_8] = (bits32[@i_@300i_8]+1);
        $c0 = sym@@i_452;
        join:l839:
        $c0 = sym@@i_452;
        @i_452:
        $r0, $r1, $r2, $r3, $r4
            = @i_@285i_hv, (@i_@297i_5+@i_@298i_6),
            bits32[(@i_@297i_5+@i_@296i_4)], bits32[bits32[sym@_PL_Sv]],
            bits32[bits32[(@i_@292i_entry+4)]];
        $c0, $r30 = bits32[sym@_Perl_hv_store], ($c0+4);
        join:l838:
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
        initialize continuations:l865:
        proc body start:l864:
        $c0 when %ne[32](@i_entry, 0) = sym@join@l899;
        join:l900:
        $c0 = sym@@i_453;
        join:l899:
        $c0 = sym@@i_454;
        @i_454:
        @i_@302i_val = bits32[(@i_entry+8)];
        $c0 when %eq[32](@i_@302i_val, 0) = sym@join@l897;
        join:l898:
        $c0 when %ne[32](%and[32](bits32[(@i_@302i_val+8)], 255), 13)
            = sym@join@l895;
        join:l896:
        $c0
            when
            %eq[32](bits32[(bits32[(bits32[@i_@302i_val]+28)]+32)], 0)
            = sym@join@l893;
        join:l894:
        @i_@303i_458 = 0;
        $c0 = sym@@i_460;
        join:l893:
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
        $c0 when %eq[32](@i_@303i_458, @i_@306i_3) = sym@join@l891;
        join:l892:
        $c0 when %eq[32](bits32[(bits32[@i_hv]+40)], @i_@306i_3)
            = sym@join@l889;
        join:l890:
        @i_@307i_4 = bits32[sym@_PL_sub_generation];
        bits32[@i_@307i_4] = (bits32[@i_@307i_4]+1);
        $c0 = sym@@i_456;
        join:l889:
        $c0 = sym@@i_456;
        join:l891:
        $c0 = sym@@i_456;
        join:l895:
        $c0 = sym@@i_456;
        join:l897:
        $c0 = sym@@i_456;
        @i_456:
        $r0 = @i_@302i_val;
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        join:l888:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@308i_5 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@308i_5)]+@i_@308i_5)],
            -2) = sym@join@l884;
        join:l885:
        $r0 = bits32[(bits32[(@i_entry+4)]+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        join:l883:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l880:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_462;
        join:l884:
        $c0 = sym@@i_461;
        @i_461:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@join@l876;
        join:l877:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_unshare_hek], ($c0+4);
        join:l875:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_464;
        join:l876:
        $c0 = sym@@i_463;
        @i_463:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l872:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_464;
        @i_464:
        $c0 = sym@@i_462;
        @i_462:
        $r0 = @i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        join:l869:
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
        initialize continuations:l908:
        proc body start:l907:
        $c0 when %ne[32](@i_entry, 0) = sym@join@l940;
        join:l941:
        $c0 = sym@@i_465;
        join:l940:
        $c0 = sym@@i_466;
        @i_466:
        @i_@310i_1 = 8;
        @i_@311i_2 = bits32[(@i_entry+@i_@310i_1)];
        $c0
            when
            %ne[32](%and[32](bits32[(@i_@311i_2+@i_@310i_1)], 255), 13)
            = sym@join@l938;
        join:l939:
        $c0
            when
            %eq[32](bits32[(bits32[(bits32[@i_@311i_2]+28)]+32)], 0)
            = sym@join@l936;
        join:l937:
        @i_@309i_470 = 0;
        $c0 = sym@@i_472;
        join:l936:
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
        $c0 when %eq[32](@i_@309i_470, @i_@313i_4) = sym@join@l934;
        join:l935:
        $c0 when %eq[32](bits32[(bits32[@i_hv]+40)], @i_@313i_4)
            = sym@join@l932;
        join:l933:
        @i_@314i_5 = bits32[sym@_PL_sub_generation];
        bits32[@i_@314i_5] = (bits32[@i_@314i_5]+1);
        $c0 = sym@@i_468;
        join:l932:
        $c0 = sym@@i_468;
        join:l934:
        $c0 = sym@@i_468;
        join:l938:
        $c0 = sym@@i_468;
        @i_468:
        $r0 = bits32[(@i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        join:l931:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@315i_6 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@315i_6)]+@i_@315i_6)],
            -2) = sym@join@l927;
        join:l928:
        $r0 = bits32[(bits32[(@i_entry+4)]+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        join:l926:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l923:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_474;
        join:l927:
        $c0 = sym@@i_473;
        @i_473:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 536870912), 0)
            = sym@join@l919;
        join:l920:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_unshare_hek], ($c0+4);
        join:l918:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_476;
        join:l919:
        $c0 = sym@@i_475;
        @i_475:
        $r0 = bits32[(@i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l915:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_476;
        @i_476:
        $c0 = sym@@i_474;
        @i_474:
        $r0 = @i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        join:l912:
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
        initialize continuations:l949:
        proc body start:l948:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l964;
        join:l965:
        $c0 = sym@@i_477;
        join:l964:
        $c0 = sym@@i_478;
        @i_478:
        @i_@317i_1 = @i_hv;
        @i_@316i_xhv = bits32[@i_@317i_1];
        $r0 = @i_@317i_1;
        $c0, $r30 = bits32[sym@@i_hfreeentries], ($c0+4);
        join:l963:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(@i_@316i_xhv+4)] = 0;
        bits32[(@i_@316i_xhv+12)] = 0;
        $c0 when %eq[32](bits32[@i_@316i_xhv], 0) = sym@join@l959;
        join:l960:
        $r0, $r1, $r2
            = bits32[@i_@316i_xhv], 0,
            %shl[32]((bits32[(@i_@316i_xhv+8)]+1), 2);
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l958:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_480;
        join:l959:
        $c0 = sym@@i_480;
        @i_480:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l954;
        join:l955:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        join:l953:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_482;
        join:l954:
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
        initialize continuations:l973:
        proc body start:l972:
        @i_@321i_oentry = 0;
        $c0 when %ne[32](@i_hv, 0) = sym@join@l989;
        join:l990:
        $c0 = sym@@i_484;
        join:l989:
        $c0 = sym@@i_485;
        @i_485:
        $c0 when %ne[32](bits32[bits32[@i_hv]], 0) = sym@join@l987;
        join:l988:
        $c0 = sym@@i_484;
        join:l987:
        $c0 = sym@@i_487;
        @i_487:
        @i_@322i_riter = 0;
        @i_@324i_1 = @i_hv;
        @i_@323i_max = bits32[(bits32[@i_@324i_1]+8)];
        @i_@319i_array = bits32[bits32[@i_@324i_1]];
        @i_@320i_entry = bits32[@i_@319i_array];
        $c0 = sym@@i_489;
        @i_489:
        $c0 when %eq[32](@i_@320i_entry, 0) = sym@join@l985;
        join:l986:
        @i_@321i_oentry = @i_@320i_entry;
        @i_@320i_entry = bits32[@i_@320i_entry];
        $r0, $r1 = @i_hv, @i_@321i_oentry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        join:l984:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_493;
        join:l985:
        $c0 = sym@@i_493;
        @i_493:
        $c0 when %ne[32](@i_@320i_entry, 0) = sym@join@l980;
        join:l981:
        @i_@326i_3 = (@i_@322i_riter+1);
        @i_@322i_riter = @i_@326i_3;
        $c0 when %le[32](@i_@326i_3, @i_@323i_max) = sym@join@l978;
        join:l979:
        $c0 = sym@@i_491;
        @i_491:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_hv_iterinit], ($c0+4);
        join:l977:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_484;
        @i_484:
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l978:
        $c0 = sym@@i_497;
        @i_497:
        @i_@320i_entry
            = bits32[(%shl[32](@i_@322i_riter, 2)+@i_@319i_array)];
        $c0 = sym@@i_489;
        join:l980:
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
        initialize continuations:l998:
        proc body start:l997:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l1016;
        join:l1017:
        $c0 = sym@@i_499;
        join:l1016:
        $c0 = sym@@i_500;
        @i_500:
        @i_@328i_1 = @i_hv;
        @i_@327i_xhv = bits32[@i_@328i_1];
        $r0 = @i_@328i_1;
        $c0, $r30 = bits32[sym@@i_hfreeentries], ($c0+4);
        join:l1015:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = bits32[@i_@327i_xhv];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l1012:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 when %eq[32](bits32[(bits32[@i_hv]+40)], 0)
            = sym@join@l1008;
        join:l1009:
        $r0 = bits32[(bits32[@i_hv]+40)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l1007:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(bits32[@i_hv]+40)] = 0;
        $c0 = sym@@i_502;
        join:l1008:
        $c0 = sym@@i_502;
        @i_502:
        bits32[@i_@327i_xhv] = 0;
        bits32[(@i_@327i_xhv+8)] = 7;
        bits32[(@i_@327i_xhv+4)] = 0;
        bits32[(@i_@327i_xhv+12)] = 0;
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l1003;
        join:l1004:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_mg_clear], ($c0+4);
        join:l1002:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_504;
        join:l1003:
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
        initialize continuations:l1025:
        proc body start:l1024:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l1038;
        join:l1039:
        $r0 = bits32[sym@@i_509];
        $c0, $r30 = bits32[sym@_Perl_croak], ($c0+4);
        join:l1037:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_507;
        join:l1038:
        $c0 = sym@@i_507;
        @i_507:
        @i_@329i_xhv = bits32[@i_hv];
        @i_@330i_entry = bits32[(@i_@329i_xhv+32)];
        $c0 when %eq[32](@i_@330i_entry, 0) = sym@join@l1033;
        join:l1034:
        $c0
            when
            %eq[32](%and[32](bits32[(@i_hv+8)], 0x40000000::bits32), 0)
            = sym@join@l1031;
        join:l1032:
        @i_@331i_1 = (@i_hv+8);
        bits32[@i_@331i_1]
            = %and[32](bits32[@i_@331i_1], 0xffffffffbfffffff::bits32);
        $r0, $r1 = @i_hv, @i_@330i_entry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        join:l1030:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_510;
        join:l1031:
        $c0 = sym@@i_510;
        join:l1033:
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
        initialize continuations:l1047:
        proc body start:l1046:
        $c0 when %ne[32](@i_hv, 0) = sym@join@l1137;
        join:l1138:
        $r0 = bits32[sym@@i_509];
        $c0, $r30 = bits32[sym@_Perl_croak], ($c0+4);
        join:l1136:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_513;
        join:l1137:
        $c0 = sym@@i_513;
        @i_513:
        @i_@337i_1 = @i_hv;
        @i_@332i_xhv = bits32[@i_@337i_1];
        @i_@338i_2 = bits32[(@i_@332i_xhv+32)];
        @i_@333i_entry = @i_@338i_2;
        @i_@334i_oldentry = @i_@338i_2;
        $c0 when %eq[32](%and[32](bits32[(@i_@337i_1+8)], 32768), 0)
            = sym@join@l1132;
        join:l1133:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l1131:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@339i_3 = $r0;
        @i_@336i_517 = @i_@339i_3;
        $c0 = sym@@i_519;
        join:l1132:
        $c0 = sym@@i_518;
        @i_518:
        @i_@336i_517 = 0;
        $c0 = sym@@i_519;
        @i_519:
        @i_@335i_mg = @i_@336i_517;
        $c0 when %eq[32](@i_@336i_517, 0) = sym@join@l1127;
        join:l1128:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        join:l1126:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@342i_5 = $r0;
        @i_@341i_key = @i_@342i_5;
        $c0 when %eq[32](@i_@333i_entry, 0) = sym@join@l1122;
        join:l1123:
        $c0 when %eq[32]((bits32[(@i_@333i_entry+4)]+8), 0)
            = sym@join@l1120;
        join:l1121:
        @i_@345i_6 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_@333i_entry+@i_@345i_6)]+
                @i_@345i_6)],
            -2) = sym@join@l1118;
        join:l1119:
        @i_@344i_522 = bits32[(bits32[(@i_@333i_entry+4)]+8)];
        $c0 = sym@@i_527;
        join:l1118:
        $c0 = sym@@i_526;
        @i_526:
        @i_@346i_7 = 4;
        @i_@347i_8 = bits32[(@i_@333i_entry+@i_@346i_7)];
        $r0, $r1 = (@i_@347i_8+8), bits32[(@i_@347i_8+@i_@346i_7)];
        $c0, $r30 = bits32[sym@_Perl_newSVpv], ($c0+4);
        join:l1117:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@348i_9 = $r0;
        $r0 = @i_@348i_9;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        join:l1114:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@349i_10 = $r0;
        @i_@344i_522 = @i_@349i_10;
        $c0 = sym@@i_527;
        @i_527:
        @i_@343i_523 = @i_@344i_522;
        $c0 = sym@@i_525;
        join:l1120:
        $c0 = sym@@i_524;
        @i_524:
        @i_@343i_523 = bits32[sym@_PL_sv_undef];
        $c0 = sym@@i_525;
        @i_525:
        $r0, $r1 = @i_@341i_key, @i_@343i_523;
        $c0, $r30 = bits32[sym@_Perl_sv_setsv], ($c0+4);
        join:l1111:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@351i_11 = 4;
        @i_@352i_12 = bits32[(@i_@333i_entry+@i_@351i_11)];
        $c0 when %eq[32]((@i_@352i_12+8), 0) = sym@join@l1107;
        join:l1108:
        $c0 when %ne[32](bits32[(@i_@352i_12+@i_@351i_11)], -2)
            = sym@join@l1105;
        join:l1106:
        @i_@350i_528 = bits32[(bits32[(@i_@333i_entry+4)]+8)];
        $c0 = sym@@i_530;
        join:l1105:
        $c0 = sym@@i_529;
        join:l1107:
        $c0 = sym@@i_529;
        @i_529:
        @i_@350i_528 = 0;
        $c0 = sym@@i_530;
        @i_530:
        $r0 = @i_@350i_528;
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        join:l1104:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_521;
        join:l1122:
        $c0 = sym@@i_520;
        @i_520:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        join:l1101:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@355i_13 = $r0;
        @i_@333i_entry = @i_@355i_13;
        bits32[(@i_@332i_xhv+32)] = @i_@355i_13;
        $r0, $r1, $r2 = @i_@333i_entry, 0, 12;
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l1098:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = 12;
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l1095:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@356i_14 = $r0;
        @i_@353i_k = @i_@356i_14;
        $r0, $r1, $r2 = @i_@353i_k, 0, 12;
        $c0, $r30 = bits32[sym@_memset], ($c0+4);
        join:l1092:
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
        join:l1089:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0
            when
            %eq[32](%and[32](bits32[(@i_@341i_key+8)], 118423552), 0)
            = sym@join@l1085;
        join:l1086:
        @i_@358i_16 = 4;
        bits32[(bits32[(@i_@333i_entry+@i_@358i_16)]+@i_@358i_16)] = -2;
        bits32[sym@_PL_Sv] = @i_@341i_key;
        @i_@359i_17 = bits32[bits32[sym@_PL_Sv]];
        $c0 when %eq[32](@i_@359i_17, 0) = sym@join@l1083;
        join:l1084:
        @i_@360i_18 = (@i_@359i_17+4);
        bits32[@i_@360i_18] = (bits32[@i_@360i_18]+1);
        $c0 = sym@@i_534;
        join:l1083:
        $c0 = sym@@i_534;
        @i_534:
        bits32[(bits32[(@i_@333i_entry+4)]+8)]
            = bits32[bits32[sym@_PL_Sv]];
        $r0 = @i_@333i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l1085:
        $c0 = sym@@i_531;
        @i_531:
        $c0 when %eq[32](bits32[(@i_@333i_entry+8)], 0)
            = sym@join@l1080;
        join:l1081:
        $r0 = bits32[(@i_@333i_entry+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_free], ($c0+4);
        join:l1079:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_535;
        join:l1080:
        $c0 = sym@@i_535;
        @i_535:
        $r0 = bits32[(@i_@333i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l1076:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@333i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        join:l1073:
        $r31 = $r31;
        // the preceding node is merely asserted
        bits32[(@i_@332i_xhv+32)] = 0;
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l1127:
        $c0 = sym@@i_515;
        @i_515:
        $c0 when %ne[32](bits32[@i_@332i_xhv], 0) = sym@join@l1068;
        join:l1069:
        $r0
            =
            %mul[32](1,
            (%shl[32](%shl[32]((bits32[(@i_@332i_xhv+8)]+1), 2), 1)-
                16));
        $c0, $r30 = bits32[sym@_Perl_safemalloc], ($c0+4);
        join:l1067:
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
        join:l1064:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_537;
        join:l1068:
        $c0 = sym@@i_537;
        @i_537:
        $c0 when %eq[32](@i_@333i_entry, 0) = sym@join@l1060;
        join:l1061:
        @i_@333i_entry = bits32[@i_@333i_entry];
        $c0 = sym@@i_542;
        join:l1060:
        $c0 = sym@@i_542;
        @i_542:
        $c0 when %eq[32](@i_@333i_entry, 0) = sym@join@l1057;
        join:l1142:
        $c0 = sym@@i_543;
        join:l1057:
        $c0 = sym@@i_541;
        @i_541:
        @i_@364i_22 = (@i_@332i_xhv+28);
        bits32[@i_@364i_22] = (bits32[@i_@364i_22]+1);
        $c0
            when
            %leu[32](bits32[(@i_@332i_xhv+28)],
            bits32[(@i_@332i_xhv+8)]) = sym@join@l1058;
        join:l1059:
        bits32[(@i_@332i_xhv+28)] = -1;
        $c0 = sym@@i_543;
        @i_543:
        $c0 when %eq[32](@i_@334i_oldentry, 0) = sym@join@l1055;
        join:l1056:
        $c0
            when
            %eq[32](%and[32](bits32[(@i_hv+8)], 0x40000000::bits32), 0)
            = sym@join@l1053;
        join:l1054:
        @i_@367i_25 = (@i_hv+8);
        bits32[@i_@367i_25]
            = %and[32](bits32[@i_@367i_25], 0xffffffffbfffffff::bits32);
        $r0, $r1 = @i_hv, @i_@334i_oldentry;
        $c0, $r30 = bits32[sym@_Perl_hv_free_ent], ($c0+4);
        join:l1052:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_546;
        join:l1053:
        $c0 = sym@@i_546;
        join:l1055:
        $c0 = sym@@i_546;
        @i_546:
        bits32[(@i_@332i_xhv+32)] = @i_@333i_entry;
        $r0 = @i_@333i_entry;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l1058:
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
        initialize continuations:l1147:
        proc body start:l1146:
        @i_@368i_1 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@368i_1)]+@i_@368i_1)],
            -2) = sym@join@l1156;
        join:l1157:
        @i_@372i_2 = 8;
        $c0
            when
            %eq[32](%and[32](bits32[(bits32[(bits32[(@i_entry+4)]+
                @i_@372i_2)]+
                @i_@372i_2)],
            262144),
            0) = sym@join@l1154;
        join:l1155:
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
        join:l1154:
        $c0 = sym@@i_552;
        @i_552:
        $r0, $r1 = bits32[(bits32[(@i_entry+4)]+8)], bits32[($r31+24)];
        $c0, $r30 = bits32[sym@_Perl_sv_2pv], ($c0+4);
        join:l1153:
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
        join:l1156:
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
        initialize continuations:l1165:
        proc body start:l1164:
        @i_@378i_1 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@378i_1)]+@i_@378i_1)],
            -2) = sym@join@l1180;
        join:l1181:
        $r0 = bits32[(bits32[(@i_entry+4)]+8)];
        $c0, $r30 = bits32[sym@_Perl_sv_mortalcopy], ($c0+4);
        join:l1179:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@379i_2 = $r0;
        $r0 = @i_@379i_2;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l1180:
        $c0 = sym@@i_555;
        @i_555:
        @i_@381i_3 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_entry+@i_@381i_3)]+@i_@381i_3)],
            0) = sym@join@l1174;
        join:l1175:
        @i_@380i_558 = (bits32[(@i_entry+4)]+8);
        $c0 = sym@@i_560;
        join:l1174:
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
        join:l1173:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@383i_5 = $r0;
        $r0 = @i_@383i_5;
        $c0, $r30 = bits32[sym@_Perl_sv_2mortal], ($c0+4);
        join:l1170:
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
        initialize continuations:l1189:
        proc body start:l1188:
        $c0 when %eq[32](%and[32](bits32[(@i_hv+8)], 32768), 0)
            = sym@join@l1209;
        join:l1210:
        $r0, $r1 = @i_hv, 80;
        $c0, $r30 = bits32[sym@_Perl_mg_find], ($c0+4);
        join:l1208:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@385i_1 = $r0;
        $c0 when %eq[32](@i_@385i_1, 0) = sym@join@l1204;
        join:l1205:
        $c0, $r30 = bits32[sym@_Perl_sv_newmortal], ($c0+4);
        join:l1203:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@387i_2 = $r0;
        @i_@386i_sv = @i_@387i_2;
        @i_@388i_3 = 4;
        $c0
            when
            %ne[32](bits32[(bits32[(@i_entry+@i_@388i_3)]+@i_@388i_3)],
            -2) = sym@join@l1199;
        join:l1200:
        $r0, $r1, $r2, $r3
            = @i_hv, @i_@386i_sv, bits32[(bits32[(@i_entry+4)]+8)], -2;
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l1198:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_567;
        join:l1199:
        $c0 = sym@@i_566;
        @i_566:
        @i_@389i_4 = 4;
        @i_@390i_5 = bits32[(@i_entry+@i_@389i_4)];
        $r0, $r1, $r2, $r3
            = @i_hv, @i_@386i_sv, (@i_@390i_5+8),
            bits32[(@i_@390i_5+@i_@389i_4)];
        $c0, $r30 = bits32[sym@_Perl_mg_copy], ($c0+4);
        join:l1195:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_567;
        @i_567:
        $r0 = @i_@386i_sv;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l1204:
        $c0 = sym@@i_564;
        @i_564:
        $c0 = sym@@i_562;
        join:l1209:
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
        initialize continuations:l1218:
        proc body start:l1217:
        $r0 = @i_hv;
        $c0, $r30 = bits32[sym@_Perl_hv_iternext], ($c0+4);
        join:l1232:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@392i_1 = $r0;
        @i_@391i_he = @i_@392i_1;
        $c0 when %ne[32](@i_@392i_1, 0) = sym@join@l1228;
        join:l1229:
        $r0 = 0;
        $r31 = ($r31+24);
        $c0 = $t1;
        join:l1228:
        $c0 = sym@@i_569;
        @i_569:
        $r0, $r1 = @i_@391i_he, @i_retlen;
        $c0, $r30 = bits32[sym@_Perl_hv_iterkey], ($c0+4);
        join:l1226:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@393i_2 = $r0;
        bits32[@i_key] = @i_@393i_2;
        $r0, $r1 = @i_hv, @i_@391i_he;
        $c0, $r30 = bits32[sym@_Perl_hv_iterval], ($c0+4);
        join:l1223:
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
        initialize continuations:l1240:
        proc body start:l1239:
        $r0, $r1, $r2, $r3, $r4 = @i_hv, @i_gv, @i_how, 0, 0;
        $c0, $r30 = bits32[sym@_Perl_sv_magic], ($c0+4);
        join:l1244:
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
        initialize continuations:l1252:
        proc body start:l1251:
        $r0, $r1, $r2 = @i_sv, @i_len, @i_hash;
        $c0, $r30 = bits32[sym@_Perl_share_hek], ($c0+4);
        join:l1257:
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
        initialize continuations:l1265:
        proc body start:l1264:
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
        $c0 when %ne[32](@i_@397i_entry, 0) = sym@join@l1272;
        join:l1297:
        $c0 = sym@@i_576;
        join:l1272:
        $c0 = sym@@i_574;
        @i_574:
        $c0 when %eq[32](bits32[bits32[(@i_@397i_entry+4)]], @i_hash)
            = sym@join@l1292;
        join:l1293:
        $c0 = sym@@i_575;
        join:l1292:
        $c0 = sym@@i_578;
        @i_578:
        @i_@402i_2 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@397i_entry+@i_@402i_2)]+
                @i_@402i_2)],
            @i_len) = sym@join@l1290;
        join:l1291:
        $c0 = sym@@i_575;
        join:l1290:
        $c0 = sym@@i_580;
        @i_580:
        $r0, $r1, $r2 = (bits32[(@i_@397i_entry+4)]+8), @i_str, @i_len;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l1289:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@403i_3 = $r0;
        $c0 when %eq[32](@i_@403i_3, 0) = sym@join@l1285;
        join:l1286:
        $c0 = sym@@i_575;
        @i_575:
        @i_@399i_i = 0;
        @i_@398i_oentry = @i_@397i_entry;
        @i_@397i_entry = bits32[@i_@398i_oentry];
        $c0 = sym@@i_577;
        join:l1285:
        $c0 = sym@@i_582;
        @i_582:
        @i_@400i_found = 1;
        @i_@404i_4 = (@i_@397i_entry+8);
        @i_@405i_5 = (bits32[@i_@404i_4]+-12);
        bits32[@i_@404i_4] = @i_@405i_5;
        $c0 when %ne[32](@i_@405i_5, 0) = sym@join@l1283;
        join:l1284:
        bits32[@i_@398i_oentry] = bits32[@i_@397i_entry];
        $c0 when %eq[32](@i_@399i_i, 0) = sym@join@l1281;
        join:l1282:
        $c0 when %ne[32](bits32[@i_@398i_oentry], 0) = sym@join@l1279;
        join:l1280:
        @i_@406i_6 = (@i_@396i_xhv+4);
        bits32[@i_@406i_6] = (bits32[@i_@406i_6]-1);
        $c0 = sym@@i_586;
        join:l1279:
        $c0 = sym@@i_586;
        join:l1281:
        $c0 = sym@@i_586;
        @i_586:
        $r0 = bits32[(@i_@397i_entry+4)];
        $c0, $r30 = bits32[sym@_Perl_safefree], ($c0+4);
        join:l1278:
        $r31 = $r31;
        // the preceding node is merely asserted
        $r0 = @i_@397i_entry;
        $c0, $r30 = bits32[sym@@i_del_he], ($c0+4);
        join:l1275:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@407i_7 = (@i_@396i_xhv+12);
        bits32[@i_@407i_7] = (bits32[@i_@407i_7]-1);
        $c0 = sym@@i_576;
        join:l1283:
        $c0 = sym@@i_576;
        @i_576:
        $c0 when %ne[32](@i_@400i_found, 0) = sym@join@l1270;
        join:l1271:
        $r0 = bits32[sym@@i_590];
        $c0, $r30 = bits32[sym@_Perl_warn], ($c0+4);
        join:l1269:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_588;
        join:l1270:
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
        initialize continuations:l1302:
        proc body start:l1301:
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
        $c0 when %ne[32](@i_@409i_entry, 0) = sym@join@l1320;
        join:l1333:
        $c0 = sym@@i_594;
        join:l1320:
        $c0 = sym@@i_592;
        @i_592:
        $c0 when %eq[32](bits32[bits32[(@i_@409i_entry+4)]], @i_hash)
            = sym@join@l1328;
        join:l1329:
        $c0 = sym@@i_593;
        join:l1328:
        $c0 = sym@@i_596;
        @i_596:
        @i_@414i_2 = 4;
        $c0
            when
            %eq[32](bits32[(bits32[(@i_@409i_entry+@i_@414i_2)]+
                @i_@414i_2)],
            @i_len) = sym@join@l1326;
        join:l1327:
        $c0 = sym@@i_593;
        join:l1326:
        $c0 = sym@@i_598;
        @i_598:
        $r0, $r1, $r2 = (bits32[(@i_@409i_entry+4)]+8), @i_str, @i_len;
        $c0, $r30 = bits32[sym@_Perl_my_memcmp], ($c0+4);
        join:l1325:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@415i_3 = $r0;
        $c0 when %eq[32](@i_@415i_3, 0) = sym@join@l1321;
        join:l1322:
        $c0 = sym@@i_593;
        @i_593:
        @i_@411i_i = 0;
        @i_@409i_entry = bits32[@i_@409i_entry];
        $c0 = sym@@i_595;
        join:l1321:
        $c0 = sym@@i_600;
        @i_600:
        @i_@412i_found = 1;
        $c0 = sym@@i_594;
        @i_594:
        $c0 when %ne[32](@i_@412i_found, 0) = sym@join@l1318;
        join:l1319:
        $c0, $r30 = bits32[sym@@i_new_he], ($c0+4);
        join:l1317:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@416i_4 = $r0;
        @i_@409i_entry = @i_@416i_4;
        $r0, $r1, $r2 = @i_str, @i_len, @i_hash;
        $c0, $r30 = bits32[sym@@i_save_hek], ($c0+4);
        join:l1314:
        $r31 = $r31;
        // the preceding node is merely asserted
        @i_@417i_5 = $r0;
        bits32[(@i_@409i_entry+4)] = @i_@417i_5;
        bits32[(@i_@409i_entry+8)] = 0;
        bits32[@i_@409i_entry] = bits32[@i_@410i_oentry];
        bits32[@i_@410i_oentry] = @i_@409i_entry;
        @i_@418i_6 = (@i_@408i_xhv+12);
        bits32[@i_@418i_6] = (bits32[@i_@418i_6]+1);
        $c0 when %eq[32](@i_@411i_i, 0) = sym@join@l1310;
        join:l1311:
        @i_@419i_7 = (@i_@408i_xhv+4);
        bits32[@i_@419i_7] = (bits32[@i_@419i_7]+1);
        $c0
            when
            %leu[32](bits32[(@i_@408i_xhv+12)],
            bits32[(@i_@408i_xhv+8)]) = sym@join@l1308;
        join:l1309:
        $r0 = bits32[bits32[sym@_PL_strtab]];
        $c0, $r30 = bits32[sym@@i_hsplit], ($c0+4);
        join:l1307:
        $r31 = $r31;
        // the preceding node is merely asserted
        $c0 = sym@@i_606;
        join:l1308:
        $c0 = sym@@i_606;
        @i_606:
        $c0 = sym@@i_604;
        join:l1310:
        $c0 = sym@@i_604;
        @i_604:
        $c0 = sym@@i_602;
        join:l1318:
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

section "data" { bits32[1::bits32] { 41::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 6d::bits32 }; }

section "data" { bits32[1::bits32] { 70::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 66::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 6f::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 2d::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 78::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 68::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 65::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 74::bits32 }; }

section "data" { bits32[1::bits32] { 72::bits32 }; }

section "data" { bits32[1::bits32] { 69::bits32 }; }

section "data" { bits32[1::bits32] { 6e::bits32 }; }

section "data" { bits32[1::bits32] { 67::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" { sym@@i_557: }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" { sym@@i_509: }

section "data" { bits32[1::bits32] { 42::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 64::bits32 }; }

section "data" { bits32[1::bits32] { 20::bits32 }; }

section "data" { bits32[1::bits32] { 68::bits32 }; }

section "data" { bits32[1::bits32] { 61::bits32 }; }

section "data" { bits32[1::bits32] { 73::bits32 }; }

section "data" { bits32[1::bits32] { 68::bits32 }; }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" { align 4; }

section "data" { sym@@f_296: }

section "data" { bits32[1::bits32] { 0::bits32 }; }

section "data" {  }

