target
    memsize 8
    byteorder big
    pointersize 32
    wordsize 32
    charset "latin1"
    float "ieee754";

import bits32 memcpy;

export bits32 _MD5Final_perl, _MD5Init_perl, _MD5Update_perl;

section "data" { align 8; }

section "data" { sym@Cmm_private_global_area: }

section "data" { bits8[0::bits32]; }

section "rodata" { sym@@i_PADDING: }

section "rodata" { bits32[1::bits32] { 80::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "rodata" { bits32[1::bits32] { 0::bits32 }; }

section "text"
{
    sym@_MD5Init_perl()
    {
        ;
        @i_context = $m(32B)[($r(32)[32]+32::bits32)];
        @i_context = @i_context;
        @i_@1i_2 = 0::bits32;
        $m(32B)[(@i_context+20::bits32)] = @i_@1i_2;
        $m(32B)[(@i_context+16::bits32)] = @i_@1i_2;
        $m(32B)[@i_context] = 67452301::bits32::bits32;
        $m(32B)[(@i_context+4::bits32)] = -271733879::bits32;
        $m(32B)[(@i_context+8::bits32)]
            = ffffffff98badcfe::bits32::bits32;
        $m(32B)[(@i_context+12::bits32)] = 271733878::bits32;
        $c(32)[0] = sym@@i_2;
        sym@@i_2:
        $c(32)[0] = $r(32)[30];
        ;
        ;
    }
}

section "text"
{
    sym@_MD5Update_perl()
    {
        ;
        @i_inputLen = $m(32B)[($r(32)[32]+192::bits32)];
        @i_input = $m(32B)[($r(32)[32]+160::bits32)];
        @i_context = $m(32B)[($r(32)[32]+128::bits32)];
        @i_context = @i_context;
        @i_input = @i_input;
        @i_inputLen = @i_inputLen;
        @i_@5i_1 = (@i_context+16::bits32);
        @i_@6i_2 = 3::bits32;
        @i_@3i_index
            =
            %and[32](%shrl[32]($m(32B)[@i_@5i_1], @i_@6i_2),
            63::bits32);
        @i_@7i_3 = ($m(32B)[@i_@5i_1]+%shl[32](@i_inputLen, @i_@6i_2));
        $m(32B)[@i_@5i_1] = @i_@7i_3;
        $c(32)[0]
            when
            %geu[32](@i_@7i_3, %shl[32](@i_inputLen, 3::bits32))
            = sym@@i_MD5Update_perl@l36;
        $c(32)[0] = sym@@i_MD5Update_perl@l37;
        $c(32)[0] = sym@@i_MD5Update_perl@l36;
        sym@@i_MD5Update_perl@l37:
        $c(32)[0] = sym@@i_MD5Update_perl@l35;
        sym@@i_MD5Update_perl@l36:
        $c(32)[0] = sym@@i_4;
        sym@@i_MD5Update_perl@l35:
        @i_@8i_4 = (@i_context+20::bits32);
        $m(32B)[@i_@8i_4] = ($m(32B)[@i_@8i_4]+1::bits32);
        $c(32)[0] = sym@@i_4;
        sym@@i_4:
        @i_@9i_5 = (@i_context+20::bits32);
        $m(32B)[@i_@9i_5]
            = ($m(32B)[@i_@9i_5]+%shrl[32](@i_inputLen, 29::bits32));
        @i_@4i_partLen = (64::bits32-@i_@3i_index);
        $c(32)[0] when %ltu[32](@i_inputLen, @i_@4i_partLen)
            = sym@@i_MD5Update_perl@l33;
        $c(32)[0] = sym@@i_MD5Update_perl@l34;
        $c(32)[0] = sym@@i_MD5Update_perl@l33;
        sym@@i_MD5Update_perl@l34:
        $c(32)[0] = sym@@i_MD5Update_perl@l32;
        sym@@i_MD5Update_perl@l33:
        $c(32)[0] = sym@@i_6;
        sym@@i_MD5Update_perl@l32:
        $m(32B)[($r(32)[32]+64::bits32)] = @i_@4i_partLen;
        $m(32B)[($r(32)[32]+32::bits32)] = @i_input;
        $m(32B)[$r(32)[32]] = (@i_@3i_index+(@i_context+24::bits32));
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_MD5_memcpy], ($c(32)[0]+4::bits32);
        ;
        $m(32B)[($r(32)[32]+64::bits32)] = (@i_context+24::bits32);
        $m(32B)[($r(32)[32]+32::bits32)] = @i_context;
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_MD5Transform], ($c(32)[0]+4::bits32);
        ;
        @i_@2i_i = @i_@4i_partLen;
        $c(32)[0] = sym@@i_11;
        sym@@i_6:
        @i_@2i_i = 0::bits32;
        $c(32)[0] = sym@@i_7;
        sym@@i_11:
        $c(32)[0] when %ltu[32]((@i_@2i_i+63::bits32), @i_inputLen)
            = sym@@i_MD5Update_perl@l17;
        $c(32)[0] = sym@@i_MD5Update_perl@l18;
        sym@@i_7:
        $m(32B)[($r(32)[32]+64::bits32)] = (@i_inputLen-@i_@2i_i);
        $m(32B)[($r(32)[32]+32::bits32)] = (@i_@2i_i+@i_input);
        $m(32B)[$r(32)[32]] = (@i_@3i_index+(@i_context+24::bits32));
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_MD5_memcpy], ($c(32)[0]+4::bits32);
        ;
        $c(32)[0] = sym@@i_3;
        $c(32)[0] = sym@@i_MD5Update_perl@l17;
        sym@@i_MD5Update_perl@l18:
        $c(32)[0] = sym@@i_MD5Update_perl@l16;
        sym@@i_3:
        $c(32)[0] = $r(32)[30];
        sym@@i_MD5Update_perl@l17:
        $c(32)[0] = sym@@i_8;
        sym@@i_MD5Update_perl@l16:
        @i_@3i_index = 0::bits32;
        $c(32)[0] = sym@@i_7;
        ;
        ;
        sym@@i_8:
        $m(32B)[($r(32)[32]+64::bits32)] = (@i_@2i_i+@i_input);
        $m(32B)[($r(32)[32]+32::bits32)] = @i_context;
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_MD5Transform], ($c(32)[0]+4::bits32);
        ;
        $c(32)[0] = sym@@i_9;
        sym@@i_9:
        @i_@2i_i = (@i_@2i_i+64::bits32);
        $c(32)[0] = sym@@i_11;
    }
}

section "text"
{
    sym@_MD5Final_perl()
    {
        ;
        @i_context = $m(32B)[($r(32)[32]+192::bits32)];
        @i_digest = $m(32B)[($r(32)[32]+160::bits32)];
        @i_context = @i_context;
        $m(32B)[($r(32)[32]+64::bits32)] = 8::bits32;
        $m(32B)[($r(32)[32]+32::bits32)] = (@i_context+16::bits32);
        $m(32B)[$r(32)[32]]
            = $m(32B)[$m(32B)[($r(32)[32]+128::bits32)]];
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_Encode], ($c(32)[0]+4::bits32);
        ;
        @i_@12i_index
            =
            %and[32](%shrl[32]($m(32B)[(@i_context+16::bits32)],
            3::bits32),
            63::bits32);
        $c(32)[0] when %geu[32](@i_@12i_index, 56::bits32)
            = sym@@i_MD5Final_perl@l68;
        $c(32)[0] = sym@@i_MD5Final_perl@l69;
        $c(32)[0] = sym@@i_MD5Final_perl@l68;
        sym@@i_MD5Final_perl@l69:
        $c(32)[0] = sym@@i_MD5Final_perl@l67;
        sym@@i_MD5Final_perl@l68:
        $c(32)[0] = sym@@i_14;
        sym@@i_MD5Final_perl@l67:
        @i_@15i_13 = (56::bits32-@i_@12i_index);
        $c(32)[0] = sym@@i_15;
        sym@@i_14:
        @i_@15i_13 = (120::bits32-@i_@12i_index);
        $c(32)[0] = sym@@i_15;
        sym@@i_15:
        @i_@14i_padLen = @i_@15i_13;
        $m(32B)[($r(32)[32]+64::bits32)] = @i_@14i_padLen;
        $m(32B)[($r(32)[32]+32::bits32)] = $m(32B)[sym@@i_PADDING];
        $m(32B)[$r(32)[32]] = @i_context;
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@_MD5Update_perl], ($c(32)[0]+4::bits32);
        ;
        $m(32B)[($r(32)[32]+64::bits32)] = 8::bits32;
        $m(32B)[($r(32)[32]+32::bits32)]
            = $m(32B)[$m(32B)[($r(32)[32]+128::bits32)]];
        $m(32B)[$r(32)[32]] = @i_context;
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@_MD5Update_perl], ($c(32)[0]+4::bits32);
        ;
        $m(32B)[($r(32)[32]+64::bits32)] = 16::bits32;
        $m(32B)[($r(32)[32]+32::bits32)] = @i_context;
        $m(32B)[$r(32)[32]] = @i_digest;
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_Encode], ($c(32)[0]+4::bits32);
        ;
        $m(32B)[($r(32)[32]+64::bits32)] = 88::bits32;
        $m(32B)[($r(32)[32]+32::bits32)] = 0::bits32;
        $m(32B)[$r(32)[32]] = @i_context;
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_MD5_memset], ($c(32)[0]+4::bits32);
        ;
        $c(32)[0] = sym@@i_12;
        sym@@i_12:
        $c(32)[0] = $r(32)[30];
        ;
        ;
    }
}

section "text"
{
    sym@@i_MD5Transform()
    {
        ;
        @i_block = $m(32B)[($r(32)[32]+224::bits32)];
        @i_state = $m(32B)[($r(32)[32]+192::bits32)];
        @i_state = @i_state;
        @i_@16i_a = $m(32B)[@i_state];
        @i_@17i_b = $m(32B)[(@i_state+4::bits32)];
        @i_@18i_c = $m(32B)[(@i_state+8::bits32)];
        @i_@19i_d = $m(32B)[(@i_state+12::bits32)];
        $m(32B)[($r(32)[32]+64::bits32)] = 64::bits32;
        $m(32B)[($r(32)[32]+32::bits32)] = @i_block;
        $m(32B)[$r(32)[32]]
            = $m(32B)[$m(32B)[($r(32)[32]+128::bits32)]];
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_Decode], ($c(32)[0]+4::bits32);
        ;
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@18i_c),
                %and[32](%com[32](@i_@17i_b), @i_@19i_d))+
                    $m(32B)[$m(32B)[$m(32B)[($r(32)[32]+
                        128::bits32)]]])+
                    -680876936::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 7::bits32),
            %shrl[32](@i_@16i_a, 25::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@17i_b),
                %and[32](%com[32](@i_@16i_a), @i_@18i_c))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        4::bits32)]])+
                    -389564586::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 12::bits32),
            %shrl[32](@i_@19i_d, 20::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@16i_a),
                %and[32](%com[32](@i_@19i_d), @i_@17i_b))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        8::bits32)]])+
                    606105819::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 17::bits32),
            %shrl[32](@i_@18i_c, 15::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@19i_d),
                %and[32](%com[32](@i_@18i_c), @i_@16i_a))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        12::bits32)]])+
                    -1044525330::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 22::bits32),
            %shrl[32](@i_@17i_b, 10::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@18i_c),
                %and[32](%com[32](@i_@17i_b), @i_@19i_d))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        16::bits32)]])+
                    -176418897::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 7::bits32),
            %shrl[32](@i_@16i_a, 25::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@17i_b),
                %and[32](%com[32](@i_@16i_a), @i_@18i_c))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        20::bits32)]])+
                    4787c62a::bits32::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 12::bits32),
            %shrl[32](@i_@19i_d, 20::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@16i_a),
                %and[32](%com[32](@i_@19i_d), @i_@17i_b))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        24::bits32)]])+
                    ffffffffa8304613::bits32::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 17::bits32),
            %shrl[32](@i_@18i_c, 15::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@19i_d),
                %and[32](%com[32](@i_@18i_c), @i_@16i_a))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        28::bits32)]])+
                    -45705983::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 22::bits32),
            %shrl[32](@i_@17i_b, 10::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@18i_c),
                %and[32](%com[32](@i_@17i_b), @i_@19i_d))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        32::bits32)]])+
                    698098d8::bits32::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 7::bits32),
            %shrl[32](@i_@16i_a, 25::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@17i_b),
                %and[32](%com[32](@i_@16i_a), @i_@18i_c))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        36::bits32)]])+
                    ffffffff8b44f7af::bits32::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 12::bits32),
            %shrl[32](@i_@19i_d, 20::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@16i_a),
                %and[32](%com[32](@i_@19i_d), @i_@17i_b))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        40::bits32)]])+
                    -42063::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 17::bits32),
            %shrl[32](@i_@18i_c, 15::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@19i_d),
                %and[32](%com[32](@i_@18i_c), @i_@16i_a))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        44::bits32)]])+
                    ffffffff895cd7be::bits32::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 22::bits32),
            %shrl[32](@i_@17i_b, 10::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@18i_c),
                %and[32](%com[32](@i_@17i_b), @i_@19i_d))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        48::bits32)]])+
                    6b901122::bits32::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 7::bits32),
            %shrl[32](@i_@16i_a, 25::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@17i_b),
                %and[32](%com[32](@i_@16i_a), @i_@18i_c))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        52::bits32)]])+
                    -40341101::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 12::bits32),
            %shrl[32](@i_@19i_d, 20::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@16i_a),
                %and[32](%com[32](@i_@19i_d), @i_@17i_b))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        56::bits32)]])+
                    ffffffffa679438e::bits32::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 17::bits32),
            %shrl[32](@i_@18i_c, 15::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@19i_d),
                %and[32](%com[32](@i_@18i_c), @i_@16i_a))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        60::bits32)]])+
                    49b40821::bits32::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 22::bits32),
            %shrl[32](@i_@17i_b, 10::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@19i_d),
                %and[32](@i_@18i_c, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        4::bits32)]])+
                    -165796510::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 5::bits32),
            %shrl[32](@i_@16i_a, 27::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@18i_c),
                %and[32](@i_@17i_b, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        24::bits32)]])+
                    -1069501632::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 9::bits32),
            %shrl[32](@i_@19i_d, 23::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@17i_b),
                %and[32](@i_@16i_a, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        44::bits32)]])+
                    643717713::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 14::bits32),
            %shrl[32](@i_@18i_c, 18::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@16i_a),
                %and[32](@i_@19i_d, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[$m(32B)[($r(32)[32]+
                        128::bits32)]]])+
                    -373897302::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 20::bits32),
            %shrl[32](@i_@17i_b, 12::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@19i_d),
                %and[32](@i_@18i_c, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        20::bits32)]])+
                    -701558691::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 5::bits32),
            %shrl[32](@i_@16i_a, 27::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@18i_c),
                %and[32](@i_@17i_b, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        40::bits32)]])+
                    38016083::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 9::bits32),
            %shrl[32](@i_@19i_d, 23::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@17i_b),
                %and[32](@i_@16i_a, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        60::bits32)]])+
                    -660478335::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 14::bits32),
            %shrl[32](@i_@18i_c, 18::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@16i_a),
                %and[32](@i_@19i_d, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        16::bits32)]])+
                    -405537848::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 20::bits32),
            %shrl[32](@i_@17i_b, 12::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@19i_d),
                %and[32](@i_@18i_c, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        36::bits32)]])+
                    568446438::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 5::bits32),
            %shrl[32](@i_@16i_a, 27::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@18i_c),
                %and[32](@i_@17i_b, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        56::bits32)]])+
                    -1019803690::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 9::bits32),
            %shrl[32](@i_@19i_d, 23::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@17i_b),
                %and[32](@i_@16i_a, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        12::bits32)]])+
                    -187363961::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 14::bits32),
            %shrl[32](@i_@18i_c, 18::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@16i_a),
                %and[32](@i_@19i_d, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        32::bits32)]])+
                    455a14ed::bits32::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 20::bits32),
            %shrl[32](@i_@17i_b, 12::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%or[32](%and[32](@i_@17i_b, @i_@19i_d),
                %and[32](@i_@18i_c, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        52::bits32)]])+
                    ffffffffa9e3e905::bits32::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 5::bits32),
            %shrl[32](@i_@16i_a, 27::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%or[32](%and[32](@i_@16i_a, @i_@18i_c),
                %and[32](@i_@17i_b, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        8::bits32)]])+
                    -51403784::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 9::bits32),
            %shrl[32](@i_@19i_d, 23::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%or[32](%and[32](@i_@19i_d, @i_@17i_b),
                %and[32](@i_@16i_a, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        28::bits32)]])+
                    676f02d9::bits32::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 14::bits32),
            %shrl[32](@i_@18i_c, 18::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%or[32](%and[32](@i_@18i_c, @i_@16i_a),
                %and[32](@i_@19i_d, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        48::bits32)]])+
                    ffffffff8d2a4c8a::bits32::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 20::bits32),
            %shrl[32](@i_@17i_b, 12::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](%xor[32](@i_@17i_b, @i_@18i_c), @i_@19i_d)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        20::bits32)]])+
                    -378558::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 4::bits32),
            %shrl[32](@i_@16i_a, 28::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](%xor[32](@i_@16i_a, @i_@17i_b), @i_@18i_c)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        32::bits32)]])+
                    ffffffff8771f681::bits32::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 11::bits32),
            %shrl[32](@i_@19i_d, 21::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](%xor[32](@i_@19i_d, @i_@16i_a), @i_@17i_b)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        44::bits32)]])+
                    6d9d6122::bits32::bits32));
        @i_@107i_87 = 16::bits32;
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, @i_@107i_87),
            %shrl[32](@i_@18i_c, @i_@107i_87));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](%xor[32](@i_@18i_c, @i_@19i_d), @i_@16i_a)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        56::bits32)]])+
                    -35309556::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 23::bits32),
            %shrl[32](@i_@17i_b, 9::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](%xor[32](@i_@17i_b, @i_@18i_c), @i_@19i_d)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        4::bits32)]])+
                    ffffffffa4beea44::bits32::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 4::bits32),
            %shrl[32](@i_@16i_a, 28::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](%xor[32](@i_@16i_a, @i_@17i_b), @i_@18i_c)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        16::bits32)]])+
                    4bdecfa9::bits32::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 11::bits32),
            %shrl[32](@i_@19i_d, 21::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](%xor[32](@i_@19i_d, @i_@16i_a), @i_@17i_b)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        28::bits32)]])+
                    -155497632::bits32));
        @i_@116i_96 = 16::bits32;
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, @i_@116i_96),
            %shrl[32](@i_@18i_c, @i_@116i_96));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](%xor[32](@i_@18i_c, @i_@19i_d), @i_@16i_a)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        40::bits32)]])+
                    ffffffffbebfbc70::bits32::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 23::bits32),
            %shrl[32](@i_@17i_b, 9::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](%xor[32](@i_@17i_b, @i_@18i_c), @i_@19i_d)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        52::bits32)]])+
                    681279174::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 4::bits32),
            %shrl[32](@i_@16i_a, 28::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](%xor[32](@i_@16i_a, @i_@17i_b), @i_@18i_c)+
                    $m(32B)[$m(32B)[$m(32B)[($r(32)[32]+
                        128::bits32)]]])+
                    -358537222::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 11::bits32),
            %shrl[32](@i_@19i_d, 21::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](%xor[32](@i_@19i_d, @i_@16i_a), @i_@17i_b)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        12::bits32)]])+
                    -722521979::bits32));
        @i_@125i_105 = 16::bits32;
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, @i_@125i_105),
            %shrl[32](@i_@18i_c, @i_@125i_105));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](%xor[32](@i_@18i_c, @i_@19i_d), @i_@16i_a)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        24::bits32)]])+
                    76029189::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 23::bits32),
            %shrl[32](@i_@17i_b, 9::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](%xor[32](@i_@17i_b, @i_@18i_c), @i_@19i_d)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        36::bits32)]])+
                    -640364487::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 4::bits32),
            %shrl[32](@i_@16i_a, 28::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](%xor[32](@i_@16i_a, @i_@17i_b), @i_@18i_c)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        48::bits32)]])+
                    -421815835::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 11::bits32),
            %shrl[32](@i_@19i_d, 21::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](%xor[32](@i_@19i_d, @i_@16i_a), @i_@17i_b)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        60::bits32)]])+
                    530742520::bits32));
        @i_@134i_114 = 16::bits32;
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, @i_@134i_114),
            %shrl[32](@i_@18i_c, @i_@134i_114));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](%xor[32](@i_@18i_c, @i_@19i_d), @i_@16i_a)+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        8::bits32)]])+
                    -995338651::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 23::bits32),
            %shrl[32](@i_@17i_b, 9::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](@i_@18i_c,
                %or[32](@i_@17i_b, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[$m(32B)[($r(32)[32]+
                        128::bits32)]]])+
                    -198630844::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 6::bits32),
            %shrl[32](@i_@16i_a, 26::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](@i_@17i_b,
                %or[32](@i_@16i_a, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        28::bits32)]])+
                    432aff97::bits32::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 10::bits32),
            %shrl[32](@i_@19i_d, 22::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](@i_@16i_a,
                %or[32](@i_@19i_d, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        56::bits32)]])+
                    ffffffffab9423a7::bits32::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 15::bits32),
            %shrl[32](@i_@18i_c, 17::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](@i_@19i_d,
                %or[32](@i_@18i_c, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        20::bits32)]])+
                    -57434055::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 21::bits32),
            %shrl[32](@i_@17i_b, 11::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](@i_@18i_c,
                %or[32](@i_@17i_b, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        48::bits32)]])+
                    655b59c3::bits32::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 6::bits32),
            %shrl[32](@i_@16i_a, 26::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](@i_@17i_b,
                %or[32](@i_@16i_a, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        12::bits32)]])+
                    ffffffff8f0ccc92::bits32::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 10::bits32),
            %shrl[32](@i_@19i_d, 22::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](@i_@16i_a,
                %or[32](@i_@19i_d, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        40::bits32)]])+
                    -1051523::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 15::bits32),
            %shrl[32](@i_@18i_c, 17::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](@i_@19i_d,
                %or[32](@i_@18i_c, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        4::bits32)]])+
                    ffffffff85845dd1::bits32::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 21::bits32),
            %shrl[32](@i_@17i_b, 11::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](@i_@18i_c,
                %or[32](@i_@17i_b, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        32::bits32)]])+
                    6fa87e4f::bits32::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 6::bits32),
            %shrl[32](@i_@16i_a, 26::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](@i_@17i_b,
                %or[32](@i_@16i_a, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        60::bits32)]])+
                    -30611744::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 10::bits32),
            %shrl[32](@i_@19i_d, 22::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](@i_@16i_a,
                %or[32](@i_@19i_d, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        24::bits32)]])+
                    ffffffffa3014314::bits32::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 15::bits32),
            %shrl[32](@i_@18i_c, 17::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](@i_@19i_d,
                %or[32](@i_@18i_c, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        52::bits32)]])+
                    4e0811a1::bits32::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 21::bits32),
            %shrl[32](@i_@17i_b, 11::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        @i_@16i_a
            =
            (@i_@16i_a+
                ((%xor[32](@i_@18i_c,
                %or[32](@i_@17i_b, %com[32](@i_@19i_d)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        16::bits32)]])+
                    -145523070::bits32));
        @i_@16i_a
            =
            %or[32](%shl[32](@i_@16i_a, 6::bits32),
            %shrl[32](@i_@16i_a, 26::bits32));
        @i_@16i_a = (@i_@16i_a+@i_@17i_b);
        @i_@19i_d
            =
            (@i_@19i_d+
                ((%xor[32](@i_@17i_b,
                %or[32](@i_@16i_a, %com[32](@i_@18i_c)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        44::bits32)]])+
                    ffffffffbd3af235::bits32::bits32));
        @i_@19i_d
            =
            %or[32](%shl[32](@i_@19i_d, 10::bits32),
            %shrl[32](@i_@19i_d, 22::bits32));
        @i_@19i_d = (@i_@19i_d+@i_@16i_a);
        @i_@18i_c
            =
            (@i_@18i_c+
                ((%xor[32](@i_@16i_a,
                %or[32](@i_@19i_d, %com[32](@i_@17i_b)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        8::bits32)]])+
                    718787259::bits32));
        @i_@18i_c
            =
            %or[32](%shl[32](@i_@18i_c, 15::bits32),
            %shrl[32](@i_@18i_c, 17::bits32));
        @i_@18i_c = (@i_@18i_c+@i_@19i_d);
        @i_@17i_b
            =
            (@i_@17i_b+
                ((%xor[32](@i_@19i_d,
                %or[32](@i_@18i_c, %com[32](@i_@16i_a)))+
                    $m(32B)[$m(32B)[($m(32B)[($r(32)[32]+128::bits32)]+
                        36::bits32)]])+
                    -343485551::bits32));
        @i_@17i_b
            =
            %or[32](%shl[32](@i_@17i_b, 21::bits32),
            %shrl[32](@i_@17i_b, 11::bits32));
        @i_@17i_b = (@i_@17i_b+@i_@18i_c);
        $m(32B)[@i_state] = ($m(32B)[@i_state]+@i_@16i_a);
        @i_@170i_150 = (@i_state+4::bits32);
        $m(32B)[@i_@170i_150] = ($m(32B)[@i_@170i_150]+@i_@17i_b);
        @i_@171i_151 = (@i_state+8::bits32);
        $m(32B)[@i_@171i_151] = ($m(32B)[@i_@171i_151]+@i_@18i_c);
        @i_@172i_152 = (@i_state+12::bits32);
        $m(32B)[@i_@172i_152] = ($m(32B)[@i_@172i_152]+@i_@19i_d);
        $m(32B)[($r(32)[32]+64::bits32)] = 64::bits32;
        $m(32B)[($r(32)[32]+32::bits32)] = 0::bits32;
        $m(32B)[$r(32)[32]]
            = $m(32B)[$m(32B)[($r(32)[32]+128::bits32)]];
        $c(32)[0], $r(32)[30]
            = $m(32B)[sym@@i_MD5_memset], ($c(32)[0]+4::bits32);
        ;
        $c(32)[0] = sym@@i_16;
        sym@@i_16:
        $c(32)[0] = $r(32)[30];
        ;
        ;
    }
}

section "text"
{
    sym@@i_Encode()
    {
        ;
        @i_len = $m(32B)[($r(32)[32]+96::bits32)];
        @i_input = $m(32B)[($r(32)[32]+64::bits32)];
        @i_output = $m(32B)[($r(32)[32]+32::bits32)];
        @i_output = @i_output;
        @i_input = @i_input;
        @i_len = @i_len;
        @i_@175i_1 = 0::bits32;
        @i_@174i_i = @i_@175i_1;
        @i_@173i_j = @i_@175i_1;
        $c(32)[0] = sym@@i_81;
        sym@@i_81:
        $c(32)[0] when %ltu[32](@i_@173i_j, @i_len)
            = sym@@i_Encode@l102;
        $c(32)[0] = sym@@i_Encode@l103;
        $c(32)[0] = sym@@i_Encode@l102;
        sym@@i_Encode@l103:
        $c(32)[0] = sym@@i_Encode@l101;
        sym@@i_Encode@l102:
        $c(32)[0] = sym@@i_78;
        sym@@i_Encode@l101:
        $c(32)[0] = sym@@i_77;
        sym@@i_78:
        $m(8B)[(@i_@173i_j+@i_output)]
            =
            %lobits[32,8](%and[32]($m(32B)[(%shl[32](@i_@174i_i,
            2::bits32)+
                @i_input)],
            255::bits32));
        $m(8B)[((@i_@173i_j+1::bits32)+@i_output)]
            =
            %lobits[32,8](%and[32](%shrl[32]($m(32B)[(%shl[32](@i_@174i_i,
            2::bits32)+
                @i_input)],
            8::bits32),
            255::bits32));
        $m(8B)[((@i_@173i_j+2::bits32)+@i_output)]
            =
            %lobits[32,8](%and[32](%shrl[32]($m(32B)[(%shl[32](@i_@174i_i,
            2::bits32)+
                @i_input)],
            16::bits32),
            255::bits32));
        $m(8B)[((@i_@173i_j+3::bits32)+@i_output)]
            =
            %lobits[32,8](%and[32](%shrl[32]($m(32B)[(%shl[32](@i_@174i_i,
            2::bits32)+
                @i_input)],
            24::bits32),
            255::bits32));
        $c(32)[0] = sym@@i_79;
        sym@@i_77:
        $c(32)[0] = $r(32)[30];
        sym@@i_79:
        @i_@174i_i = (@i_@174i_i+1::bits32);
        @i_@173i_j = (@i_@173i_j+4::bits32);
        $c(32)[0] = sym@@i_81;
        ;
        ;
    }
}

section "text"
{
    sym@@i_Decode()
    {
        ;
        @i_len = $m(32B)[($r(32)[32]+96::bits32)];
        @i_input = $m(32B)[($r(32)[32]+64::bits32)];
        @i_output = $m(32B)[($r(32)[32]+32::bits32)];
        @i_output = @i_output;
        @i_input = @i_input;
        @i_len = @i_len;
        @i_@178i_1 = 0::bits32;
        @i_@177i_i = @i_@178i_1;
        @i_@176i_j = @i_@178i_1;
        $c(32)[0] = sym@@i_86;
        sym@@i_86:
        $c(32)[0] when %ltu[32](@i_@176i_j, @i_len)
            = sym@@i_Decode@l114;
        $c(32)[0] = sym@@i_Decode@l115;
        $c(32)[0] = sym@@i_Decode@l114;
        sym@@i_Decode@l115:
        $c(32)[0] = sym@@i_Decode@l113;
        sym@@i_Decode@l114:
        $c(32)[0] = sym@@i_83;
        sym@@i_Decode@l113:
        $c(32)[0] = sym@@i_82;
        sym@@i_83:
        $m(32B)[(%shl[32](@i_@177i_i, 2::bits32)+@i_output)]
            =
            %or[32](%or[32](%or[32](%lobits[32,32](%zx[8,32]($m(8B)[(@i_@176i_j+
                @i_input)])),
            %shl[32](%lobits[32,32](%zx[8,32]($m(8B)[((@i_@176i_j+
                1::bits32)+
                @i_input)])),
            8::bits32)),
            %shl[32](%lobits[32,32](%zx[8,32]($m(8B)[((@i_@176i_j+
                2::bits32)+
                @i_input)])),
            16::bits32)),
            %shl[32](%lobits[32,32](%zx[8,32]($m(8B)[((@i_@176i_j+
                3::bits32)+
                @i_input)])),
            24::bits32));
        $c(32)[0] = sym@@i_84;
        sym@@i_82:
        $c(32)[0] = $r(32)[30];
        sym@@i_84:
        @i_@177i_i = (@i_@177i_i+1::bits32);
        @i_@176i_j = (@i_@176i_j+4::bits32);
        $c(32)[0] = sym@@i_86;
        ;
        ;
    }
}

section "text"
{
    sym@@i_MD5_memcpy()
    {
        ;
        @i_len = $m(32B)[($r(32)[32]+96::bits32)];
        @i_input = $m(32B)[($r(32)[32]+64::bits32)];
        @i_output = $m(32B)[($r(32)[32]+32::bits32)];
        @i_output = @i_output;
        @i_input = @i_input;
        @i_len = @i_len;
        @i_@181i_i = 0::bits32;
        $c(32)[0] = sym@@i_91;
        sym@@i_91:
        $c(32)[0] when %ltu[32](@i_@181i_i, @i_len)
            = sym@@i_MD5_memcpy@l126;
        $c(32)[0] = sym@@i_MD5_memcpy@l127;
        $c(32)[0] = sym@@i_MD5_memcpy@l126;
        sym@@i_MD5_memcpy@l127:
        $c(32)[0] = sym@@i_MD5_memcpy@l125;
        sym@@i_MD5_memcpy@l126:
        $c(32)[0] = sym@@i_88;
        sym@@i_MD5_memcpy@l125:
        $c(32)[0] = sym@@i_87;
        sym@@i_88:
        $m(8B)[(@i_@181i_i+@i_output)] = $m(8B)[(@i_@181i_i+@i_input)];
        $c(32)[0] = sym@@i_89;
        sym@@i_87:
        $c(32)[0] = $r(32)[30];
        sym@@i_89:
        @i_@181i_i = (@i_@181i_i+1::bits32);
        $c(32)[0] = sym@@i_91;
        ;
        ;
    }
}

section "text"
{
    sym@@i_MD5_memset()
    {
        ;
        @i_len = $m(32B)[($r(32)[32]+96::bits32)];
        @i_value = $m(32B)[($r(32)[32]+64::bits32)];
        @i_output = $m(32B)[($r(32)[32]+32::bits32)];
        @i_output = @i_output;
        @i_value = @i_value;
        @i_len = @i_len;
        @i_@183i_i = 0::bits32;
        $c(32)[0] = sym@@i_96;
        sym@@i_96:
        $c(32)[0] when %ltu[32](@i_@183i_i, @i_len)
            = sym@@i_MD5_memset@l138;
        $c(32)[0] = sym@@i_MD5_memset@l139;
        $c(32)[0] = sym@@i_MD5_memset@l138;
        sym@@i_MD5_memset@l139:
        $c(32)[0] = sym@@i_MD5_memset@l137;
        sym@@i_MD5_memset@l138:
        $c(32)[0] = sym@@i_93;
        sym@@i_MD5_memset@l137:
        $c(32)[0] = sym@@i_92;
        sym@@i_93:
        $m(8B)[(@i_@183i_i+@i_output)] = %lobits[32,8](@i_value);
        $c(32)[0] = sym@@i_94;
        sym@@i_92:
        $c(32)[0] = $r(32)[30];
        sym@@i_94:
        @i_@183i_i = (@i_@183i_i+1::bits32);
        $c(32)[0] = sym@@i_96;
        ;
        ;
    }
}

section "text" {  }

