(*
  Machine generated. Edit at your own risk 
  Reproduce with the following
 --line_width=74
 --no_action=false
 --output_directory=.
 --pickler=sexp
 --view=OCaml
 *)
(* module RtlasdlUtil*)
  
  let rec sexp_rd_space s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_space" s_);
        let tmp_ = let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
          (int1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_width s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_width" s_);
        let tmp_ = let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
          (int1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_aligned s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_aligned" s_);
        let tmp_ = let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
          (int1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_assertion s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_assertion" s_);
        let tmp_ = let aligned1 = (sexp_rd_aligned s_) in
          (aligned1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_bool s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_bool" s_);
        let tmp_ = let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
          (int1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_bits s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_bits" s_);
        let tmp_ = let string1 = (StdPrimsUtil.sexp_rd_std_string s_) in
          let width1 = (sexp_rd_width s_) in
          (string1, width1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_aggregration s_ = 
      begin
        (SexpPkl.rd_lp s_);
        let tmp_ = let t = (SexpPkl.get_sym s_) in
          (match (t) with 
              "rtlasdl_BigEndian" -> Rtlasdl.BigEndian
            | "rtlasdl_LittleEndian" -> Rtlasdl.LittleEndian
            | "rtlasdl_Identity" -> Rtlasdl.Identity
            | _ -> (SexpPkl.die ()))
          (* end match *) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_opr s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_opr" s_);
        let tmp_ = let string1 = (StdPrimsUtil.sexp_rd_std_string s_) in
          let width_list1 = (SexpPkl.rd_list sexp_rd_width s_) in
          (string1, width_list1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_kind s_ = 
      begin
        (SexpPkl.rd_lp s_);
        let tmp_ = let t = (SexpPkl.get_sym s_) in
          (match (t) with 
              "rtlasdl_Code" -> Rtlasdl.Code
            | "rtlasdl_Data" -> Rtlasdl.Data
            | "rtlasdl_Imported" -> Rtlasdl.Imported
            | _ -> (SexpPkl.die ()))
          (* end match *) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_const s_ = 
      begin
        (SexpPkl.rd_lp s_);
        let tmp_ = let t = (SexpPkl.get_sym s_) in
          (match (t) with 
              "rtlasdl_Bool" -> let bool1 = (sexp_rd_bool s_) in
              Rtlasdl.Bool(bool1)
            | "rtlasdl_Bits" -> let bits1 = (sexp_rd_bits s_) in
              Rtlasdl.Bits(bits1)
            | "rtlasdl_Link" -> let string1 = (StdPrimsUtil.sexp_rd_std_string s_) in
              let kind1 = (sexp_rd_kind s_) in
              let width1 = (sexp_rd_width s_) in
              Rtlasdl.Link(string1, kind1, width1)
            | "rtlasdl_Diff" -> let const1 = (sexp_rd_const s_) in
              let const2 = (sexp_rd_const s_) in
              Rtlasdl.Diff(const1, const2)
            | "rtlasdl_Late" -> let string1 = (StdPrimsUtil.sexp_rd_std_string s_) in
              let width1 = (sexp_rd_width s_) in
              Rtlasdl.Late(string1, width1)
            | _ -> (SexpPkl.die ()))
          (* end match *) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_loc s_ = 
      begin
        (SexpPkl.rd_lp s_);
        let tmp_ = let t = (SexpPkl.get_sym s_) in
          (match (t) with 
              "rtlasdl_Mem" -> let space1 = (sexp_rd_space s_) in
              let aggregration1 = (sexp_rd_aggregration s_) in
              let width1 = (sexp_rd_width s_) in
              let exp1 = (sexp_rd_exp s_) in
              let assertion1 = (sexp_rd_assertion s_) in
              Rtlasdl.Mem(space1, aggregration1, width1, exp1, assertion1)
            | "rtlasdl_Reg" -> let space1 = (sexp_rd_space s_) in
              let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
              let width1 = (sexp_rd_width s_) in
              Rtlasdl.Reg(space1, int1, width1)
            | "rtlasdl_Var" -> let string1 = (StdPrimsUtil.sexp_rd_std_string s_) in
              let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
              let width1 = (sexp_rd_width s_) in
              Rtlasdl.Var(string1, int1, width1)
            | "rtlasdl_Global" -> let string1 = (StdPrimsUtil.sexp_rd_std_string s_) in
              let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
              let width1 = (sexp_rd_width s_) in
              Rtlasdl.Global(string1, int1, width1)
            | "rtlasdl_Slice" -> let width1 = (sexp_rd_width s_) in
              let int1 = (StdPrimsUtil.sexp_rd_std_int s_) in
              let loc1 = (sexp_rd_loc s_) in
              Rtlasdl.Slice(width1, int1, loc1)
            | _ -> (SexpPkl.die ()))
          (* end match *) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_exp s_ = 
      begin
        (SexpPkl.rd_lp s_);
        let tmp_ = let t = (SexpPkl.get_sym s_) in
          (match (t) with 
              "rtlasdl_Const" -> let const1 = (sexp_rd_const s_) in
              Rtlasdl.Const(const1)
            | "rtlasdl_Fetch" -> let loc1 = (sexp_rd_loc s_) in
              let width1 = (sexp_rd_width s_) in
              Rtlasdl.Fetch(loc1, width1)
            | "rtlasdl_App" -> let opr1 = (sexp_rd_opr s_) in
              let exp_list1 = (SexpPkl.rd_list sexp_rd_exp s_) in
              Rtlasdl.App(opr1, exp_list1)
            | _ -> (SexpPkl.die ()))
          (* end match *) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_effect s_ = 
      begin
        (SexpPkl.rd_lp s_);
        let tmp_ = let t = (SexpPkl.get_sym s_) in
          (match (t) with 
              "rtlasdl_Store" -> let loc1 = (sexp_rd_loc s_) in
              let exp1 = (sexp_rd_exp s_) in
              let width1 = (sexp_rd_width s_) in
              Rtlasdl.Store(loc1, exp1, width1)
            | "rtlasdl_Kill" -> let loc1 = (sexp_rd_loc s_) in
              Rtlasdl.Kill(loc1)
            | _ -> (SexpPkl.die ()))
          (* end match *) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_guarded s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_guarded" s_);
        let tmp_ = let exp1 = (sexp_rd_exp s_) in
          let effect1 = (sexp_rd_effect s_) in
          (exp1, effect1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_rtl s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_rtl" s_);
        let tmp_ = let guarded_list1 = (SexpPkl.rd_list
                sexp_rd_guarded
                s_) in
          (guarded_list1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_rtls s_ = 
      begin
        (SexpPkl.rd_lp s_);
        (SexpPkl.rd_sym "rtlasdl_rtls" s_);
        let tmp_ = let rtl_list1 = (SexpPkl.rd_list sexp_rd_rtl s_) in
          (rtl_list1) in
        begin
          (SexpPkl.rd_rp s_);
          tmp_
        end
      end
  
  and sexp_rd_rtl_list s_ = 
      (SexpPkl.rd_list sexp_rd_rtl s_)
  
  and sexp_rd_guarded_list s_ = 
      (SexpPkl.rd_list sexp_rd_guarded s_)
  
  and sexp_rd_exp_list s_ = 
      (SexpPkl.rd_list sexp_rd_exp s_)
  
  and sexp_rd_width_list s_ = 
      (SexpPkl.rd_list sexp_rd_width s_)
  
  and sexp_wr_space x_ s_ = 
      (match (x_) with 
          ((int1) : Rtlasdl.space) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_space" s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_width x_ s_ = 
      (match (x_) with 
          ((int1) : Rtlasdl.width) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_width" s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_aligned x_ s_ = 
      (match (x_) with 
          ((int1) : Rtlasdl.aligned) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_aligned" s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_assertion x_ s_ = 
      (match (x_) with 
          ((aligned1) : Rtlasdl.assertion) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_assertion" s_);
            (sexp_wr_aligned aligned1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_bool x_ s_ = 
      (match (x_) with 
          ((int1) : Rtlasdl.bool) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_bool" s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_bits x_ s_ = 
      (match (x_) with 
          ((string1, width1) : Rtlasdl.bits) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_bits" s_);
            (StdPrimsUtil.sexp_wr_std_string string1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_aggregration x_ s_ = 
      (match (x_) with 
          Rtlasdl.BigEndian -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_BigEndian" s_);
            (SexpPkl.wr_rp s_)
          end
        | Rtlasdl.LittleEndian -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_LittleEndian" s_);
            (SexpPkl.wr_rp s_)
          end
        | Rtlasdl.Identity -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Identity" s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_opr x_ s_ = 
      (match (x_) with 
          ((string1, width_list1) : Rtlasdl.opr) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_opr" s_);
            (StdPrimsUtil.sexp_wr_std_string string1 s_);
            (SexpPkl.wr_list sexp_wr_width width_list1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_kind x_ s_ = 
      (match (x_) with 
          Rtlasdl.Code -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Code" s_);
            (SexpPkl.wr_rp s_)
          end
        | Rtlasdl.Data -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Data" s_);
            (SexpPkl.wr_rp s_)
          end
        | Rtlasdl.Imported -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Imported" s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_const x_ s_ = 
      (match (x_) with 
          (Rtlasdl.Bool(bool1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Bool" s_);
            (sexp_wr_bool bool1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Bits(bits1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Bits" s_);
            (sexp_wr_bits bits1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Link(string1, kind1, width1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Link" s_);
            (StdPrimsUtil.sexp_wr_std_string string1 s_);
            (sexp_wr_kind kind1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Diff(const1, const2)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Diff" s_);
            (sexp_wr_const const1 s_);
            (sexp_wr_const const2 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Late(string1, width1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Late" s_);
            (StdPrimsUtil.sexp_wr_std_string string1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_loc x_ s_ = 
      (match (x_) with 
          (Rtlasdl.Mem(space1,
            aggregration1,
            width1,
            exp1,
            assertion1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Mem" s_);
            (sexp_wr_space space1 s_);
            (sexp_wr_aggregration aggregration1 s_);
            (sexp_wr_width width1 s_);
            (sexp_wr_exp exp1 s_);
            (sexp_wr_assertion assertion1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Reg(space1, int1, width1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Reg" s_);
            (sexp_wr_space space1 s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Var(string1, int1, width1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Var" s_);
            (StdPrimsUtil.sexp_wr_std_string string1 s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Global(string1, int1, width1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Global" s_);
            (StdPrimsUtil.sexp_wr_std_string string1 s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Slice(width1, int1, loc1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Slice" s_);
            (sexp_wr_width width1 s_);
            (StdPrimsUtil.sexp_wr_std_int int1 s_);
            (sexp_wr_loc loc1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_exp x_ s_ = 
      (match (x_) with 
          (Rtlasdl.Const(const1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Const" s_);
            (sexp_wr_const const1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Fetch(loc1, width1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Fetch" s_);
            (sexp_wr_loc loc1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.App(opr1, exp_list1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_App" s_);
            (sexp_wr_opr opr1 s_);
            (SexpPkl.wr_list sexp_wr_exp exp_list1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_effect x_ s_ = 
      (match (x_) with 
          (Rtlasdl.Store(loc1, exp1, width1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Store" s_);
            (sexp_wr_loc loc1 s_);
            (sexp_wr_exp exp1 s_);
            (sexp_wr_width width1 s_);
            (SexpPkl.wr_rp s_)
          end
        | (Rtlasdl.Kill(loc1)) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_Kill" s_);
            (sexp_wr_loc loc1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_guarded x_ s_ = 
      (match (x_) with 
          ((exp1, effect1) : Rtlasdl.guarded) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_guarded" s_);
            (sexp_wr_exp exp1 s_);
            (sexp_wr_effect effect1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_rtl x_ s_ = 
      (match (x_) with 
          ((guarded_list1) : Rtlasdl.rtl) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_rtl" s_);
            (SexpPkl.wr_list sexp_wr_guarded guarded_list1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_rtls x_ s_ = 
      (match (x_) with 
          ((rtl_list1) : Rtlasdl.rtls) -> begin
            (SexpPkl.wr_lp s_);
            (SexpPkl.wr_sym "rtlasdl_rtls" s_);
            (SexpPkl.wr_list sexp_wr_rtl rtl_list1 s_);
            (SexpPkl.wr_rp s_)
          end)
      (* end match *)
  
  and sexp_wr_rtl_list x_ s_ = 
      (SexpPkl.wr_list sexp_wr_rtl x_ s_)
  
  and sexp_wr_guarded_list x_ s_ = 
      (SexpPkl.wr_list sexp_wr_guarded x_ s_)
  
  and sexp_wr_exp_list x_ s_ = 
      (SexpPkl.wr_list sexp_wr_exp x_ s_)
  
  and sexp_wr_width_list x_ s_ = 
      (SexpPkl.wr_list sexp_wr_width x_ s_)
  
  

