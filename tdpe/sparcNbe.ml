open SparcTrees.M

module S = SparcSyntax
module Sy = Syntax
module Ctrl = Tdpe.Ctrl




let reflect_t =
fun x1 ->
  let r2 = Tools.gensym "x" in
  let r3 = Tools.gensym "x" in
  let r4 = Tools.gensym "x" in
  let r5 = Tools.gensym "x" in
  let r6 = Tools.gensym "x" in
  let r7 = Tools.gensym "x" in
  let r8 = Tools.gensym "x" in
  let r9 = Tools.gensym "x" in
  let r10 = Tools.gensym "x" in
  let r11 = Tools.gensym "x" in
  let r12 = Tools.gensym "x" in
  let r13 = Tools.gensym "x" in
  let r14 = Tools.gensym "x" in
  let r15 = Tools.gensym "x" in
  let r16 = Tools.gensym "x" in
  let r17 = Tools.gensym "x" in
  let r18 = Tools.gensym "x" in
  let r19 = Tools.gensym "x" in
  let r20 = Tools.gensym "x" in
  let r21 = Tools.gensym "x" in
  let r22 = Tools.gensym "x" in
  let r23 = Tools.gensym "x" in
  let r24 = Tools.gensym "x" in
  let r25 = Tools.gensym "x" in
  let r26 = Tools.gensym "x" in
  let r27 = Tools.gensym "x" in
  let r28 = Tools.gensym "x" in
  let r29 = Tools.gensym "x" in
  let r30 = Tools.gensym "x" in
  let r31 = Tools.gensym "x" in
  let r32 = Tools.gensym "x" in
  let r33 = Tools.gensym "x" in
  let r34 = Tools.gensym "x" in
  let r35 = Tools.gensym "x" in
  let r36 = Tools.gensym "x" in
  let r37 = Tools.gensym "x" in
  let r38 = Tools.gensym "x" in
  let r39 = Tools.gensym "x" in
  let r40 = Tools.gensym "x" in
  let r41 = Tools.gensym "x" in
  let r42 = Tools.gensym "x" in
  let r43 = Tools.gensym "x" in
  let r44 = Tools.gensym "x" in
  let r45 = Tools.gensym "x" in
  let r46 = Tools.gensym "x" in
  let r47 = Tools.gensym "x" in
  let r48 = Tools.gensym "x" in
  let r49 = Tools.gensym "x" in
  let r50 = Tools.gensym "x" in
  let r51 = Tools.gensym "x" in
  let r52 = Tools.gensym "x" in
  let r53 = Tools.gensym "x" in
  let r54 = Tools.gensym "x" in
  let r55 = Tools.gensym "x" in
  let r56 = Tools.gensym "x" in
  let r57 = Tools.gensym "x" in
  let r58 = Tools.gensym "x" in
  let r59 = Tools.gensym "x" in
  let r60 = Tools.gensym "x" in
  let r61 = Tools.gensym "x" in
  let r62 = Tools.gensym "x" in
  let r63 = Tools.gensym "x" in
  let r64 = Tools.gensym "x" in
  let r65 = Tools.gensym "x" in
  let r66 = Tools.gensym "x" in
  let r67 = Tools.gensym "x" in
  let r68 = Tools.gensym "x" in
  let r69 = Tools.gensym "x" in
  let r70 = Tools.gensym "x" in
  let r71 = Tools.gensym "x" in
  let r72 = Tools.gensym "x" in
  let r73 = Tools.gensym "x" in
  let r74 = Tools.gensym "x" in
  let r75 = Tools.gensym "x" in
  let r76 = Tools.gensym "x" in
  let r77 = Tools.gensym "x" in
  let r78 = Tools.gensym "x" in
  let r79 = Tools.gensym "x" in
  let r80 = Tools.gensym "x" in
  let r81 = Tools.gensym "x" in
  let r82 = Tools.gensym "x" in
  let r83 = Tools.gensym "x" in
  let r84 = Tools.gensym "x" in
  let r85 = Tools.gensym "x" in
  let r86 = Tools.gensym "x" in
  let r87 = Tools.gensym "x" in
  let r88 = Tools.gensym "x" in
  let r89 = Tools.gensym "x" in
  let r90 = Tools.gensym "x" in
  let r91 = Tools.gensym "x" in
  let r92 = Tools.gensym "x" in
  let r93 = Tools.gensym "x" in
  let r94 = Tools.gensym "x" in
  let r95 = Tools.gensym "x" in
  let r96 = Tools.gensym "x" in
  let r97 = Tools.gensym "x" in
  let r98 = Tools.gensym "x" in
  let r99 = Tools.gensym "x" in
  let r100 = Tools.gensym "x" in
  let r101 = Tools.gensym "x" in
  let r102 = Tools.gensym "x" in
  let r103 = Tools.gensym "x" in
  let r104 = Tools.gensym "x" in
  let r105 = Tools.gensym "x" in
  let r106 = Tools.gensym "x" in
  let r107 = Tools.gensym "x" in
  let r108 = Tools.gensym "x" in
  let r109 = Tools.gensym "x" in
  let r110 = Tools.gensym "x" in
  let r111 = Tools.gensym "x" in
  let r112 = Tools.gensym "x" in
  let r113 = Tools.gensym "x" in
  let r114 = Tools.gensym "x" in
  let r115 = Tools.gensym "x" in
  let r116 = Tools.gensym "x" in
  let r117 = Tools.gensym "x" in
  let r118 = Tools.gensym "x" in
  let r119 = Tools.gensym "x" in
  let r120 = Tools.gensym "x" in
  let r121 = Tools.gensym "x" in
  let r122 = Tools.gensym "x" in
  let r123 = Tools.gensym "x" in
  let r124 = Tools.gensym "x" in
  let r125 = Tools.gensym "x" in
  let r126 = Tools.gensym "x" in
  let r127 = Tools.gensym "x" in
  let r128 = Tools.gensym "x" in
  let r129 = Tools.gensym "x" in
  let r130 = Tools.gensym "x" in
  let r131 = Tools.gensym "x" in
  let r132 = Tools.gensym "x" in
  let r133 = Tools.gensym "x" in
  let r134 = Tools.gensym "x" in
  let r135 = Tools.gensym "x" in
  let r136 = Tools.gensym "x" in
  let r137 = Tools.gensym "x" in
  let r138 = Tools.gensym "x" in
  let r139 = Tools.gensym "x" in
  let r140 = Tools.gensym "x" in
  let r141 = Tools.gensym "x" in
  let r142 = Tools.gensym "x" in
  let r143 = Tools.gensym "x" in
  let r144 = Tools.gensym "x" in
  let r145 = Tools.gensym "x" in
  let r146 = Tools.gensym "x" in
  let r147 = Tools.gensym "x" in
  let r148 = Tools.gensym "x" in
  let r149 = Tools.gensym "x" in
  let r150 = Tools.gensym "x" in
  let r151 = Tools.gensym "x" in
  let r152 = Tools.gensym "x" in
  let r153 = Tools.gensym "x" in
  let r154 = Tools.gensym "x" in
  let r155 = Tools.gensym "x" in
  let r156 = Tools.gensym "x" in
  let r157 = Tools.gensym "x" in
  let r158 = Tools.gensym "x" in
  let r159 = Tools.gensym "x" in
  let r160 = Tools.gensym "x" in
  let r161 = Tools.gensym "x" in
  let r162 = Tools.gensym "x" in
  let r163 = Tools.gensym "x" in
  let r164 = Tools.gensym "x" in
  let r165 = Tools.gensym "x" in
  let r166 = Tools.gensym "x" in
  let r167 = Tools.gensym "x" in
  let r168 = Tools.gensym "x" in
  let r169 = Tools.gensym "x" in
  let r170 = Tools.gensym "x" in
  let r171 = Tools.gensym "x" in
  let r172 = Tools.gensym "x" in
  let r173 = Tools.gensym "x" in
  let r174 = Tools.gensym "x" in
  let r175 = Tools.gensym "x" in
  let r176 = Tools.gensym "x" in
  let r177 = Tools.gensym "x" in
  let r178 = Tools.gensym "x" in
  let r179 = Tools.gensym "x" in
  let r180 = Tools.gensym "x" in
  let r181 = Tools.gensym "x" in
  let r182 = Tools.gensym "x" in
  let r183 = Tools.gensym "x" in
  let r184 = Tools.gensym "x" in
  let r185 = Tools.gensym "x" in
  let r186 = Tools.gensym "x" in
  let r187 = Tools.gensym "x" in
  let r188 = Tools.gensym "x" in
  let r189 = Tools.gensym "x" in
  let r190 = Tools.gensym "x" in
  let r191 = Tools.gensym "x" in
  let r192 = Tools.gensym "x" in
  let r193 = Tools.gensym "x" in
  let r194 = Tools.gensym "x" in
  let r195 = Tools.gensym "x" in
  let r196 = Tools.gensym "x" in
  let r197 = Tools.gensym "x" in
  let r198 = Tools.gensym "x" in
  let r199 = Tools.gensym "x" in
  let r200 = Tools.gensym "x" in
  let r201 = Tools.gensym "x" in
  let r202 = Tools.gensym "x" in
  let r203 = Tools.gensym "x" in
  let r204 = Tools.gensym "x" in
  let r205 = Tools.gensym "x" in
  let r206 = Tools.gensym "x" in
  let r207 = Tools.gensym "x" in
  let r208 = Tools.gensym "x" in
  let r209 = Tools.gensym "x" in
  let r210 = Tools.gensym "x" in
  let r211 = Tools.gensym "x" in
  let r212 = Tools.gensym "x" in
  let r213 = Tools.gensym "x" in
  let r214 = Tools.gensym "x" in
  let r215 = Tools.gensym "x" in
  let r216 = Tools.gensym "x" in
  let r217 = Tools.gensym "x" in
  let r218 = Tools.gensym "x" in
  let r219 = Tools.gensym "x" in
  let r220 = Tools.gensym "x" in
  let r221 = Tools.gensym "x" in
  let r222 = Tools.gensym "x" in
  let r223 = Tools.gensym "x" in
  let r224 = Tools.gensym "x" in
  let r225 = Tools.gensym "x" in
  let r226 = Tools.gensym "x" in
  let r227 = Tools.gensym "x" in
  let r228 = Tools.gensym "x" in
  let r229 = Tools.gensym "x" in
  let r230 = Tools.gensym "x" in
  let r231 = Tools.gensym "x" in
  let r232 = Tools.gensym "x" in
  let r233 = Tools.gensym "x" in
  let r234 = Tools.gensym "x" in
  let r235 = Tools.gensym "x" in
  let r236 = Tools.gensym "x" in
  let r237 = Tools.gensym "x" in
  let r238 = Tools.gensym "x" in
  let r239 = Tools.gensym "x" in
  let r240 = Tools.gensym "x" in
  let r241 = Tools.gensym "x" in
  let r242 = Tools.gensym "x" in
  let r243 = Tools.gensym "x" in
  let r244 = Tools.gensym "x" in
  let r245 = Tools.gensym "x" in
  let r246 = Tools.gensym "x" in
  let r247 = Tools.gensym "x" in
  let r248 = Tools.gensym "x" in
  let r249 = Tools.gensym "x" in
  let r250 = Tools.gensym "x" in
  let r251 = Tools.gensym "x" in
  let r252 = Tools.gensym "x" in
  let r253 = Tools.gensym "x" in
  let r254 = Tools.gensym "x" in
  let r255 = Tools.gensym "x" in
  let r256 = Tools.gensym "x" in
  let r257 = Tools.gensym "x" in
  let r258 = Tools.gensym "x" in
  let r259 = Tools.gensym "x" in
  let r260 = Tools.gensym "x" in
  let r261 = Tools.gensym "x" in
  let r262 = Tools.gensym "x" in
  let r263 = Tools.gensym "x" in
  let r264 = Tools.gensym "x" in
  let r265 = Tools.gensym "x" in
  let r266 = Tools.gensym "x" in
  let r267 = Tools.gensym "x" in
  let r268 = Tools.gensym "x" in
  let r269 = Tools.gensym "x" in
  let r270 = Tools.gensym "x" in
  let r271 = Tools.gensym "x" in
  let r272 = Tools.gensym "x" in
  let r273 = Tools.gensym "x" in
  let r274 = Tools.gensym "x" in
  let r275 = Tools.gensym "x" in
  let r276 = Tools.gensym "x" in
  let r277 = Tools.gensym "x" in
  let r278 = Tools.gensym "x" in
  let r279 = Tools.gensym "x" in
  let r280 = Tools.gensym "x" in
  let r281 = Tools.gensym "x" in
  let r282 = Tools.gensym "x" in
  let r283 = Tools.gensym "x" in
  let r284 = Tools.gensym "x" in
  let r285 = Tools.gensym "x" in
  let r286 = Tools.gensym "x" in
  let r287 = Tools.gensym "x" in
  let r288 = Tools.gensym "x" in
  let r289 = Tools.gensym "x" in
  let r290 = Tools.gensym "x" in
  let r291 = Tools.gensym "x" in
  let r292 = Tools.gensym "x" in
  let r293 = Tools.gensym "x" in
  let r294 = Tools.gensym "x" in
  let r295 = Tools.gensym "x" in
  let r296 = Tools.gensym "x" in
  let r297 = Tools.gensym "x" in
  let r298 = Tools.gensym "x" in
  let r299 = Tools.gensym "x" in
  let r300 = Tools.gensym "x" in
  let r301 = Tools.gensym "x" in
  let r302 = Tools.gensym "x" in
  let r303 = Tools.gensym "x" in
  let r304 = Tools.gensym "x" in
  let r305 = Tools.gensym "x" in
  let r306 = Tools.gensym "x" in
  let r307 = Tools.gensym "x" in
  let r308 = Tools.gensym "x" in
  let r309 = Tools.gensym "x" in
  let r310 = Tools.gensym "x" in
  let r311 = Tools.gensym "x" in
  let r312 = Tools.gensym "x" in
  let r313 = Tools.gensym "x" in
  let r314 = Tools.gensym "x" in
  let r315 = Tools.gensym "x" in
  let r316 = Tools.gensym "x" in
  let r317 = Tools.gensym "x" in
  let r318 = Tools.gensym "x" in
  let r319 = Tools.gensym "x" in
  let r320 = Tools.gensym "x" in
  let r321 = Tools.gensym "x" in
  let r322 = Tools.gensym "x" in
  let r323 = Tools.gensym "x" in
  let r324 = Tools.gensym "x" in
  let r325 = Tools.gensym "x" in
  let r326 = Tools.gensym "x" in
  let r327 = Tools.gensym "x" in
  let r328 = Tools.gensym "x" in
  let r329 = Tools.gensym "x" in
  let r330 = Tools.gensym "x" in
  let r331 = Tools.gensym "x" in
  let r332 = Tools.gensym "x" in
  let r333 = Tools.gensym "x" in
  let r334 = Tools.gensym "x" in
  let r335 = Tools.gensym "x" in
  let r336 = Tools.gensym "x" in
  let r337 = Tools.gensym "x" in
  let r338 = Tools.gensym "x" in
  let r339 = Tools.gensym "x" in
  let r340 = Tools.gensym "x" in
  let r341 = Tools.gensym "x" in
  let r342 = Tools.gensym "x" in
  let r343 = Tools.gensym "x" in
  let r344 = Tools.gensym "x" in
  let r345 = Tools.gensym "x" in
  let r346 = Tools.gensym "x" in
  let r347 = Tools.gensym "x" in
  let r348 = Tools.gensym "x" in
  let r349 = Tools.gensym "x" in
  let r350 = Tools.gensym "x" in
  let r351 = Tools.gensym "x" in
  let r352 = Tools.gensym "x" in
  let r353 = Tools.gensym "x" in
  let r354 = Tools.gensym "x" in
  let r355 = Tools.gensym "x" in
  let r356 = Tools.gensym "x" in
  let r357 = Tools.gensym "x" in
  let r358 = Tools.gensym "x" in
  let r359 = Tools.gensym "x" in
  let r360 = Tools.gensym "x" in
  let r361 = Tools.gensym "x" in
  let r362 = Tools.gensym "x" in
  let r363 = Tools.gensym "x" in
  let r364 = Tools.gensym "x" in
  let r365 = Tools.gensym "x" in
  let r366 = Tools.gensym "x" in
  let r367 = Tools.gensym "x" in
  let r368 = Tools.gensym "x" in
  let r369 = Tools.gensym "x" in
  let r370 = Tools.gensym "x" in
  let r371 = Tools.gensym "x" in
  let r372 = Tools.gensym "x" in
  let r373 = Tools.gensym "x" in
  let r374 = Tools.gensym "x" in
  let r375 = Tools.gensym "x" in
  let r376 = Tools.gensym "x" in
  let r377 = Tools.gensym "x" in
  let r378 = Tools.gensym "x" in
  let r379 = Tools.gensym "x" in
  let r380 = Tools.gensym "x" in
  let r381 = Tools.gensym "x" in
  let r382 = Tools.gensym "x" in
  let r383 = Tools.gensym "x" in
  let r384 = Tools.gensym "x" in
  let r385 = Tools.gensym "x" in
  let r386 = Tools.gensym "x" in
  let r387 = Tools.gensym "x" in
  let r388 = Tools.gensym "x" in
  let r389 = Tools.gensym "x" in
  let r390 = Tools.gensym "x" in
  let r391 = Tools.gensym "x" in
  let r392 = Tools.gensym "x" in
  let r393 = Tools.gensym "x" in
  let r394 = Tools.gensym "x" in
  let r395 = Tools.gensym "x" in
  let r396 = Tools.gensym "x" in
  let r397 = Tools.gensym "x" in
  let r398 = Tools.gensym "x" in
  let r399 = Tools.gensym "x" in
  let r400 = Tools.gensym "x" in
  let r401 = Tools.gensym "x" in
  let r402 = Tools.gensym "x" in
  let r403 = Tools.gensym "x" in
  let r404 = Tools.gensym "x" in
  let r405 = Tools.gensym "x" in
  let r406 = Tools.gensym "x" in
  let r407 = Tools.gensym "x" in
  let r408 = Tools.gensym "x" in
  let r409 = Tools.gensym "x" in
  let r410 = Tools.gensym "x" in
  let r411 = Tools.gensym "x" in
  let r412 = Tools.gensym "x" in
  let r413 = Tools.gensym "x" in
  let r414 = Tools.gensym "x" in
  let r415 = Tools.gensym "x" in
  let r416 = Tools.gensym "x" in
  let r417 = Tools.gensym "x" in
  let r418 = Tools.gensym "x" in
  let r419 = Tools.gensym "x" in
  let r420 = Tools.gensym "x" in
  let r421 = Tools.gensym "x" in
  let r422 = Tools.gensym "x" in
  let r423 = Tools.gensym "x" in
  let r424 = Tools.gensym "x" in
  let r425 = Tools.gensym "x" in
  let r426 = Tools.gensym "x" in
  let r427 = Tools.gensym "x" in
  let r428 = Tools.gensym "x" in
  let vv429 =
  Ctrl.shift
    (fun x430 ->
       let rr431 =
       x430
         (let r432 = Tools.gensym "x" in
          let r433 = Tools.gensym "x" in
          let r434 = Tools.gensym "x" in
          let r435 = Tools.gensym "x" in
          let r436 = Tools.gensym "x" in
          let r437 = Tools.gensym "x" in
          let r438 = Tools.gensym "x" in
          let r439 = Tools.gensym "x" in
          let vv440 =
          Ctrl.shift
            (fun x441 ->
               let rr442 =
               x441
                 (let r443 = Tools.gensym "x" in
                  let r444 = Tools.gensym "x" in
                  let vv445 =
                  Ctrl.shift
                    (fun x446 ->
                       let rr447 =
                       x446 (Ldsb
                         ((Generala
                          (Sy.VAR r432, (Imode (Sy.VAR r443)))), Sy.VAR
                          r3)) in
                       let rr448 =
                       x446 (Ldsb
                         ((Generala
                          (Sy.VAR r432, (Rmode (Sy.VAR r444)))), Sy.VAR
                          r3)) in
                       Sy.CASE
                       (Sy.VAR r433,
                        [("Imode", [r443], rr447);
                         ("Rmode", [r444], rr448)])) in vv445) in
               let rr449 =
               x441 (Ldsb
                 ((Dispa (Sy.VAR r434, Sy.VAR r435)), Sy.VAR r3)) in
               let rr450 =
               x441 (Ldsb ((Absolutea (Sy.VAR r436)), Sy.VAR r3)) in
               let rr451 =
               x441 (Ldsb
                 ((Indexa (Sy.VAR r437, Sy.VAR r438)), Sy.VAR r3)) in
               let rr452 =
               x441 (Ldsb ((Indirecta (Sy.VAR r439)), Sy.VAR r3)) in
               Sy.CASE
               (Sy.VAR r2,
                [("Generala", [r432;r433], rr442);
                 ("Dispa", [r434;r435], rr449);
                 ("Absolutea", [r436], rr450);
                 ("Indexa", [r437;r438], rr451);
                 ("Indirecta", [r439], rr452)])) in vv440) in
       let rr453 =
       x430
         (let r454 = Tools.gensym "x" in
          let r455 = Tools.gensym "x" in
          let r456 = Tools.gensym "x" in
          let r457 = Tools.gensym "x" in
          let r458 = Tools.gensym "x" in
          let r459 = Tools.gensym "x" in
          let r460 = Tools.gensym "x" in
          let r461 = Tools.gensym "x" in
          let vv462 =
          Ctrl.shift
            (fun x463 ->
               let rr464 =
               x463
                 (let r465 = Tools.gensym "x" in
                  let r466 = Tools.gensym "x" in
                  let vv467 =
                  Ctrl.shift
                    (fun x468 ->
                       let rr469 =
                       x468 (Ldsh
                         ((Generala
                          (Sy.VAR r454, (Imode (Sy.VAR r465)))), Sy.VAR
                          r5)) in
                       let rr470 =
                       x468 (Ldsh
                         ((Generala
                          (Sy.VAR r454, (Rmode (Sy.VAR r466)))), Sy.VAR
                          r5)) in
                       Sy.CASE
                       (Sy.VAR r455,
                        [("Imode", [r465], rr469);
                         ("Rmode", [r466], rr470)])) in vv467) in
               let rr471 =
               x463 (Ldsh
                 ((Dispa (Sy.VAR r456, Sy.VAR r457)), Sy.VAR r5)) in
               let rr472 =
               x463 (Ldsh ((Absolutea (Sy.VAR r458)), Sy.VAR r5)) in
               let rr473 =
               x463 (Ldsh
                 ((Indexa (Sy.VAR r459, Sy.VAR r460)), Sy.VAR r5)) in
               let rr474 =
               x463 (Ldsh ((Indirecta (Sy.VAR r461)), Sy.VAR r5)) in
               Sy.CASE
               (Sy.VAR r4,
                [("Generala", [r454;r455], rr464);
                 ("Dispa", [r456;r457], rr471);
                 ("Absolutea", [r458], rr472);
                 ("Indexa", [r459;r460], rr473);
                 ("Indirecta", [r461], rr474)])) in vv462) in
       let rr475 =
       x430
         (let r476 = Tools.gensym "x" in
          let r477 = Tools.gensym "x" in
          let r478 = Tools.gensym "x" in
          let r479 = Tools.gensym "x" in
          let r480 = Tools.gensym "x" in
          let r481 = Tools.gensym "x" in
          let r482 = Tools.gensym "x" in
          let r483 = Tools.gensym "x" in
          let vv484 =
          Ctrl.shift
            (fun x485 ->
               let rr486 =
               x485
                 (let r487 = Tools.gensym "x" in
                  let r488 = Tools.gensym "x" in
                  let vv489 =
                  Ctrl.shift
                    (fun x490 ->
                       let rr491 =
                       x490 (Ldub
                         ((Generala
                          (Sy.VAR r476, (Imode (Sy.VAR r487)))), Sy.VAR
                          r7)) in
                       let rr492 =
                       x490 (Ldub
                         ((Generala
                          (Sy.VAR r476, (Rmode (Sy.VAR r488)))), Sy.VAR
                          r7)) in
                       Sy.CASE
                       (Sy.VAR r477,
                        [("Imode", [r487], rr491);
                         ("Rmode", [r488], rr492)])) in vv489) in
               let rr493 =
               x485 (Ldub
                 ((Dispa (Sy.VAR r478, Sy.VAR r479)), Sy.VAR r7)) in
               let rr494 =
               x485 (Ldub ((Absolutea (Sy.VAR r480)), Sy.VAR r7)) in
               let rr495 =
               x485 (Ldub
                 ((Indexa (Sy.VAR r481, Sy.VAR r482)), Sy.VAR r7)) in
               let rr496 =
               x485 (Ldub ((Indirecta (Sy.VAR r483)), Sy.VAR r7)) in
               Sy.CASE
               (Sy.VAR r6,
                [("Generala", [r476;r477], rr486);
                 ("Dispa", [r478;r479], rr493);
                 ("Absolutea", [r480], rr494);
                 ("Indexa", [r481;r482], rr495);
                 ("Indirecta", [r483], rr496)])) in vv484) in
       let rr497 =
       x430
         (let r498 = Tools.gensym "x" in
          let r499 = Tools.gensym "x" in
          let r500 = Tools.gensym "x" in
          let r501 = Tools.gensym "x" in
          let r502 = Tools.gensym "x" in
          let r503 = Tools.gensym "x" in
          let r504 = Tools.gensym "x" in
          let r505 = Tools.gensym "x" in
          let vv506 =
          Ctrl.shift
            (fun x507 ->
               let rr508 =
               x507
                 (let r509 = Tools.gensym "x" in
                  let r510 = Tools.gensym "x" in
                  let vv511 =
                  Ctrl.shift
                    (fun x512 ->
                       let rr513 =
                       x512 (Lduh
                         ((Generala
                          (Sy.VAR r498, (Imode (Sy.VAR r509)))), Sy.VAR
                          r9)) in
                       let rr514 =
                       x512 (Lduh
                         ((Generala
                          (Sy.VAR r498, (Rmode (Sy.VAR r510)))), Sy.VAR
                          r9)) in
                       Sy.CASE
                       (Sy.VAR r499,
                        [("Imode", [r509], rr513);
                         ("Rmode", [r510], rr514)])) in vv511) in
               let rr515 =
               x507 (Lduh
                 ((Dispa (Sy.VAR r500, Sy.VAR r501)), Sy.VAR r9)) in
               let rr516 =
               x507 (Lduh ((Absolutea (Sy.VAR r502)), Sy.VAR r9)) in
               let rr517 =
               x507 (Lduh
                 ((Indexa (Sy.VAR r503, Sy.VAR r504)), Sy.VAR r9)) in
               let rr518 =
               x507 (Lduh ((Indirecta (Sy.VAR r505)), Sy.VAR r9)) in
               Sy.CASE
               (Sy.VAR r8,
                [("Generala", [r498;r499], rr508);
                 ("Dispa", [r500;r501], rr515);
                 ("Absolutea", [r502], rr516);
                 ("Indexa", [r503;r504], rr517);
                 ("Indirecta", [r505], rr518)])) in vv506) in
       let rr519 =
       x430
         (let r520 = Tools.gensym "x" in
          let r521 = Tools.gensym "x" in
          let r522 = Tools.gensym "x" in
          let r523 = Tools.gensym "x" in
          let r524 = Tools.gensym "x" in
          let r525 = Tools.gensym "x" in
          let r526 = Tools.gensym "x" in
          let r527 = Tools.gensym "x" in
          let vv528 =
          Ctrl.shift
            (fun x529 ->
               let rr530 =
               x529
                 (let r531 = Tools.gensym "x" in
                  let r532 = Tools.gensym "x" in
                  let vv533 =
                  Ctrl.shift
                    (fun x534 ->
                       let rr535 =
                       x534 (Ld
                         ((Generala
                          (Sy.VAR r520, (Imode (Sy.VAR r531)))), Sy.VAR
                          r11)) in
                       let rr536 =
                       x534 (Ld
                         ((Generala
                          (Sy.VAR r520, (Rmode (Sy.VAR r532)))), Sy.VAR
                          r11)) in
                       Sy.CASE
                       (Sy.VAR r521,
                        [("Imode", [r531], rr535);
                         ("Rmode", [r532], rr536)])) in vv533) in
               let rr537 =
               x529 (Ld
                 ((Dispa (Sy.VAR r522, Sy.VAR r523)), Sy.VAR r11)) in
               let rr538 =
               x529 (Ld ((Absolutea (Sy.VAR r524)), Sy.VAR r11)) in
               let rr539 =
               x529 (Ld
                 ((Indexa (Sy.VAR r525, Sy.VAR r526)), Sy.VAR r11)) in
               let rr540 =
               x529 (Ld ((Indirecta (Sy.VAR r527)), Sy.VAR r11)) in
               Sy.CASE
               (Sy.VAR r10,
                [("Generala", [r520;r521], rr530);
                 ("Dispa", [r522;r523], rr537);
                 ("Absolutea", [r524], rr538);
                 ("Indexa", [r525;r526], rr539);
                 ("Indirecta", [r527], rr540)])) in vv528) in
       let rr541 =
       x430
         (let r542 = Tools.gensym "x" in
          let r543 = Tools.gensym "x" in
          let r544 = Tools.gensym "x" in
          let r545 = Tools.gensym "x" in
          let r546 = Tools.gensym "x" in
          let r547 = Tools.gensym "x" in
          let r548 = Tools.gensym "x" in
          let r549 = Tools.gensym "x" in
          let vv550 =
          Ctrl.shift
            (fun x551 ->
               let rr552 =
               x551
                 (let r553 = Tools.gensym "x" in
                  let r554 = Tools.gensym "x" in
                  let vv555 =
                  Ctrl.shift
                    (fun x556 ->
                       let rr557 =
                       x556 (Ldstub
                         ((Generala
                          (Sy.VAR r542, (Imode (Sy.VAR r553)))), Sy.VAR
                          r13)) in
                       let rr558 =
                       x556 (Ldstub
                         ((Generala
                          (Sy.VAR r542, (Rmode (Sy.VAR r554)))), Sy.VAR
                          r13)) in
                       Sy.CASE
                       (Sy.VAR r543,
                        [("Imode", [r553], rr557);
                         ("Rmode", [r554], rr558)])) in vv555) in
               let rr559 =
               x551 (Ldstub
                 ((Dispa (Sy.VAR r544, Sy.VAR r545)), Sy.VAR r13)) in
               let rr560 =
               x551 (Ldstub ((Absolutea (Sy.VAR r546)), Sy.VAR r13)) in
               let rr561 =
               x551 (Ldstub
                 ((Indexa (Sy.VAR r547, Sy.VAR r548)), Sy.VAR r13)) in
               let rr562 =
               x551 (Ldstub ((Indirecta (Sy.VAR r549)), Sy.VAR r13)) in
               Sy.CASE
               (Sy.VAR r12,
                [("Generala", [r542;r543], rr552);
                 ("Dispa", [r544;r545], rr559);
                 ("Absolutea", [r546], rr560);
                 ("Indexa", [r547;r548], rr561);
                 ("Indirecta", [r549], rr562)])) in vv550) in
       let rr563 =
       x430
         (let r564 = Tools.gensym "x" in
          let r565 = Tools.gensym "x" in
          let r566 = Tools.gensym "x" in
          let r567 = Tools.gensym "x" in
          let r568 = Tools.gensym "x" in
          let r569 = Tools.gensym "x" in
          let r570 = Tools.gensym "x" in
          let r571 = Tools.gensym "x" in
          let vv572 =
          Ctrl.shift
            (fun x573 ->
               let rr574 =
               x573
                 (let r575 = Tools.gensym "x" in
                  let r576 = Tools.gensym "x" in
                  let vv577 =
                  Ctrl.shift
                    (fun x578 ->
                       let rr579 =
                       x578 (Swap_
                         ((Generala
                          (Sy.VAR r564, (Imode (Sy.VAR r575)))), Sy.VAR
                          r15)) in
                       let rr580 =
                       x578 (Swap_
                         ((Generala
                          (Sy.VAR r564, (Rmode (Sy.VAR r576)))), Sy.VAR
                          r15)) in
                       Sy.CASE
                       (Sy.VAR r565,
                        [("Imode", [r575], rr579);
                         ("Rmode", [r576], rr580)])) in vv577) in
               let rr581 =
               x573 (Swap_
                 ((Dispa (Sy.VAR r566, Sy.VAR r567)), Sy.VAR r15)) in
               let rr582 =
               x573 (Swap_ ((Absolutea (Sy.VAR r568)), Sy.VAR r15)) in
               let rr583 =
               x573 (Swap_
                 ((Indexa (Sy.VAR r569, Sy.VAR r570)), Sy.VAR r15)) in
               let rr584 =
               x573 (Swap_ ((Indirecta (Sy.VAR r571)), Sy.VAR r15)) in
               Sy.CASE
               (Sy.VAR r14,
                [("Generala", [r564;r565], rr574);
                 ("Dispa", [r566;r567], rr581);
                 ("Absolutea", [r568], rr582);
                 ("Indexa", [r569;r570], rr583);
                 ("Indirecta", [r571], rr584)])) in vv572) in
       let rr585 =
       x430
         (let r586 = Tools.gensym "x" in
          let r587 = Tools.gensym "x" in
          let r588 = Tools.gensym "x" in
          let r589 = Tools.gensym "x" in
          let r590 = Tools.gensym "x" in
          let r591 = Tools.gensym "x" in
          let r592 = Tools.gensym "x" in
          let r593 = Tools.gensym "x" in
          let vv594 =
          Ctrl.shift
            (fun x595 ->
               let rr596 =
               x595
                 (let r597 = Tools.gensym "x" in
                  let r598 = Tools.gensym "x" in
                  let vv599 =
                  Ctrl.shift
                    (fun x600 ->
                       let rr601 =
                       x600 (Ldd
                         ((Generala
                          (Sy.VAR r586, (Imode (Sy.VAR r597)))), Sy.VAR
                          r17)) in
                       let rr602 =
                       x600 (Ldd
                         ((Generala
                          (Sy.VAR r586, (Rmode (Sy.VAR r598)))), Sy.VAR
                          r17)) in
                       Sy.CASE
                       (Sy.VAR r587,
                        [("Imode", [r597], rr601);
                         ("Rmode", [r598], rr602)])) in vv599) in
               let rr603 =
               x595 (Ldd
                 ((Dispa (Sy.VAR r588, Sy.VAR r589)), Sy.VAR r17)) in
               let rr604 =
               x595 (Ldd ((Absolutea (Sy.VAR r590)), Sy.VAR r17)) in
               let rr605 =
               x595 (Ldd
                 ((Indexa (Sy.VAR r591, Sy.VAR r592)), Sy.VAR r17)) in
               let rr606 =
               x595 (Ldd ((Indirecta (Sy.VAR r593)), Sy.VAR r17)) in
               Sy.CASE
               (Sy.VAR r16,
                [("Generala", [r586;r587], rr596);
                 ("Dispa", [r588;r589], rr603);
                 ("Absolutea", [r590], rr604);
                 ("Indexa", [r591;r592], rr605);
                 ("Indirecta", [r593], rr606)])) in vv594) in
       let rr607 =
       x430
         (let r608 = Tools.gensym "x" in
          let r609 = Tools.gensym "x" in
          let r610 = Tools.gensym "x" in
          let r611 = Tools.gensym "x" in
          let r612 = Tools.gensym "x" in
          let r613 = Tools.gensym "x" in
          let r614 = Tools.gensym "x" in
          let r615 = Tools.gensym "x" in
          let vv616 =
          Ctrl.shift
            (fun x617 ->
               let rr618 =
               x617
                 (let r619 = Tools.gensym "x" in
                  let r620 = Tools.gensym "x" in
                  let vv621 =
                  Ctrl.shift
                    (fun x622 ->
                       let rr623 =
                       x622 (Ldf
                         ((Generala
                          (Sy.VAR r608, (Imode (Sy.VAR r619)))), Sy.VAR
                          r19)) in
                       let rr624 =
                       x622 (Ldf
                         ((Generala
                          (Sy.VAR r608, (Rmode (Sy.VAR r620)))), Sy.VAR
                          r19)) in
                       Sy.CASE
                       (Sy.VAR r609,
                        [("Imode", [r619], rr623);
                         ("Rmode", [r620], rr624)])) in vv621) in
               let rr625 =
               x617 (Ldf
                 ((Dispa (Sy.VAR r610, Sy.VAR r611)), Sy.VAR r19)) in
               let rr626 =
               x617 (Ldf ((Absolutea (Sy.VAR r612)), Sy.VAR r19)) in
               let rr627 =
               x617 (Ldf
                 ((Indexa (Sy.VAR r613, Sy.VAR r614)), Sy.VAR r19)) in
               let rr628 =
               x617 (Ldf ((Indirecta (Sy.VAR r615)), Sy.VAR r19)) in
               Sy.CASE
               (Sy.VAR r18,
                [("Generala", [r608;r609], rr618);
                 ("Dispa", [r610;r611], rr625);
                 ("Absolutea", [r612], rr626);
                 ("Indexa", [r613;r614], rr627);
                 ("Indirecta", [r615], rr628)])) in vv616) in
       let rr629 =
       x430
         (let r630 = Tools.gensym "x" in
          let r631 = Tools.gensym "x" in
          let r632 = Tools.gensym "x" in
          let r633 = Tools.gensym "x" in
          let r634 = Tools.gensym "x" in
          let r635 = Tools.gensym "x" in
          let r636 = Tools.gensym "x" in
          let r637 = Tools.gensym "x" in
          let vv638 =
          Ctrl.shift
            (fun x639 ->
               let rr640 =
               x639
                 (let r641 = Tools.gensym "x" in
                  let r642 = Tools.gensym "x" in
                  let vv643 =
                  Ctrl.shift
                    (fun x644 ->
                       let rr645 =
                       x644 (Lddf
                         ((Generala
                          (Sy.VAR r630, (Imode (Sy.VAR r641)))), Sy.VAR
                          r21)) in
                       let rr646 =
                       x644 (Lddf
                         ((Generala
                          (Sy.VAR r630, (Rmode (Sy.VAR r642)))), Sy.VAR
                          r21)) in
                       Sy.CASE
                       (Sy.VAR r631,
                        [("Imode", [r641], rr645);
                         ("Rmode", [r642], rr646)])) in vv643) in
               let rr647 =
               x639 (Lddf
                 ((Dispa (Sy.VAR r632, Sy.VAR r633)), Sy.VAR r21)) in
               let rr648 =
               x639 (Lddf ((Absolutea (Sy.VAR r634)), Sy.VAR r21)) in
               let rr649 =
               x639 (Lddf
                 ((Indexa (Sy.VAR r635, Sy.VAR r636)), Sy.VAR r21)) in
               let rr650 =
               x639 (Lddf ((Indirecta (Sy.VAR r637)), Sy.VAR r21)) in
               Sy.CASE
               (Sy.VAR r20,
                [("Generala", [r630;r631], rr640);
                 ("Dispa", [r632;r633], rr647);
                 ("Absolutea", [r634], rr648);
                 ("Indexa", [r635;r636], rr649);
                 ("Indirecta", [r637], rr650)])) in vv638) in
       let rr651 =
       x430
         (let r652 = Tools.gensym "x" in
          let r653 = Tools.gensym "x" in
          let r654 = Tools.gensym "x" in
          let r655 = Tools.gensym "x" in
          let r656 = Tools.gensym "x" in
          let r657 = Tools.gensym "x" in
          let r658 = Tools.gensym "x" in
          let r659 = Tools.gensym "x" in
          let vv660 =
          Ctrl.shift
            (fun x661 ->
               let rr662 =
               x661
                 (let r663 = Tools.gensym "x" in
                  let r664 = Tools.gensym "x" in
                  let vv665 =
                  Ctrl.shift
                    (fun x666 ->
                       let rr667 =
                       x666 (Ldc
                         ((Generala
                          (Sy.VAR r652, (Imode (Sy.VAR r663)))), Sy.VAR
                          r23)) in
                       let rr668 =
                       x666 (Ldc
                         ((Generala
                          (Sy.VAR r652, (Rmode (Sy.VAR r664)))), Sy.VAR
                          r23)) in
                       Sy.CASE
                       (Sy.VAR r653,
                        [("Imode", [r663], rr667);
                         ("Rmode", [r664], rr668)])) in vv665) in
               let rr669 =
               x661 (Ldc
                 ((Dispa (Sy.VAR r654, Sy.VAR r655)), Sy.VAR r23)) in
               let rr670 =
               x661 (Ldc ((Absolutea (Sy.VAR r656)), Sy.VAR r23)) in
               let rr671 =
               x661 (Ldc
                 ((Indexa (Sy.VAR r657, Sy.VAR r658)), Sy.VAR r23)) in
               let rr672 =
               x661 (Ldc ((Indirecta (Sy.VAR r659)), Sy.VAR r23)) in
               Sy.CASE
               (Sy.VAR r22,
                [("Generala", [r652;r653], rr662);
                 ("Dispa", [r654;r655], rr669);
                 ("Absolutea", [r656], rr670);
                 ("Indexa", [r657;r658], rr671);
                 ("Indirecta", [r659], rr672)])) in vv660) in
       let rr673 =
       x430
         (let r674 = Tools.gensym "x" in
          let r675 = Tools.gensym "x" in
          let r676 = Tools.gensym "x" in
          let r677 = Tools.gensym "x" in
          let r678 = Tools.gensym "x" in
          let r679 = Tools.gensym "x" in
          let r680 = Tools.gensym "x" in
          let r681 = Tools.gensym "x" in
          let vv682 =
          Ctrl.shift
            (fun x683 ->
               let rr684 =
               x683
                 (let r685 = Tools.gensym "x" in
                  let r686 = Tools.gensym "x" in
                  let vv687 =
                  Ctrl.shift
                    (fun x688 ->
                       let rr689 =
                       x688 (Lddc
                         ((Generala
                          (Sy.VAR r674, (Imode (Sy.VAR r685)))), Sy.VAR
                          r25)) in
                       let rr690 =
                       x688 (Lddc
                         ((Generala
                          (Sy.VAR r674, (Rmode (Sy.VAR r686)))), Sy.VAR
                          r25)) in
                       Sy.CASE
                       (Sy.VAR r675,
                        [("Imode", [r685], rr689);
                         ("Rmode", [r686], rr690)])) in vv687) in
               let rr691 =
               x683 (Lddc
                 ((Dispa (Sy.VAR r676, Sy.VAR r677)), Sy.VAR r25)) in
               let rr692 =
               x683 (Lddc ((Absolutea (Sy.VAR r678)), Sy.VAR r25)) in
               let rr693 =
               x683 (Lddc
                 ((Indexa (Sy.VAR r679, Sy.VAR r680)), Sy.VAR r25)) in
               let rr694 =
               x683 (Lddc ((Indirecta (Sy.VAR r681)), Sy.VAR r25)) in
               Sy.CASE
               (Sy.VAR r24,
                [("Generala", [r674;r675], rr684);
                 ("Dispa", [r676;r677], rr691);
                 ("Absolutea", [r678], rr692);
                 ("Indexa", [r679;r680], rr693);
                 ("Indirecta", [r681], rr694)])) in vv682) in
       let rr695 =
       x430
         (let r696 = Tools.gensym "x" in
          let r697 = Tools.gensym "x" in
          let r698 = Tools.gensym "x" in
          let r699 = Tools.gensym "x" in
          let r700 = Tools.gensym "x" in
          let r701 = Tools.gensym "x" in
          let r702 = Tools.gensym "x" in
          let r703 = Tools.gensym "x" in
          let vv704 =
          Ctrl.shift
            (fun x705 ->
               let rr706 =
               x705
                 (let r707 = Tools.gensym "x" in
                  let r708 = Tools.gensym "x" in
                  let vv709 =
                  Ctrl.shift
                    (fun x710 ->
                       let rr711 =
                       x710 (Stb
                         (Sy.VAR r26, (Generala
                          (Sy.VAR r696, (Imode (Sy.VAR r707)))))) in
                       let rr712 =
                       x710 (Stb
                         (Sy.VAR r26, (Generala
                          (Sy.VAR r696, (Rmode (Sy.VAR r708)))))) in
                       Sy.CASE
                       (Sy.VAR r697,
                        [("Imode", [r707], rr711);
                         ("Rmode", [r708], rr712)])) in vv709) in
               let rr713 =
               x705 (Stb
                 (Sy.VAR r26, (Dispa (Sy.VAR r698, Sy.VAR r699)))) in
               let rr714 =
               x705 (Stb (Sy.VAR r26, (Absolutea (Sy.VAR r700)))) in
               let rr715 =
               x705 (Stb
                 (Sy.VAR r26, (Indexa (Sy.VAR r701, Sy.VAR r702)))) in
               let rr716 =
               x705 (Stb (Sy.VAR r26, (Indirecta (Sy.VAR r703)))) in
               Sy.CASE
               (Sy.VAR r27,
                [("Generala", [r696;r697], rr706);
                 ("Dispa", [r698;r699], rr713);
                 ("Absolutea", [r700], rr714);
                 ("Indexa", [r701;r702], rr715);
                 ("Indirecta", [r703], rr716)])) in vv704) in
       let rr717 =
       x430
         (let r718 = Tools.gensym "x" in
          let r719 = Tools.gensym "x" in
          let r720 = Tools.gensym "x" in
          let r721 = Tools.gensym "x" in
          let r722 = Tools.gensym "x" in
          let r723 = Tools.gensym "x" in
          let r724 = Tools.gensym "x" in
          let r725 = Tools.gensym "x" in
          let vv726 =
          Ctrl.shift
            (fun x727 ->
               let rr728 =
               x727
                 (let r729 = Tools.gensym "x" in
                  let r730 = Tools.gensym "x" in
                  let vv731 =
                  Ctrl.shift
                    (fun x732 ->
                       let rr733 =
                       x732 (Sth
                         (Sy.VAR r28, (Generala
                          (Sy.VAR r718, (Imode (Sy.VAR r729)))))) in
                       let rr734 =
                       x732 (Sth
                         (Sy.VAR r28, (Generala
                          (Sy.VAR r718, (Rmode (Sy.VAR r730)))))) in
                       Sy.CASE
                       (Sy.VAR r719,
                        [("Imode", [r729], rr733);
                         ("Rmode", [r730], rr734)])) in vv731) in
               let rr735 =
               x727 (Sth
                 (Sy.VAR r28, (Dispa (Sy.VAR r720, Sy.VAR r721)))) in
               let rr736 =
               x727 (Sth (Sy.VAR r28, (Absolutea (Sy.VAR r722)))) in
               let rr737 =
               x727 (Sth
                 (Sy.VAR r28, (Indexa (Sy.VAR r723, Sy.VAR r724)))) in
               let rr738 =
               x727 (Sth (Sy.VAR r28, (Indirecta (Sy.VAR r725)))) in
               Sy.CASE
               (Sy.VAR r29,
                [("Generala", [r718;r719], rr728);
                 ("Dispa", [r720;r721], rr735);
                 ("Absolutea", [r722], rr736);
                 ("Indexa", [r723;r724], rr737);
                 ("Indirecta", [r725], rr738)])) in vv726) in
       let rr739 =
       x430
         (let r740 = Tools.gensym "x" in
          let r741 = Tools.gensym "x" in
          let r742 = Tools.gensym "x" in
          let r743 = Tools.gensym "x" in
          let r744 = Tools.gensym "x" in
          let r745 = Tools.gensym "x" in
          let r746 = Tools.gensym "x" in
          let r747 = Tools.gensym "x" in
          let vv748 =
          Ctrl.shift
            (fun x749 ->
               let rr750 =
               x749
                 (let r751 = Tools.gensym "x" in
                  let r752 = Tools.gensym "x" in
                  let vv753 =
                  Ctrl.shift
                    (fun x754 ->
                       let rr755 =
                       x754 (St
                         (Sy.VAR r30, (Generala
                          (Sy.VAR r740, (Imode (Sy.VAR r751)))))) in
                       let rr756 =
                       x754 (St
                         (Sy.VAR r30, (Generala
                          (Sy.VAR r740, (Rmode (Sy.VAR r752)))))) in
                       Sy.CASE
                       (Sy.VAR r741,
                        [("Imode", [r751], rr755);
                         ("Rmode", [r752], rr756)])) in vv753) in
               let rr757 =
               x749 (St
                 (Sy.VAR r30, (Dispa (Sy.VAR r742, Sy.VAR r743)))) in
               let rr758 =
               x749 (St (Sy.VAR r30, (Absolutea (Sy.VAR r744)))) in
               let rr759 =
               x749 (St
                 (Sy.VAR r30, (Indexa (Sy.VAR r745, Sy.VAR r746)))) in
               let rr760 =
               x749 (St (Sy.VAR r30, (Indirecta (Sy.VAR r747)))) in
               Sy.CASE
               (Sy.VAR r31,
                [("Generala", [r740;r741], rr750);
                 ("Dispa", [r742;r743], rr757);
                 ("Absolutea", [r744], rr758);
                 ("Indexa", [r745;r746], rr759);
                 ("Indirecta", [r747], rr760)])) in vv748) in
       let rr761 =
       x430
         (let r762 = Tools.gensym "x" in
          let r763 = Tools.gensym "x" in
          let r764 = Tools.gensym "x" in
          let r765 = Tools.gensym "x" in
          let r766 = Tools.gensym "x" in
          let r767 = Tools.gensym "x" in
          let r768 = Tools.gensym "x" in
          let r769 = Tools.gensym "x" in
          let vv770 =
          Ctrl.shift
            (fun x771 ->
               let rr772 =
               x771
                 (let r773 = Tools.gensym "x" in
                  let r774 = Tools.gensym "x" in
                  let vv775 =
                  Ctrl.shift
                    (fun x776 ->
                       let rr777 =
                       x776 (Std
                         (Sy.VAR r32, (Generala
                          (Sy.VAR r762, (Imode (Sy.VAR r773)))))) in
                       let rr778 =
                       x776 (Std
                         (Sy.VAR r32, (Generala
                          (Sy.VAR r762, (Rmode (Sy.VAR r774)))))) in
                       Sy.CASE
                       (Sy.VAR r763,
                        [("Imode", [r773], rr777);
                         ("Rmode", [r774], rr778)])) in vv775) in
               let rr779 =
               x771 (Std
                 (Sy.VAR r32, (Dispa (Sy.VAR r764, Sy.VAR r765)))) in
               let rr780 =
               x771 (Std (Sy.VAR r32, (Absolutea (Sy.VAR r766)))) in
               let rr781 =
               x771 (Std
                 (Sy.VAR r32, (Indexa (Sy.VAR r767, Sy.VAR r768)))) in
               let rr782 =
               x771 (Std (Sy.VAR r32, (Indirecta (Sy.VAR r769)))) in
               Sy.CASE
               (Sy.VAR r33,
                [("Generala", [r762;r763], rr772);
                 ("Dispa", [r764;r765], rr779);
                 ("Absolutea", [r766], rr780);
                 ("Indexa", [r767;r768], rr781);
                 ("Indirecta", [r769], rr782)])) in vv770) in
       let rr783 =
       x430
         (let r784 = Tools.gensym "x" in
          let r785 = Tools.gensym "x" in
          let r786 = Tools.gensym "x" in
          let r787 = Tools.gensym "x" in
          let r788 = Tools.gensym "x" in
          let r789 = Tools.gensym "x" in
          let r790 = Tools.gensym "x" in
          let r791 = Tools.gensym "x" in
          let vv792 =
          Ctrl.shift
            (fun x793 ->
               let rr794 =
               x793
                 (let r795 = Tools.gensym "x" in
                  let r796 = Tools.gensym "x" in
                  let vv797 =
                  Ctrl.shift
                    (fun x798 ->
                       let rr799 =
                       x798 (Stf
                         (Sy.VAR r34, (Generala
                          (Sy.VAR r784, (Imode (Sy.VAR r795)))))) in
                       let rr800 =
                       x798 (Stf
                         (Sy.VAR r34, (Generala
                          (Sy.VAR r784, (Rmode (Sy.VAR r796)))))) in
                       Sy.CASE
                       (Sy.VAR r785,
                        [("Imode", [r795], rr799);
                         ("Rmode", [r796], rr800)])) in vv797) in
               let rr801 =
               x793 (Stf
                 (Sy.VAR r34, (Dispa (Sy.VAR r786, Sy.VAR r787)))) in
               let rr802 =
               x793 (Stf (Sy.VAR r34, (Absolutea (Sy.VAR r788)))) in
               let rr803 =
               x793 (Stf
                 (Sy.VAR r34, (Indexa (Sy.VAR r789, Sy.VAR r790)))) in
               let rr804 =
               x793 (Stf (Sy.VAR r34, (Indirecta (Sy.VAR r791)))) in
               Sy.CASE
               (Sy.VAR r35,
                [("Generala", [r784;r785], rr794);
                 ("Dispa", [r786;r787], rr801);
                 ("Absolutea", [r788], rr802);
                 ("Indexa", [r789;r790], rr803);
                 ("Indirecta", [r791], rr804)])) in vv792) in
       let rr805 =
       x430
         (let r806 = Tools.gensym "x" in
          let r807 = Tools.gensym "x" in
          let r808 = Tools.gensym "x" in
          let r809 = Tools.gensym "x" in
          let r810 = Tools.gensym "x" in
          let r811 = Tools.gensym "x" in
          let r812 = Tools.gensym "x" in
          let r813 = Tools.gensym "x" in
          let vv814 =
          Ctrl.shift
            (fun x815 ->
               let rr816 =
               x815
                 (let r817 = Tools.gensym "x" in
                  let r818 = Tools.gensym "x" in
                  let vv819 =
                  Ctrl.shift
                    (fun x820 ->
                       let rr821 =
                       x820 (Stdf
                         (Sy.VAR r36, (Generala
                          (Sy.VAR r806, (Imode (Sy.VAR r817)))))) in
                       let rr822 =
                       x820 (Stdf
                         (Sy.VAR r36, (Generala
                          (Sy.VAR r806, (Rmode (Sy.VAR r818)))))) in
                       Sy.CASE
                       (Sy.VAR r807,
                        [("Imode", [r817], rr821);
                         ("Rmode", [r818], rr822)])) in vv819) in
               let rr823 =
               x815 (Stdf
                 (Sy.VAR r36, (Dispa (Sy.VAR r808, Sy.VAR r809)))) in
               let rr824 =
               x815 (Stdf (Sy.VAR r36, (Absolutea (Sy.VAR r810)))) in
               let rr825 =
               x815 (Stdf
                 (Sy.VAR r36, (Indexa (Sy.VAR r811, Sy.VAR r812)))) in
               let rr826 =
               x815 (Stdf (Sy.VAR r36, (Indirecta (Sy.VAR r813)))) in
               Sy.CASE
               (Sy.VAR r37,
                [("Generala", [r806;r807], rr816);
                 ("Dispa", [r808;r809], rr823);
                 ("Absolutea", [r810], rr824);
                 ("Indexa", [r811;r812], rr825);
                 ("Indirecta", [r813], rr826)])) in vv814) in
       let rr827 =
       x430
         (let r828 = Tools.gensym "x" in
          let r829 = Tools.gensym "x" in
          let r830 = Tools.gensym "x" in
          let r831 = Tools.gensym "x" in
          let r832 = Tools.gensym "x" in
          let r833 = Tools.gensym "x" in
          let r834 = Tools.gensym "x" in
          let r835 = Tools.gensym "x" in
          let vv836 =
          Ctrl.shift
            (fun x837 ->
               let rr838 =
               x837
                 (let r839 = Tools.gensym "x" in
                  let r840 = Tools.gensym "x" in
                  let vv841 =
                  Ctrl.shift
                    (fun x842 ->
                       let rr843 =
                       x842 (Stc
                         (Sy.VAR r38, (Generala
                          (Sy.VAR r828, (Imode (Sy.VAR r839)))))) in
                       let rr844 =
                       x842 (Stc
                         (Sy.VAR r38, (Generala
                          (Sy.VAR r828, (Rmode (Sy.VAR r840)))))) in
                       Sy.CASE
                       (Sy.VAR r829,
                        [("Imode", [r839], rr843);
                         ("Rmode", [r840], rr844)])) in vv841) in
               let rr845 =
               x837 (Stc
                 (Sy.VAR r38, (Dispa (Sy.VAR r830, Sy.VAR r831)))) in
               let rr846 =
               x837 (Stc (Sy.VAR r38, (Absolutea (Sy.VAR r832)))) in
               let rr847 =
               x837 (Stc
                 (Sy.VAR r38, (Indexa (Sy.VAR r833, Sy.VAR r834)))) in
               let rr848 =
               x837 (Stc (Sy.VAR r38, (Indirecta (Sy.VAR r835)))) in
               Sy.CASE
               (Sy.VAR r39,
                [("Generala", [r828;r829], rr838);
                 ("Dispa", [r830;r831], rr845);
                 ("Absolutea", [r832], rr846);
                 ("Indexa", [r833;r834], rr847);
                 ("Indirecta", [r835], rr848)])) in vv836) in
       let rr849 =
       x430
         (let r850 = Tools.gensym "x" in
          let r851 = Tools.gensym "x" in
          let r852 = Tools.gensym "x" in
          let r853 = Tools.gensym "x" in
          let r854 = Tools.gensym "x" in
          let r855 = Tools.gensym "x" in
          let r856 = Tools.gensym "x" in
          let r857 = Tools.gensym "x" in
          let vv858 =
          Ctrl.shift
            (fun x859 ->
               let rr860 =
               x859
                 (let r861 = Tools.gensym "x" in
                  let r862 = Tools.gensym "x" in
                  let vv863 =
                  Ctrl.shift
                    (fun x864 ->
                       let rr865 =
                       x864 (Stdc
                         (Sy.VAR r40, (Generala
                          (Sy.VAR r850, (Imode (Sy.VAR r861)))))) in
                       let rr866 =
                       x864 (Stdc
                         (Sy.VAR r40, (Generala
                          (Sy.VAR r850, (Rmode (Sy.VAR r862)))))) in
                       Sy.CASE
                       (Sy.VAR r851,
                        [("Imode", [r861], rr865);
                         ("Rmode", [r862], rr866)])) in vv863) in
               let rr867 =
               x859 (Stdc
                 (Sy.VAR r40, (Dispa (Sy.VAR r852, Sy.VAR r853)))) in
               let rr868 =
               x859 (Stdc (Sy.VAR r40, (Absolutea (Sy.VAR r854)))) in
               let rr869 =
               x859 (Stdc
                 (Sy.VAR r40, (Indexa (Sy.VAR r855, Sy.VAR r856)))) in
               let rr870 =
               x859 (Stdc (Sy.VAR r40, (Indirecta (Sy.VAR r857)))) in
               Sy.CASE
               (Sy.VAR r41,
                [("Generala", [r850;r851], rr860);
                 ("Dispa", [r852;r853], rr867);
                 ("Absolutea", [r854], rr868);
                 ("Indexa", [r855;r856], rr869);
                 ("Indirecta", [r857], rr870)])) in vv858) in
       let rr871 =
       x430
         (let r872 = Tools.gensym "x" in
          let r873 = Tools.gensym "x" in
          let r874 = Tools.gensym "x" in
          let vv875 =
          Ctrl.shift
            (fun x876 ->
               let rr877 =
               x876 (Ldsba
                 ((Indexr (Sy.VAR r872, Sy.VAR r873)), Sy.VAR r43,
                  Sy.VAR r44)) in
               let rr878 =
               x876 (Ldsba
                 ((Indirectr (Sy.VAR r874)), Sy.VAR r43, Sy.VAR r44))
               in
               Sy.CASE
               (Sy.VAR r42,
                [("Indexr", [r872;r873], rr877);
                 ("Indirectr", [r874], rr878)])) in vv875) in
       let rr879 =
       x430
         (let r880 = Tools.gensym "x" in
          let r881 = Tools.gensym "x" in
          let r882 = Tools.gensym "x" in
          let vv883 =
          Ctrl.shift
            (fun x884 ->
               let rr885 =
               x884 (Ldsha
                 ((Indexr (Sy.VAR r880, Sy.VAR r881)), Sy.VAR r46,
                  Sy.VAR r47)) in
               let rr886 =
               x884 (Ldsha
                 ((Indirectr (Sy.VAR r882)), Sy.VAR r46, Sy.VAR r47))
               in
               Sy.CASE
               (Sy.VAR r45,
                [("Indexr", [r880;r881], rr885);
                 ("Indirectr", [r882], rr886)])) in vv883) in
       let rr887 =
       x430
         (let r888 = Tools.gensym "x" in
          let r889 = Tools.gensym "x" in
          let r890 = Tools.gensym "x" in
          let vv891 =
          Ctrl.shift
            (fun x892 ->
               let rr893 =
               x892 (Lduba
                 ((Indexr (Sy.VAR r888, Sy.VAR r889)), Sy.VAR r49,
                  Sy.VAR r50)) in
               let rr894 =
               x892 (Lduba
                 ((Indirectr (Sy.VAR r890)), Sy.VAR r49, Sy.VAR r50))
               in
               Sy.CASE
               (Sy.VAR r48,
                [("Indexr", [r888;r889], rr893);
                 ("Indirectr", [r890], rr894)])) in vv891) in
       let rr895 =
       x430
         (let r896 = Tools.gensym "x" in
          let r897 = Tools.gensym "x" in
          let r898 = Tools.gensym "x" in
          let vv899 =
          Ctrl.shift
            (fun x900 ->
               let rr901 =
               x900 (Lduha
                 ((Indexr (Sy.VAR r896, Sy.VAR r897)), Sy.VAR r52,
                  Sy.VAR r53)) in
               let rr902 =
               x900 (Lduha
                 ((Indirectr (Sy.VAR r898)), Sy.VAR r52, Sy.VAR r53))
               in
               Sy.CASE
               (Sy.VAR r51,
                [("Indexr", [r896;r897], rr901);
                 ("Indirectr", [r898], rr902)])) in vv899) in
       let rr903 =
       x430
         (let r904 = Tools.gensym "x" in
          let r905 = Tools.gensym "x" in
          let r906 = Tools.gensym "x" in
          let vv907 =
          Ctrl.shift
            (fun x908 ->
               let rr909 =
               x908 (Lda
                 ((Indexr (Sy.VAR r904, Sy.VAR r905)), Sy.VAR r55,
                  Sy.VAR r56)) in
               let rr910 =
               x908 (Lda
                 ((Indirectr (Sy.VAR r906)), Sy.VAR r55, Sy.VAR r56))
               in
               Sy.CASE
               (Sy.VAR r54,
                [("Indexr", [r904;r905], rr909);
                 ("Indirectr", [r906], rr910)])) in vv907) in
       let rr911 =
       x430
         (let r912 = Tools.gensym "x" in
          let r913 = Tools.gensym "x" in
          let r914 = Tools.gensym "x" in
          let vv915 =
          Ctrl.shift
            (fun x916 ->
               let rr917 =
               x916 (Ldstuba
                 ((Indexr (Sy.VAR r912, Sy.VAR r913)), Sy.VAR r58,
                  Sy.VAR r59)) in
               let rr918 =
               x916 (Ldstuba
                 ((Indirectr (Sy.VAR r914)), Sy.VAR r58, Sy.VAR r59))
               in
               Sy.CASE
               (Sy.VAR r57,
                [("Indexr", [r912;r913], rr917);
                 ("Indirectr", [r914], rr918)])) in vv915) in
       let rr919 =
       x430
         (let r920 = Tools.gensym "x" in
          let r921 = Tools.gensym "x" in
          let r922 = Tools.gensym "x" in
          let vv923 =
          Ctrl.shift
            (fun x924 ->
               let rr925 =
               x924 (Swapa
                 ((Indexr (Sy.VAR r920, Sy.VAR r921)), Sy.VAR r61,
                  Sy.VAR r62)) in
               let rr926 =
               x924 (Swapa
                 ((Indirectr (Sy.VAR r922)), Sy.VAR r61, Sy.VAR r62))
               in
               Sy.CASE
               (Sy.VAR r60,
                [("Indexr", [r920;r921], rr925);
                 ("Indirectr", [r922], rr926)])) in vv923) in
       let rr927 =
       x430
         (let r928 = Tools.gensym "x" in
          let r929 = Tools.gensym "x" in
          let r930 = Tools.gensym "x" in
          let vv931 =
          Ctrl.shift
            (fun x932 ->
               let rr933 =
               x932 (Ldda
                 ((Indexr (Sy.VAR r928, Sy.VAR r929)), Sy.VAR r64,
                  Sy.VAR r65)) in
               let rr934 =
               x932 (Ldda
                 ((Indirectr (Sy.VAR r930)), Sy.VAR r64, Sy.VAR r65))
               in
               Sy.CASE
               (Sy.VAR r63,
                [("Indexr", [r928;r929], rr933);
                 ("Indirectr", [r930], rr934)])) in vv931) in
       let rr935 =
       x430
         (let r936 = Tools.gensym "x" in
          let r937 = Tools.gensym "x" in
          let r938 = Tools.gensym "x" in
          let vv939 =
          Ctrl.shift
            (fun x940 ->
               let rr941 =
               x940 (Stba
                 (Sy.VAR r66, (Indexr (Sy.VAR r936, Sy.VAR r937)),
                  Sy.VAR r68)) in
               let rr942 =
               x940 (Stba
                 (Sy.VAR r66, (Indirectr (Sy.VAR r938)), Sy.VAR r68))
               in
               Sy.CASE
               (Sy.VAR r67,
                [("Indexr", [r936;r937], rr941);
                 ("Indirectr", [r938], rr942)])) in vv939) in
       let rr943 =
       x430
         (let r944 = Tools.gensym "x" in
          let r945 = Tools.gensym "x" in
          let r946 = Tools.gensym "x" in
          let vv947 =
          Ctrl.shift
            (fun x948 ->
               let rr949 =
               x948 (Stha
                 (Sy.VAR r69, (Indexr (Sy.VAR r944, Sy.VAR r945)),
                  Sy.VAR r71)) in
               let rr950 =
               x948 (Stha
                 (Sy.VAR r69, (Indirectr (Sy.VAR r946)), Sy.VAR r71))
               in
               Sy.CASE
               (Sy.VAR r70,
                [("Indexr", [r944;r945], rr949);
                 ("Indirectr", [r946], rr950)])) in vv947) in
       let rr951 =
       x430
         (let r952 = Tools.gensym "x" in
          let r953 = Tools.gensym "x" in
          let r954 = Tools.gensym "x" in
          let vv955 =
          Ctrl.shift
            (fun x956 ->
               let rr957 =
               x956 (Sta
                 (Sy.VAR r72, (Indexr (Sy.VAR r952, Sy.VAR r953)),
                  Sy.VAR r74)) in
               let rr958 =
               x956 (Sta
                 (Sy.VAR r72, (Indirectr (Sy.VAR r954)), Sy.VAR r74))
               in
               Sy.CASE
               (Sy.VAR r73,
                [("Indexr", [r952;r953], rr957);
                 ("Indirectr", [r954], rr958)])) in vv955) in
       let rr959 =
       x430
         (let r960 = Tools.gensym "x" in
          let r961 = Tools.gensym "x" in
          let r962 = Tools.gensym "x" in
          let vv963 =
          Ctrl.shift
            (fun x964 ->
               let rr965 =
               x964 (Stda
                 (Sy.VAR r75, (Indexr (Sy.VAR r960, Sy.VAR r961)),
                  Sy.VAR r77)) in
               let rr966 =
               x964 (Stda
                 (Sy.VAR r75, (Indirectr (Sy.VAR r962)), Sy.VAR r77))
               in
               Sy.CASE
               (Sy.VAR r76,
                [("Indexr", [r960;r961], rr965);
                 ("Indirectr", [r962], rr966)])) in vv963) in
       let rr967 =
       x430
         (let r968 = Tools.gensym "x" in
          let r969 = Tools.gensym "x" in
          let r970 = Tools.gensym "x" in
          let r971 = Tools.gensym "x" in
          let r972 = Tools.gensym "x" in
          let r973 = Tools.gensym "x" in
          let r974 = Tools.gensym "x" in
          let r975 = Tools.gensym "x" in
          let vv976 =
          Ctrl.shift
            (fun x977 ->
               let rr978 =
               x977
                 (let r979 = Tools.gensym "x" in
                  let r980 = Tools.gensym "x" in
                  let vv981 =
                  Ctrl.shift
                    (fun x982 ->
                       let rr983 =
                       x982 (Ldfsr
                         ((Generala
                          (Sy.VAR r968, (Imode (Sy.VAR r979)))))) in
                       let rr984 =
                       x982 (Ldfsr
                         ((Generala
                          (Sy.VAR r968, (Rmode (Sy.VAR r980)))))) in
                       Sy.CASE
                       (Sy.VAR r969,
                        [("Imode", [r979], rr983);
                         ("Rmode", [r980], rr984)])) in vv981) in
               let rr985 =
               x977 (Ldfsr ((Dispa (Sy.VAR r970, Sy.VAR r971)))) in
               let rr986 = x977 (Ldfsr ((Absolutea (Sy.VAR r972)))) in
               let rr987 =
               x977 (Ldfsr ((Indexa (Sy.VAR r973, Sy.VAR r974)))) in
               let rr988 = x977 (Ldfsr ((Indirecta (Sy.VAR r975)))) in
               Sy.CASE
               (Sy.VAR r78,
                [("Generala", [r968;r969], rr978);
                 ("Dispa", [r970;r971], rr985);
                 ("Absolutea", [r972], rr986);
                 ("Indexa", [r973;r974], rr987);
                 ("Indirecta", [r975], rr988)])) in vv976) in
       let rr989 =
       x430
         (let r990 = Tools.gensym "x" in
          let r991 = Tools.gensym "x" in
          let r992 = Tools.gensym "x" in
          let r993 = Tools.gensym "x" in
          let r994 = Tools.gensym "x" in
          let r995 = Tools.gensym "x" in
          let r996 = Tools.gensym "x" in
          let r997 = Tools.gensym "x" in
          let vv998 =
          Ctrl.shift
            (fun x999 ->
               let rr1000 =
               x999
                 (let r1001 = Tools.gensym "x" in
                  let r1002 = Tools.gensym "x" in
                  let vv1003 =
                  Ctrl.shift
                    (fun x1004 ->
                       let rr1005 =
                       x1004 (Ldcsr
                         ((Generala
                          (Sy.VAR r990, (Imode (Sy.VAR r1001)))))) in
                       let rr1006 =
                       x1004 (Ldcsr
                         ((Generala
                          (Sy.VAR r990, (Rmode (Sy.VAR r1002)))))) in
                       Sy.CASE
                       (Sy.VAR r991,
                        [("Imode", [r1001], rr1005);
                         ("Rmode", [r1002], rr1006)])) in vv1003) in
               let rr1007 =
               x999 (Ldcsr ((Dispa (Sy.VAR r992, Sy.VAR r993)))) in
               let rr1008 = x999 (Ldcsr ((Absolutea (Sy.VAR r994)))) in
               let rr1009 =
               x999 (Ldcsr ((Indexa (Sy.VAR r995, Sy.VAR r996)))) in
               let rr1010 = x999 (Ldcsr ((Indirecta (Sy.VAR r997)))) in
               Sy.CASE
               (Sy.VAR r79,
                [("Generala", [r990;r991], rr1000);
                 ("Dispa", [r992;r993], rr1007);
                 ("Absolutea", [r994], rr1008);
                 ("Indexa", [r995;r996], rr1009);
                 ("Indirecta", [r997], rr1010)])) in vv998) in
       let rr1011 =
       x430
         (let r1012 = Tools.gensym "x" in
          let r1013 = Tools.gensym "x" in
          let r1014 = Tools.gensym "x" in
          let r1015 = Tools.gensym "x" in
          let r1016 = Tools.gensym "x" in
          let r1017 = Tools.gensym "x" in
          let r1018 = Tools.gensym "x" in
          let r1019 = Tools.gensym "x" in
          let vv1020 =
          Ctrl.shift
            (fun x1021 ->
               let rr1022 =
               x1021
                 (let r1023 = Tools.gensym "x" in
                  let r1024 = Tools.gensym "x" in
                  let vv1025 =
                  Ctrl.shift
                    (fun x1026 ->
                       let rr1027 =
                       x1026 (Stfsr
                         ((Generala
                          (Sy.VAR r1012, (Imode (Sy.VAR r1023)))))) in
                       let rr1028 =
                       x1026 (Stfsr
                         ((Generala
                          (Sy.VAR r1012, (Rmode (Sy.VAR r1024)))))) in
                       Sy.CASE
                       (Sy.VAR r1013,
                        [("Imode", [r1023], rr1027);
                         ("Rmode", [r1024], rr1028)])) in vv1025) in
               let rr1029 =
               x1021 (Stfsr ((Dispa (Sy.VAR r1014, Sy.VAR r1015)))) in
               let rr1030 = x1021 (Stfsr ((Absolutea (Sy.VAR r1016))))
               in
               let rr1031 =
               x1021 (Stfsr ((Indexa (Sy.VAR r1017, Sy.VAR r1018)))) in
               let rr1032 = x1021 (Stfsr ((Indirecta (Sy.VAR r1019))))
               in
               Sy.CASE
               (Sy.VAR r80,
                [("Generala", [r1012;r1013], rr1022);
                 ("Dispa", [r1014;r1015], rr1029);
                 ("Absolutea", [r1016], rr1030);
                 ("Indexa", [r1017;r1018], rr1031);
                 ("Indirecta", [r1019], rr1032)])) in vv1020) in
       let rr1033 =
       x430
         (let r1034 = Tools.gensym "x" in
          let r1035 = Tools.gensym "x" in
          let r1036 = Tools.gensym "x" in
          let r1037 = Tools.gensym "x" in
          let r1038 = Tools.gensym "x" in
          let r1039 = Tools.gensym "x" in
          let r1040 = Tools.gensym "x" in
          let r1041 = Tools.gensym "x" in
          let vv1042 =
          Ctrl.shift
            (fun x1043 ->
               let rr1044 =
               x1043
                 (let r1045 = Tools.gensym "x" in
                  let r1046 = Tools.gensym "x" in
                  let vv1047 =
                  Ctrl.shift
                    (fun x1048 ->
                       let rr1049 =
                       x1048 (Stcsr
                         ((Generala
                          (Sy.VAR r1034, (Imode (Sy.VAR r1045)))))) in
                       let rr1050 =
                       x1048 (Stcsr
                         ((Generala
                          (Sy.VAR r1034, (Rmode (Sy.VAR r1046)))))) in
                       Sy.CASE
                       (Sy.VAR r1035,
                        [("Imode", [r1045], rr1049);
                         ("Rmode", [r1046], rr1050)])) in vv1047) in
               let rr1051 =
               x1043 (Stcsr ((Dispa (Sy.VAR r1036, Sy.VAR r1037)))) in
               let rr1052 = x1043 (Stcsr ((Absolutea (Sy.VAR r1038))))
               in
               let rr1053 =
               x1043 (Stcsr ((Indexa (Sy.VAR r1039, Sy.VAR r1040)))) in
               let rr1054 = x1043 (Stcsr ((Indirecta (Sy.VAR r1041))))
               in
               Sy.CASE
               (Sy.VAR r81,
                [("Generala", [r1034;r1035], rr1044);
                 ("Dispa", [r1036;r1037], rr1051);
                 ("Absolutea", [r1038], rr1052);
                 ("Indexa", [r1039;r1040], rr1053);
                 ("Indirecta", [r1041], rr1054)])) in vv1042) in
       let rr1055 =
       x430
         (let r1056 = Tools.gensym "x" in
          let r1057 = Tools.gensym "x" in
          let r1058 = Tools.gensym "x" in
          let r1059 = Tools.gensym "x" in
          let r1060 = Tools.gensym "x" in
          let r1061 = Tools.gensym "x" in
          let r1062 = Tools.gensym "x" in
          let r1063 = Tools.gensym "x" in
          let vv1064 =
          Ctrl.shift
            (fun x1065 ->
               let rr1066 =
               x1065
                 (let r1067 = Tools.gensym "x" in
                  let r1068 = Tools.gensym "x" in
                  let vv1069 =
                  Ctrl.shift
                    (fun x1070 ->
                       let rr1071 =
                       x1070 (Stdfq
                         ((Generala
                          (Sy.VAR r1056, (Imode (Sy.VAR r1067)))))) in
                       let rr1072 =
                       x1070 (Stdfq
                         ((Generala
                          (Sy.VAR r1056, (Rmode (Sy.VAR r1068)))))) in
                       Sy.CASE
                       (Sy.VAR r1057,
                        [("Imode", [r1067], rr1071);
                         ("Rmode", [r1068], rr1072)])) in vv1069) in
               let rr1073 =
               x1065 (Stdfq ((Dispa (Sy.VAR r1058, Sy.VAR r1059)))) in
               let rr1074 = x1065 (Stdfq ((Absolutea (Sy.VAR r1060))))
               in
               let rr1075 =
               x1065 (Stdfq ((Indexa (Sy.VAR r1061, Sy.VAR r1062)))) in
               let rr1076 = x1065 (Stdfq ((Indirecta (Sy.VAR r1063))))
               in
               Sy.CASE
               (Sy.VAR r82,
                [("Generala", [r1056;r1057], rr1066);
                 ("Dispa", [r1058;r1059], rr1073);
                 ("Absolutea", [r1060], rr1074);
                 ("Indexa", [r1061;r1062], rr1075);
                 ("Indirecta", [r1063], rr1076)])) in vv1064) in
       let rr1077 =
       x430
         (let r1078 = Tools.gensym "x" in
          let r1079 = Tools.gensym "x" in
          let r1080 = Tools.gensym "x" in
          let r1081 = Tools.gensym "x" in
          let r1082 = Tools.gensym "x" in
          let r1083 = Tools.gensym "x" in
          let r1084 = Tools.gensym "x" in
          let r1085 = Tools.gensym "x" in
          let vv1086 =
          Ctrl.shift
            (fun x1087 ->
               let rr1088 =
               x1087
                 (let r1089 = Tools.gensym "x" in
                  let r1090 = Tools.gensym "x" in
                  let vv1091 =
                  Ctrl.shift
                    (fun x1092 ->
                       let rr1093 =
                       x1092 (Stdcq
                         ((Generala
                          (Sy.VAR r1078, (Imode (Sy.VAR r1089)))))) in
                       let rr1094 =
                       x1092 (Stdcq
                         ((Generala
                          (Sy.VAR r1078, (Rmode (Sy.VAR r1090)))))) in
                       Sy.CASE
                       (Sy.VAR r1079,
                        [("Imode", [r1089], rr1093);
                         ("Rmode", [r1090], rr1094)])) in vv1091) in
               let rr1095 =
               x1087 (Stdcq ((Dispa (Sy.VAR r1080, Sy.VAR r1081)))) in
               let rr1096 = x1087 (Stdcq ((Absolutea (Sy.VAR r1082))))
               in
               let rr1097 =
               x1087 (Stdcq ((Indexa (Sy.VAR r1083, Sy.VAR r1084)))) in
               let rr1098 = x1087 (Stdcq ((Indirecta (Sy.VAR r1085))))
               in
               Sy.CASE
               (Sy.VAR r83,
                [("Generala", [r1078;r1079], rr1088);
                 ("Dispa", [r1080;r1081], rr1095);
                 ("Absolutea", [r1082], rr1096);
                 ("Indexa", [r1083;r1084], rr1097);
                 ("Indirecta", [r1085], rr1098)])) in vv1086) in
       let rr1099 = x430 (Rdy (Sy.VAR r84)) in
       let rr1100 = x430 (Rdpsr (Sy.VAR r85)) in
       let rr1101 = x430 (Rdwim (Sy.VAR r86)) in
       let rr1102 = x430 (Rdtbr (Sy.VAR r87)) in
       let rr1103 =
       x430
         (let r1104 = Tools.gensym "x" in
          let r1105 = Tools.gensym "x" in
          let vv1106 =
          Ctrl.shift
            (fun x1107 ->
               let rr1108 =
               x1107 (Wry (Sy.VAR r88, (Imode (Sy.VAR r1104)))) in
               let rr1109 =
               x1107 (Wry (Sy.VAR r88, (Rmode (Sy.VAR r1105)))) in
               Sy.CASE
               (Sy.VAR r89,
                [("Imode", [r1104], rr1108);("Rmode", [r1105], rr1109)]))
          in vv1106) in
       let rr1110 =
       x430
         (let r1111 = Tools.gensym "x" in
          let r1112 = Tools.gensym "x" in
          let vv1113 =
          Ctrl.shift
            (fun x1114 ->
               let rr1115 =
               x1114 (Wrpsr (Sy.VAR r90, (Imode (Sy.VAR r1111)))) in
               let rr1116 =
               x1114 (Wrpsr (Sy.VAR r90, (Rmode (Sy.VAR r1112)))) in
               Sy.CASE
               (Sy.VAR r91,
                [("Imode", [r1111], rr1115);("Rmode", [r1112], rr1116)]))
          in vv1113) in
       let rr1117 =
       x430
         (let r1118 = Tools.gensym "x" in
          let r1119 = Tools.gensym "x" in
          let vv1120 =
          Ctrl.shift
            (fun x1121 ->
               let rr1122 =
               x1121 (Wrwim (Sy.VAR r92, (Imode (Sy.VAR r1118)))) in
               let rr1123 =
               x1121 (Wrwim (Sy.VAR r92, (Rmode (Sy.VAR r1119)))) in
               Sy.CASE
               (Sy.VAR r93,
                [("Imode", [r1118], rr1122);("Rmode", [r1119], rr1123)]))
          in vv1120) in
       let rr1124 =
       x430
         (let r1125 = Tools.gensym "x" in
          let r1126 = Tools.gensym "x" in
          let vv1127 =
          Ctrl.shift
            (fun x1128 ->
               let rr1129 =
               x1128 (Wrtbr (Sy.VAR r94, (Imode (Sy.VAR r1125)))) in
               let rr1130 =
               x1128 (Wrtbr (Sy.VAR r94, (Rmode (Sy.VAR r1126)))) in
               Sy.CASE
               (Sy.VAR r95,
                [("Imode", [r1125], rr1129);("Rmode", [r1126], rr1130)]))
          in vv1127) in
       let rr1131 = x430 (Rdasr (Sy.VAR r96, Sy.VAR r97)) in
       let rr1132 =
       x430
         (let r1133 = Tools.gensym "x" in
          let r1134 = Tools.gensym "x" in
          let vv1135 =
          Ctrl.shift
            (fun x1136 ->
               let rr1137 =
               x1136 (Wrasr
                 (Sy.VAR r98, (Imode (Sy.VAR r1133)), Sy.VAR r100)) in
               let rr1138 =
               x1136 (Wrasr
                 (Sy.VAR r98, (Rmode (Sy.VAR r1134)), Sy.VAR r100)) in
               Sy.CASE
               (Sy.VAR r99,
                [("Imode", [r1133], rr1137);("Rmode", [r1134], rr1138)]))
          in vv1135) in
       let rr1139 = x430 (Stbar ()) in
       let rr1140 =
       x430
         (let r1141 = Tools.gensym "x" in
          let r1142 = Tools.gensym "x" in
          let vv1143 =
          Ctrl.shift
            (fun x1144 ->
               let rr1145 =
               x1144 (And
                 (Sy.VAR r101, (Imode (Sy.VAR r1141)), Sy.VAR r103)) in
               let rr1146 =
               x1144 (And
                 (Sy.VAR r101, (Rmode (Sy.VAR r1142)), Sy.VAR r103)) in
               Sy.CASE
               (Sy.VAR r102,
                [("Imode", [r1141], rr1145);("Rmode", [r1142], rr1146)]))
          in vv1143) in
       let rr1147 =
       x430
         (let r1148 = Tools.gensym "x" in
          let r1149 = Tools.gensym "x" in
          let vv1150 =
          Ctrl.shift
            (fun x1151 ->
               let rr1152 =
               x1151 (Andcc
                 (Sy.VAR r104, (Imode (Sy.VAR r1148)), Sy.VAR r106)) in
               let rr1153 =
               x1151 (Andcc
                 (Sy.VAR r104, (Rmode (Sy.VAR r1149)), Sy.VAR r106)) in
               Sy.CASE
               (Sy.VAR r105,
                [("Imode", [r1148], rr1152);("Rmode", [r1149], rr1153)]))
          in vv1150) in
       let rr1154 =
       x430
         (let r1155 = Tools.gensym "x" in
          let r1156 = Tools.gensym "x" in
          let vv1157 =
          Ctrl.shift
            (fun x1158 ->
               let rr1159 =
               x1158 (Andn
                 (Sy.VAR r107, (Imode (Sy.VAR r1155)), Sy.VAR r109)) in
               let rr1160 =
               x1158 (Andn
                 (Sy.VAR r107, (Rmode (Sy.VAR r1156)), Sy.VAR r109)) in
               Sy.CASE
               (Sy.VAR r108,
                [("Imode", [r1155], rr1159);("Rmode", [r1156], rr1160)]))
          in vv1157) in
       let rr1161 =
       x430
         (let r1162 = Tools.gensym "x" in
          let r1163 = Tools.gensym "x" in
          let vv1164 =
          Ctrl.shift
            (fun x1165 ->
               let rr1166 =
               x1165 (Andncc
                 (Sy.VAR r110, (Imode (Sy.VAR r1162)), Sy.VAR r112)) in
               let rr1167 =
               x1165 (Andncc
                 (Sy.VAR r110, (Rmode (Sy.VAR r1163)), Sy.VAR r112)) in
               Sy.CASE
               (Sy.VAR r111,
                [("Imode", [r1162], rr1166);("Rmode", [r1163], rr1167)]))
          in vv1164) in
       let rr1168 =
       x430
         (let r1169 = Tools.gensym "x" in
          let r1170 = Tools.gensym "x" in
          let vv1171 =
          Ctrl.shift
            (fun x1172 ->
               let rr1173 =
               x1172 (Or
                 (Sy.VAR r113, (Imode (Sy.VAR r1169)), Sy.VAR r115)) in
               let rr1174 =
               x1172 (Or
                 (Sy.VAR r113, (Rmode (Sy.VAR r1170)), Sy.VAR r115)) in
               Sy.CASE
               (Sy.VAR r114,
                [("Imode", [r1169], rr1173);("Rmode", [r1170], rr1174)]))
          in vv1171) in
       let rr1175 =
       x430
         (let r1176 = Tools.gensym "x" in
          let r1177 = Tools.gensym "x" in
          let vv1178 =
          Ctrl.shift
            (fun x1179 ->
               let rr1180 =
               x1179 (Orcc
                 (Sy.VAR r116, (Imode (Sy.VAR r1176)), Sy.VAR r118)) in
               let rr1181 =
               x1179 (Orcc
                 (Sy.VAR r116, (Rmode (Sy.VAR r1177)), Sy.VAR r118)) in
               Sy.CASE
               (Sy.VAR r117,
                [("Imode", [r1176], rr1180);("Rmode", [r1177], rr1181)]))
          in vv1178) in
       let rr1182 =
       x430
         (let r1183 = Tools.gensym "x" in
          let r1184 = Tools.gensym "x" in
          let vv1185 =
          Ctrl.shift
            (fun x1186 ->
               let rr1187 =
               x1186 (Orn
                 (Sy.VAR r119, (Imode (Sy.VAR r1183)), Sy.VAR r121)) in
               let rr1188 =
               x1186 (Orn
                 (Sy.VAR r119, (Rmode (Sy.VAR r1184)), Sy.VAR r121)) in
               Sy.CASE
               (Sy.VAR r120,
                [("Imode", [r1183], rr1187);("Rmode", [r1184], rr1188)]))
          in vv1185) in
       let rr1189 =
       x430
         (let r1190 = Tools.gensym "x" in
          let r1191 = Tools.gensym "x" in
          let vv1192 =
          Ctrl.shift
            (fun x1193 ->
               let rr1194 =
               x1193 (Orncc
                 (Sy.VAR r122, (Imode (Sy.VAR r1190)), Sy.VAR r124)) in
               let rr1195 =
               x1193 (Orncc
                 (Sy.VAR r122, (Rmode (Sy.VAR r1191)), Sy.VAR r124)) in
               Sy.CASE
               (Sy.VAR r123,
                [("Imode", [r1190], rr1194);("Rmode", [r1191], rr1195)]))
          in vv1192) in
       let rr1196 =
       x430
         (let r1197 = Tools.gensym "x" in
          let r1198 = Tools.gensym "x" in
          let vv1199 =
          Ctrl.shift
            (fun x1200 ->
               let rr1201 =
               x1200 (Xor
                 (Sy.VAR r125, (Imode (Sy.VAR r1197)), Sy.VAR r127)) in
               let rr1202 =
               x1200 (Xor
                 (Sy.VAR r125, (Rmode (Sy.VAR r1198)), Sy.VAR r127)) in
               Sy.CASE
               (Sy.VAR r126,
                [("Imode", [r1197], rr1201);("Rmode", [r1198], rr1202)]))
          in vv1199) in
       let rr1203 =
       x430
         (let r1204 = Tools.gensym "x" in
          let r1205 = Tools.gensym "x" in
          let vv1206 =
          Ctrl.shift
            (fun x1207 ->
               let rr1208 =
               x1207 (Xorcc
                 (Sy.VAR r128, (Imode (Sy.VAR r1204)), Sy.VAR r130)) in
               let rr1209 =
               x1207 (Xorcc
                 (Sy.VAR r128, (Rmode (Sy.VAR r1205)), Sy.VAR r130)) in
               Sy.CASE
               (Sy.VAR r129,
                [("Imode", [r1204], rr1208);("Rmode", [r1205], rr1209)]))
          in vv1206) in
       let rr1210 =
       x430
         (let r1211 = Tools.gensym "x" in
          let r1212 = Tools.gensym "x" in
          let vv1213 =
          Ctrl.shift
            (fun x1214 ->
               let rr1215 =
               x1214 (Xnor
                 (Sy.VAR r131, (Imode (Sy.VAR r1211)), Sy.VAR r133)) in
               let rr1216 =
               x1214 (Xnor
                 (Sy.VAR r131, (Rmode (Sy.VAR r1212)), Sy.VAR r133)) in
               Sy.CASE
               (Sy.VAR r132,
                [("Imode", [r1211], rr1215);("Rmode", [r1212], rr1216)]))
          in vv1213) in
       let rr1217 =
       x430
         (let r1218 = Tools.gensym "x" in
          let r1219 = Tools.gensym "x" in
          let vv1220 =
          Ctrl.shift
            (fun x1221 ->
               let rr1222 =
               x1221 (Xnorcc
                 (Sy.VAR r134, (Imode (Sy.VAR r1218)), Sy.VAR r136)) in
               let rr1223 =
               x1221 (Xnorcc
                 (Sy.VAR r134, (Rmode (Sy.VAR r1219)), Sy.VAR r136)) in
               Sy.CASE
               (Sy.VAR r135,
                [("Imode", [r1218], rr1222);("Rmode", [r1219], rr1223)]))
          in vv1220) in
       let rr1224 =
       x430
         (let r1225 = Tools.gensym "x" in
          let r1226 = Tools.gensym "x" in
          let vv1227 =
          Ctrl.shift
            (fun x1228 ->
               let rr1229 =
               x1228 (Sll
                 (Sy.VAR r137, (Imode (Sy.VAR r1225)), Sy.VAR r139)) in
               let rr1230 =
               x1228 (Sll
                 (Sy.VAR r137, (Rmode (Sy.VAR r1226)), Sy.VAR r139)) in
               Sy.CASE
               (Sy.VAR r138,
                [("Imode", [r1225], rr1229);("Rmode", [r1226], rr1230)]))
          in vv1227) in
       let rr1231 =
       x430
         (let r1232 = Tools.gensym "x" in
          let r1233 = Tools.gensym "x" in
          let vv1234 =
          Ctrl.shift
            (fun x1235 ->
               let rr1236 =
               x1235 (Srl
                 (Sy.VAR r140, (Imode (Sy.VAR r1232)), Sy.VAR r142)) in
               let rr1237 =
               x1235 (Srl
                 (Sy.VAR r140, (Rmode (Sy.VAR r1233)), Sy.VAR r142)) in
               Sy.CASE
               (Sy.VAR r141,
                [("Imode", [r1232], rr1236);("Rmode", [r1233], rr1237)]))
          in vv1234) in
       let rr1238 =
       x430
         (let r1239 = Tools.gensym "x" in
          let r1240 = Tools.gensym "x" in
          let vv1241 =
          Ctrl.shift
            (fun x1242 ->
               let rr1243 =
               x1242 (Sra
                 (Sy.VAR r143, (Imode (Sy.VAR r1239)), Sy.VAR r145)) in
               let rr1244 =
               x1242 (Sra
                 (Sy.VAR r143, (Rmode (Sy.VAR r1240)), Sy.VAR r145)) in
               Sy.CASE
               (Sy.VAR r144,
                [("Imode", [r1239], rr1243);("Rmode", [r1240], rr1244)]))
          in vv1241) in
       let rr1245 =
       x430
         (let r1246 = Tools.gensym "x" in
          let r1247 = Tools.gensym "x" in
          let vv1248 =
          Ctrl.shift
            (fun x1249 ->
               let rr1250 =
               x1249 (Add
                 (Sy.VAR r146, (Imode (Sy.VAR r1246)), Sy.VAR r148)) in
               let rr1251 =
               x1249 (Add
                 (Sy.VAR r146, (Rmode (Sy.VAR r1247)), Sy.VAR r148)) in
               Sy.CASE
               (Sy.VAR r147,
                [("Imode", [r1246], rr1250);("Rmode", [r1247], rr1251)]))
          in vv1248) in
       let rr1252 =
       x430
         (let r1253 = Tools.gensym "x" in
          let r1254 = Tools.gensym "x" in
          let vv1255 =
          Ctrl.shift
            (fun x1256 ->
               let rr1257 =
               x1256 (Addcc
                 (Sy.VAR r149, (Imode (Sy.VAR r1253)), Sy.VAR r151)) in
               let rr1258 =
               x1256 (Addcc
                 (Sy.VAR r149, (Rmode (Sy.VAR r1254)), Sy.VAR r151)) in
               Sy.CASE
               (Sy.VAR r150,
                [("Imode", [r1253], rr1257);("Rmode", [r1254], rr1258)]))
          in vv1255) in
       let rr1259 =
       x430
         (let r1260 = Tools.gensym "x" in
          let r1261 = Tools.gensym "x" in
          let vv1262 =
          Ctrl.shift
            (fun x1263 ->
               let rr1264 =
               x1263 (Addx
                 (Sy.VAR r152, (Imode (Sy.VAR r1260)), Sy.VAR r154)) in
               let rr1265 =
               x1263 (Addx
                 (Sy.VAR r152, (Rmode (Sy.VAR r1261)), Sy.VAR r154)) in
               Sy.CASE
               (Sy.VAR r153,
                [("Imode", [r1260], rr1264);("Rmode", [r1261], rr1265)]))
          in vv1262) in
       let rr1266 =
       x430
         (let r1267 = Tools.gensym "x" in
          let r1268 = Tools.gensym "x" in
          let vv1269 =
          Ctrl.shift
            (fun x1270 ->
               let rr1271 =
               x1270 (Addxcc
                 (Sy.VAR r155, (Imode (Sy.VAR r1267)), Sy.VAR r157)) in
               let rr1272 =
               x1270 (Addxcc
                 (Sy.VAR r155, (Rmode (Sy.VAR r1268)), Sy.VAR r157)) in
               Sy.CASE
               (Sy.VAR r156,
                [("Imode", [r1267], rr1271);("Rmode", [r1268], rr1272)]))
          in vv1269) in
       let rr1273 =
       x430
         (let r1274 = Tools.gensym "x" in
          let r1275 = Tools.gensym "x" in
          let vv1276 =
          Ctrl.shift
            (fun x1277 ->
               let rr1278 =
               x1277 (Taddcc
                 (Sy.VAR r158, (Imode (Sy.VAR r1274)), Sy.VAR r160)) in
               let rr1279 =
               x1277 (Taddcc
                 (Sy.VAR r158, (Rmode (Sy.VAR r1275)), Sy.VAR r160)) in
               Sy.CASE
               (Sy.VAR r159,
                [("Imode", [r1274], rr1278);("Rmode", [r1275], rr1279)]))
          in vv1276) in
       let rr1280 =
       x430
         (let r1281 = Tools.gensym "x" in
          let r1282 = Tools.gensym "x" in
          let vv1283 =
          Ctrl.shift
            (fun x1284 ->
               let rr1285 =
               x1284 (Taddcctv
                 (Sy.VAR r161, (Imode (Sy.VAR r1281)), Sy.VAR r163)) in
               let rr1286 =
               x1284 (Taddcctv
                 (Sy.VAR r161, (Rmode (Sy.VAR r1282)), Sy.VAR r163)) in
               Sy.CASE
               (Sy.VAR r162,
                [("Imode", [r1281], rr1285);("Rmode", [r1282], rr1286)]))
          in vv1283) in
       let rr1287 =
       x430
         (let r1288 = Tools.gensym "x" in
          let r1289 = Tools.gensym "x" in
          let vv1290 =
          Ctrl.shift
            (fun x1291 ->
               let rr1292 =
               x1291 (Sub
                 (Sy.VAR r164, (Imode (Sy.VAR r1288)), Sy.VAR r166)) in
               let rr1293 =
               x1291 (Sub
                 (Sy.VAR r164, (Rmode (Sy.VAR r1289)), Sy.VAR r166)) in
               Sy.CASE
               (Sy.VAR r165,
                [("Imode", [r1288], rr1292);("Rmode", [r1289], rr1293)]))
          in vv1290) in
       let rr1294 =
       x430
         (let r1295 = Tools.gensym "x" in
          let r1296 = Tools.gensym "x" in
          let vv1297 =
          Ctrl.shift
            (fun x1298 ->
               let rr1299 =
               x1298 (Subcc
                 (Sy.VAR r167, (Imode (Sy.VAR r1295)), Sy.VAR r169)) in
               let rr1300 =
               x1298 (Subcc
                 (Sy.VAR r167, (Rmode (Sy.VAR r1296)), Sy.VAR r169)) in
               Sy.CASE
               (Sy.VAR r168,
                [("Imode", [r1295], rr1299);("Rmode", [r1296], rr1300)]))
          in vv1297) in
       let rr1301 =
       x430
         (let r1302 = Tools.gensym "x" in
          let r1303 = Tools.gensym "x" in
          let vv1304 =
          Ctrl.shift
            (fun x1305 ->
               let rr1306 =
               x1305 (Subx
                 (Sy.VAR r170, (Imode (Sy.VAR r1302)), Sy.VAR r172)) in
               let rr1307 =
               x1305 (Subx
                 (Sy.VAR r170, (Rmode (Sy.VAR r1303)), Sy.VAR r172)) in
               Sy.CASE
               (Sy.VAR r171,
                [("Imode", [r1302], rr1306);("Rmode", [r1303], rr1307)]))
          in vv1304) in
       let rr1308 =
       x430
         (let r1309 = Tools.gensym "x" in
          let r1310 = Tools.gensym "x" in
          let vv1311 =
          Ctrl.shift
            (fun x1312 ->
               let rr1313 =
               x1312 (Subxcc
                 (Sy.VAR r173, (Imode (Sy.VAR r1309)), Sy.VAR r175)) in
               let rr1314 =
               x1312 (Subxcc
                 (Sy.VAR r173, (Rmode (Sy.VAR r1310)), Sy.VAR r175)) in
               Sy.CASE
               (Sy.VAR r174,
                [("Imode", [r1309], rr1313);("Rmode", [r1310], rr1314)]))
          in vv1311) in
       let rr1315 =
       x430
         (let r1316 = Tools.gensym "x" in
          let r1317 = Tools.gensym "x" in
          let vv1318 =
          Ctrl.shift
            (fun x1319 ->
               let rr1320 =
               x1319 (Tsubcc
                 (Sy.VAR r176, (Imode (Sy.VAR r1316)), Sy.VAR r178)) in
               let rr1321 =
               x1319 (Tsubcc
                 (Sy.VAR r176, (Rmode (Sy.VAR r1317)), Sy.VAR r178)) in
               Sy.CASE
               (Sy.VAR r177,
                [("Imode", [r1316], rr1320);("Rmode", [r1317], rr1321)]))
          in vv1318) in
       let rr1322 =
       x430
         (let r1323 = Tools.gensym "x" in
          let r1324 = Tools.gensym "x" in
          let vv1325 =
          Ctrl.shift
            (fun x1326 ->
               let rr1327 =
               x1326 (Tsubcctv
                 (Sy.VAR r179, (Imode (Sy.VAR r1323)), Sy.VAR r181)) in
               let rr1328 =
               x1326 (Tsubcctv
                 (Sy.VAR r179, (Rmode (Sy.VAR r1324)), Sy.VAR r181)) in
               Sy.CASE
               (Sy.VAR r180,
                [("Imode", [r1323], rr1327);("Rmode", [r1324], rr1328)]))
          in vv1325) in
       let rr1329 =
       x430
         (let r1330 = Tools.gensym "x" in
          let r1331 = Tools.gensym "x" in
          let vv1332 =
          Ctrl.shift
            (fun x1333 ->
               let rr1334 =
               x1333 (Mulscc
                 (Sy.VAR r182, (Imode (Sy.VAR r1330)), Sy.VAR r184)) in
               let rr1335 =
               x1333 (Mulscc
                 (Sy.VAR r182, (Rmode (Sy.VAR r1331)), Sy.VAR r184)) in
               Sy.CASE
               (Sy.VAR r183,
                [("Imode", [r1330], rr1334);("Rmode", [r1331], rr1335)]))
          in vv1332) in
       let rr1336 =
       x430
         (let r1337 = Tools.gensym "x" in
          let r1338 = Tools.gensym "x" in
          let vv1339 =
          Ctrl.shift
            (fun x1340 ->
               let rr1341 =
               x1340 (Umul
                 (Sy.VAR r185, (Imode (Sy.VAR r1337)), Sy.VAR r187)) in
               let rr1342 =
               x1340 (Umul
                 (Sy.VAR r185, (Rmode (Sy.VAR r1338)), Sy.VAR r187)) in
               Sy.CASE
               (Sy.VAR r186,
                [("Imode", [r1337], rr1341);("Rmode", [r1338], rr1342)]))
          in vv1339) in
       let rr1343 =
       x430
         (let r1344 = Tools.gensym "x" in
          let r1345 = Tools.gensym "x" in
          let vv1346 =
          Ctrl.shift
            (fun x1347 ->
               let rr1348 =
               x1347 (Smul
                 (Sy.VAR r188, (Imode (Sy.VAR r1344)), Sy.VAR r190)) in
               let rr1349 =
               x1347 (Smul
                 (Sy.VAR r188, (Rmode (Sy.VAR r1345)), Sy.VAR r190)) in
               Sy.CASE
               (Sy.VAR r189,
                [("Imode", [r1344], rr1348);("Rmode", [r1345], rr1349)]))
          in vv1346) in
       let rr1350 =
       x430
         (let r1351 = Tools.gensym "x" in
          let r1352 = Tools.gensym "x" in
          let vv1353 =
          Ctrl.shift
            (fun x1354 ->
               let rr1355 =
               x1354 (Umulcc
                 (Sy.VAR r191, (Imode (Sy.VAR r1351)), Sy.VAR r193)) in
               let rr1356 =
               x1354 (Umulcc
                 (Sy.VAR r191, (Rmode (Sy.VAR r1352)), Sy.VAR r193)) in
               Sy.CASE
               (Sy.VAR r192,
                [("Imode", [r1351], rr1355);("Rmode", [r1352], rr1356)]))
          in vv1353) in
       let rr1357 =
       x430
         (let r1358 = Tools.gensym "x" in
          let r1359 = Tools.gensym "x" in
          let vv1360 =
          Ctrl.shift
            (fun x1361 ->
               let rr1362 =
               x1361 (Smulcc
                 (Sy.VAR r194, (Imode (Sy.VAR r1358)), Sy.VAR r196)) in
               let rr1363 =
               x1361 (Smulcc
                 (Sy.VAR r194, (Rmode (Sy.VAR r1359)), Sy.VAR r196)) in
               Sy.CASE
               (Sy.VAR r195,
                [("Imode", [r1358], rr1362);("Rmode", [r1359], rr1363)]))
          in vv1360) in
       let rr1364 =
       x430
         (let r1365 = Tools.gensym "x" in
          let r1366 = Tools.gensym "x" in
          let vv1367 =
          Ctrl.shift
            (fun x1368 ->
               let rr1369 =
               x1368 (Udiv
                 (Sy.VAR r197, (Imode (Sy.VAR r1365)), Sy.VAR r199)) in
               let rr1370 =
               x1368 (Udiv
                 (Sy.VAR r197, (Rmode (Sy.VAR r1366)), Sy.VAR r199)) in
               Sy.CASE
               (Sy.VAR r198,
                [("Imode", [r1365], rr1369);("Rmode", [r1366], rr1370)]))
          in vv1367) in
       let rr1371 =
       x430
         (let r1372 = Tools.gensym "x" in
          let r1373 = Tools.gensym "x" in
          let vv1374 =
          Ctrl.shift
            (fun x1375 ->
               let rr1376 =
               x1375 (Sdiv
                 (Sy.VAR r200, (Imode (Sy.VAR r1372)), Sy.VAR r202)) in
               let rr1377 =
               x1375 (Sdiv
                 (Sy.VAR r200, (Rmode (Sy.VAR r1373)), Sy.VAR r202)) in
               Sy.CASE
               (Sy.VAR r201,
                [("Imode", [r1372], rr1376);("Rmode", [r1373], rr1377)]))
          in vv1374) in
       let rr1378 =
       x430
         (let r1379 = Tools.gensym "x" in
          let r1380 = Tools.gensym "x" in
          let vv1381 =
          Ctrl.shift
            (fun x1382 ->
               let rr1383 =
               x1382 (Udivcc
                 (Sy.VAR r203, (Imode (Sy.VAR r1379)), Sy.VAR r205)) in
               let rr1384 =
               x1382 (Udivcc
                 (Sy.VAR r203, (Rmode (Sy.VAR r1380)), Sy.VAR r205)) in
               Sy.CASE
               (Sy.VAR r204,
                [("Imode", [r1379], rr1383);("Rmode", [r1380], rr1384)]))
          in vv1381) in
       let rr1385 =
       x430
         (let r1386 = Tools.gensym "x" in
          let r1387 = Tools.gensym "x" in
          let vv1388 =
          Ctrl.shift
            (fun x1389 ->
               let rr1390 =
               x1389 (Sdivcc
                 (Sy.VAR r206, (Imode (Sy.VAR r1386)), Sy.VAR r208)) in
               let rr1391 =
               x1389 (Sdivcc
                 (Sy.VAR r206, (Rmode (Sy.VAR r1387)), Sy.VAR r208)) in
               Sy.CASE
               (Sy.VAR r207,
                [("Imode", [r1386], rr1390);("Rmode", [r1387], rr1391)]))
          in vv1388) in
       let rr1392 =
       x430
         (let r1393 = Tools.gensym "x" in
          let r1394 = Tools.gensym "x" in
          let vv1395 =
          Ctrl.shift
            (fun x1396 ->
               let rr1397 =
               x1396 (Save
                 (Sy.VAR r209, (Imode (Sy.VAR r1393)), Sy.VAR r211)) in
               let rr1398 =
               x1396 (Save
                 (Sy.VAR r209, (Rmode (Sy.VAR r1394)), Sy.VAR r211)) in
               Sy.CASE
               (Sy.VAR r210,
                [("Imode", [r1393], rr1397);("Rmode", [r1394], rr1398)]))
          in vv1395) in
       let rr1399 =
       x430
         (let r1400 = Tools.gensym "x" in
          let r1401 = Tools.gensym "x" in
          let vv1402 =
          Ctrl.shift
            (fun x1403 ->
               let rr1404 =
               x1403 (Restore
                 (Sy.VAR r212, (Imode (Sy.VAR r1400)), Sy.VAR r214)) in
               let rr1405 =
               x1403 (Restore
                 (Sy.VAR r212, (Rmode (Sy.VAR r1401)), Sy.VAR r214)) in
               Sy.CASE
               (Sy.VAR r213,
                [("Imode", [r1400], rr1404);("Rmode", [r1401], rr1405)]))
          in vv1402) in
       let rr1406 = x430 (Bn (Sy.VAR r215)) in
       let rr1407 = x430 (Bn_a (Sy.VAR r216)) in
       let rr1408 = x430 (Be (Sy.VAR r217)) in
       let rr1409 = x430 (Be_a (Sy.VAR r218)) in
       let rr1410 = x430 (Ble (Sy.VAR r219)) in
       let rr1411 = x430 (Ble_a (Sy.VAR r220)) in
       let rr1412 = x430 (Bl (Sy.VAR r221)) in
       let rr1413 = x430 (Bl_a (Sy.VAR r222)) in
       let rr1414 = x430 (Bleu (Sy.VAR r223)) in
       let rr1415 = x430 (Bleu_a (Sy.VAR r224)) in
       let rr1416 = x430 (Bcs (Sy.VAR r225)) in
       let rr1417 = x430 (Bcs_a (Sy.VAR r226)) in
       let rr1418 = x430 (Bneg (Sy.VAR r227)) in
       let rr1419 = x430 (Bneg_a (Sy.VAR r228)) in
       let rr1420 = x430 (Bvs (Sy.VAR r229)) in
       let rr1421 = x430 (Bvs_a (Sy.VAR r230)) in
       let rr1422 = x430 (Ba (Sy.VAR r231)) in
       let rr1423 = x430 (Ba_a (Sy.VAR r232)) in
       let rr1424 = x430 (Bne (Sy.VAR r233)) in
       let rr1425 = x430 (Bne_a (Sy.VAR r234)) in
       let rr1426 = x430 (Bg (Sy.VAR r235)) in
       let rr1427 = x430 (Bg_a (Sy.VAR r236)) in
       let rr1428 = x430 (Bge (Sy.VAR r237)) in
       let rr1429 = x430 (Bge_a (Sy.VAR r238)) in
       let rr1430 = x430 (Bgu (Sy.VAR r239)) in
       let rr1431 = x430 (Bgu_a (Sy.VAR r240)) in
       let rr1432 = x430 (Bcc (Sy.VAR r241)) in
       let rr1433 = x430 (Bcc_a (Sy.VAR r242)) in
       let rr1434 = x430 (Bpos (Sy.VAR r243)) in
       let rr1435 = x430 (Bpos_a (Sy.VAR r244)) in
       let rr1436 = x430 (Bvc (Sy.VAR r245)) in
       let rr1437 = x430 (Bvc_a (Sy.VAR r246)) in
       let rr1438 = x430 (Fbn (Sy.VAR r247)) in
       let rr1439 = x430 (Fbn_a (Sy.VAR r248)) in
       let rr1440 = x430 (Fbne (Sy.VAR r249)) in
       let rr1441 = x430 (Fbne_a (Sy.VAR r250)) in
       let rr1442 = x430 (Fblg (Sy.VAR r251)) in
       let rr1443 = x430 (Fblg_a (Sy.VAR r252)) in
       let rr1444 = x430 (Fbul (Sy.VAR r253)) in
       let rr1445 = x430 (Fbul_a (Sy.VAR r254)) in
       let rr1446 = x430 (Fbl (Sy.VAR r255)) in
       let rr1447 = x430 (Fbl_a (Sy.VAR r256)) in
       let rr1448 = x430 (Fbug (Sy.VAR r257)) in
       let rr1449 = x430 (Fbug_a (Sy.VAR r258)) in
       let rr1450 = x430 (Fbg (Sy.VAR r259)) in
       let rr1451 = x430 (Fbg_a (Sy.VAR r260)) in
       let rr1452 = x430 (Fbu (Sy.VAR r261)) in
       let rr1453 = x430 (Fbu_a (Sy.VAR r262)) in
       let rr1454 = x430 (Fba (Sy.VAR r263)) in
       let rr1455 = x430 (Fba_a (Sy.VAR r264)) in
       let rr1456 = x430 (Fbe (Sy.VAR r265)) in
       let rr1457 = x430 (Fbe_a (Sy.VAR r266)) in
       let rr1458 = x430 (Fbue (Sy.VAR r267)) in
       let rr1459 = x430 (Fbue_a (Sy.VAR r268)) in
       let rr1460 = x430 (Fbge (Sy.VAR r269)) in
       let rr1461 = x430 (Fbge_a (Sy.VAR r270)) in
       let rr1462 = x430 (Fbuge (Sy.VAR r271)) in
       let rr1463 = x430 (Fbuge_a (Sy.VAR r272)) in
       let rr1464 = x430 (Fble (Sy.VAR r273)) in
       let rr1465 = x430 (Fble_a (Sy.VAR r274)) in
       let rr1466 = x430 (Fbule (Sy.VAR r275)) in
       let rr1467 = x430 (Fbule_a (Sy.VAR r276)) in
       let rr1468 = x430 (Fbo (Sy.VAR r277)) in
       let rr1469 = x430 (Fbo_a (Sy.VAR r278)) in
       let rr1470 = x430 (Cbn (Sy.VAR r279)) in
       let rr1471 = x430 (Cbn_a (Sy.VAR r280)) in
       let rr1472 = x430 (Cb123 (Sy.VAR r281)) in
       let rr1473 = x430 (Cb123_a (Sy.VAR r282)) in
       let rr1474 = x430 (Cb12 (Sy.VAR r283)) in
       let rr1475 = x430 (Cb12_a (Sy.VAR r284)) in
       let rr1476 = x430 (Cb13 (Sy.VAR r285)) in
       let rr1477 = x430 (Cb13_a (Sy.VAR r286)) in
       let rr1478 = x430 (Cb1 (Sy.VAR r287)) in
       let rr1479 = x430 (Cb1_a (Sy.VAR r288)) in
       let rr1480 = x430 (Cb23 (Sy.VAR r289)) in
       let rr1481 = x430 (Cb23_a (Sy.VAR r290)) in
       let rr1482 = x430 (Cb2 (Sy.VAR r291)) in
       let rr1483 = x430 (Cb2_a (Sy.VAR r292)) in
       let rr1484 = x430 (Cb3 (Sy.VAR r293)) in
       let rr1485 = x430 (Cb3_a (Sy.VAR r294)) in
       let rr1486 = x430 (Cba (Sy.VAR r295)) in
       let rr1487 = x430 (Cba_a (Sy.VAR r296)) in
       let rr1488 = x430 (Cb0 (Sy.VAR r297)) in
       let rr1489 = x430 (Cb0_a (Sy.VAR r298)) in
       let rr1490 = x430 (Cb03 (Sy.VAR r299)) in
       let rr1491 = x430 (Cb03_a (Sy.VAR r300)) in
       let rr1492 = x430 (Cb02 (Sy.VAR r301)) in
       let rr1493 = x430 (Cb02_a (Sy.VAR r302)) in
       let rr1494 = x430 (Cb023 (Sy.VAR r303)) in
       let rr1495 = x430 (Cb023_a (Sy.VAR r304)) in
       let rr1496 = x430 (Cb01 (Sy.VAR r305)) in
       let rr1497 = x430 (Cb01_a (Sy.VAR r306)) in
       let rr1498 = x430 (Cb013 (Sy.VAR r307)) in
       let rr1499 = x430 (Cb013_a (Sy.VAR r308)) in
       let rr1500 = x430 (Cb012 (Sy.VAR r309)) in
       let rr1501 = x430 (Cb012_a (Sy.VAR r310)) in
       let rr1502 = x430 (Call (Sy.VAR r311)) in
       let rr1503 = x430 (Fmovs (Sy.VAR r312, Sy.VAR r313)) in
       let rr1504 = x430 (Fnegs (Sy.VAR r314, Sy.VAR r315)) in
       let rr1505 = x430 (Fabss (Sy.VAR r316, Sy.VAR r317)) in
       let rr1506 = x430 (Fsqrts (Sy.VAR r318, Sy.VAR r319)) in
       let rr1507 = x430 (Fsqrtd (Sy.VAR r320, Sy.VAR r321)) in
       let rr1508 = x430 (Fsqrtq (Sy.VAR r322, Sy.VAR r323)) in
       let rr1509 = x430 (Fitos (Sy.VAR r324, Sy.VAR r325)) in
       let rr1510 = x430 (Fstoi (Sy.VAR r326, Sy.VAR r327)) in
       let rr1511 = x430 (Fitod (Sy.VAR r328, Sy.VAR r329)) in
       let rr1512 = x430 (Fstod (Sy.VAR r330, Sy.VAR r331)) in
       let rr1513 = x430 (Fitoq (Sy.VAR r332, Sy.VAR r333)) in
       let rr1514 = x430 (Fstoq (Sy.VAR r334, Sy.VAR r335)) in
       let rr1515 = x430 (Fdtoi (Sy.VAR r336, Sy.VAR r337)) in
       let rr1516 = x430 (Fdtos (Sy.VAR r338, Sy.VAR r339)) in
       let rr1517 = x430 (Fqtos (Sy.VAR r340, Sy.VAR r341)) in
       let rr1518 = x430 (Fqtoi (Sy.VAR r342, Sy.VAR r343)) in
       let rr1519 = x430 (Fqtod (Sy.VAR r344, Sy.VAR r345)) in
       let rr1520 = x430 (Fdtoq (Sy.VAR r346, Sy.VAR r347)) in
       let rr1521 =
       x430 (Fadds (Sy.VAR r348, Sy.VAR r349, Sy.VAR r350)) in
       let rr1522 =
       x430 (Fsubs (Sy.VAR r351, Sy.VAR r352, Sy.VAR r353)) in
       let rr1523 =
       x430 (Fmuls (Sy.VAR r354, Sy.VAR r355, Sy.VAR r356)) in
       let rr1524 =
       x430 (Fdivs (Sy.VAR r357, Sy.VAR r358, Sy.VAR r359)) in
       let rr1525 =
       x430 (Faddd (Sy.VAR r360, Sy.VAR r361, Sy.VAR r362)) in
       let rr1526 =
       x430 (Fsubd (Sy.VAR r363, Sy.VAR r364, Sy.VAR r365)) in
       let rr1527 =
       x430 (Fmuld (Sy.VAR r366, Sy.VAR r367, Sy.VAR r368)) in
       let rr1528 =
       x430 (Fdivd (Sy.VAR r369, Sy.VAR r370, Sy.VAR r371)) in
       let rr1529 =
       x430 (Faddq (Sy.VAR r372, Sy.VAR r373, Sy.VAR r374)) in
       let rr1530 =
       x430 (Fsubq (Sy.VAR r375, Sy.VAR r376, Sy.VAR r377)) in
       let rr1531 =
       x430 (Fmulq (Sy.VAR r378, Sy.VAR r379, Sy.VAR r380)) in
       let rr1532 =
       x430 (Fdivq (Sy.VAR r381, Sy.VAR r382, Sy.VAR r383)) in
       let rr1533 =
       x430 (Fsmuld (Sy.VAR r384, Sy.VAR r385, Sy.VAR r386)) in
       let rr1534 =
       x430 (Fdmulq (Sy.VAR r387, Sy.VAR r388, Sy.VAR r389)) in
       let rr1535 = x430 (Fcmps (Sy.VAR r390, Sy.VAR r391)) in
       let rr1536 = x430 (Fcmpes (Sy.VAR r392, Sy.VAR r393)) in
       let rr1537 = x430 (Fcmpd (Sy.VAR r394, Sy.VAR r395)) in
       let rr1538 = x430 (Fcmped (Sy.VAR r396, Sy.VAR r397)) in
       let rr1539 = x430 (Fcmpq (Sy.VAR r398, Sy.VAR r399)) in
       let rr1540 = x430 (Fcmpeq (Sy.VAR r400, Sy.VAR r401)) in
       let rr1541 = x430 (Nop ()) in
       let rr1542 =
       x430
         (let r1543 = Tools.gensym "x" in
          let r1544 = Tools.gensym "x" in
          let r1545 = Tools.gensym "x" in
          let r1546 = Tools.gensym "x" in
          let r1547 = Tools.gensym "x" in
          let r1548 = Tools.gensym "x" in
          let r1549 = Tools.gensym "x" in
          let r1550 = Tools.gensym "x" in
          let vv1551 =
          Ctrl.shift
            (fun x1552 ->
               let rr1553 =
               x1552
                 (let r1554 = Tools.gensym "x" in
                  let r1555 = Tools.gensym "x" in
                  let vv1556 =
                  Ctrl.shift
                    (fun x1557 ->
                       let rr1558 =
                       x1557 (Flush
                         ((Generala
                          (Sy.VAR r1543, (Imode (Sy.VAR r1554)))))) in
                       let rr1559 =
                       x1557 (Flush
                         ((Generala
                          (Sy.VAR r1543, (Rmode (Sy.VAR r1555)))))) in
                       Sy.CASE
                       (Sy.VAR r1544,
                        [("Imode", [r1554], rr1558);
                         ("Rmode", [r1555], rr1559)])) in vv1556) in
               let rr1560 =
               x1552 (Flush ((Dispa (Sy.VAR r1545, Sy.VAR r1546)))) in
               let rr1561 = x1552 (Flush ((Absolutea (Sy.VAR r1547))))
               in
               let rr1562 =
               x1552 (Flush ((Indexa (Sy.VAR r1548, Sy.VAR r1549)))) in
               let rr1563 = x1552 (Flush ((Indirecta (Sy.VAR r1550))))
               in
               Sy.CASE
               (Sy.VAR r402,
                [("Generala", [r1543;r1544], rr1553);
                 ("Dispa", [r1545;r1546], rr1560);
                 ("Absolutea", [r1547], rr1561);
                 ("Indexa", [r1548;r1549], rr1562);
                 ("Indirecta", [r1550], rr1563)])) in vv1551) in
       let rr1564 =
       x430
         (let r1565 = Tools.gensym "x" in
          let r1566 = Tools.gensym "x" in
          let r1567 = Tools.gensym "x" in
          let r1568 = Tools.gensym "x" in
          let r1569 = Tools.gensym "x" in
          let r1570 = Tools.gensym "x" in
          let r1571 = Tools.gensym "x" in
          let r1572 = Tools.gensym "x" in
          let vv1573 =
          Ctrl.shift
            (fun x1574 ->
               let rr1575 =
               x1574
                 (let r1576 = Tools.gensym "x" in
                  let r1577 = Tools.gensym "x" in
                  let vv1578 =
                  Ctrl.shift
                    (fun x1579 ->
                       let rr1580 =
                       x1579 (Jmpl
                         ((Generala
                          (Sy.VAR r1565, (Imode (Sy.VAR r1576)))),
                          Sy.VAR r404)) in
                       let rr1581 =
                       x1579 (Jmpl
                         ((Generala
                          (Sy.VAR r1565, (Rmode (Sy.VAR r1577)))),
                          Sy.VAR r404)) in
                       Sy.CASE
                       (Sy.VAR r1566,
                        [("Imode", [r1576], rr1580);
                         ("Rmode", [r1577], rr1581)])) in vv1578) in
               let rr1582 =
               x1574 (Jmpl
                 ((Dispa (Sy.VAR r1567, Sy.VAR r1568)), Sy.VAR r404))
               in
               let rr1583 =
               x1574 (Jmpl ((Absolutea (Sy.VAR r1569)), Sy.VAR r404))
               in
               let rr1584 =
               x1574 (Jmpl
                 ((Indexa (Sy.VAR r1570, Sy.VAR r1571)), Sy.VAR r404))
               in
               let rr1585 =
               x1574 (Jmpl ((Indirecta (Sy.VAR r1572)), Sy.VAR r404))
               in
               Sy.CASE
               (Sy.VAR r403,
                [("Generala", [r1565;r1566], rr1575);
                 ("Dispa", [r1567;r1568], rr1582);
                 ("Absolutea", [r1569], rr1583);
                 ("Indexa", [r1570;r1571], rr1584);
                 ("Indirecta", [r1572], rr1585)])) in vv1573) in
       let rr1586 =
       x430
         (let r1587 = Tools.gensym "x" in
          let r1588 = Tools.gensym "x" in
          let r1589 = Tools.gensym "x" in
          let r1590 = Tools.gensym "x" in
          let r1591 = Tools.gensym "x" in
          let r1592 = Tools.gensym "x" in
          let r1593 = Tools.gensym "x" in
          let r1594 = Tools.gensym "x" in
          let vv1595 =
          Ctrl.shift
            (fun x1596 ->
               let rr1597 =
               x1596
                 (let r1598 = Tools.gensym "x" in
                  let r1599 = Tools.gensym "x" in
                  let vv1600 =
                  Ctrl.shift
                    (fun x1601 ->
                       let rr1602 =
                       x1601 (Rett
                         ((Generala
                          (Sy.VAR r1587, (Imode (Sy.VAR r1598)))))) in
                       let rr1603 =
                       x1601 (Rett
                         ((Generala
                          (Sy.VAR r1587, (Rmode (Sy.VAR r1599)))))) in
                       Sy.CASE
                       (Sy.VAR r1588,
                        [("Imode", [r1598], rr1602);
                         ("Rmode", [r1599], rr1603)])) in vv1600) in
               let rr1604 =
               x1596 (Rett ((Dispa (Sy.VAR r1589, Sy.VAR r1590)))) in
               let rr1605 = x1596 (Rett ((Absolutea (Sy.VAR r1591))))
               in
               let rr1606 =
               x1596 (Rett ((Indexa (Sy.VAR r1592, Sy.VAR r1593)))) in
               let rr1607 = x1596 (Rett ((Indirecta (Sy.VAR r1594))))
               in
               Sy.CASE
               (Sy.VAR r405,
                [("Generala", [r1587;r1588], rr1597);
                 ("Dispa", [r1589;r1590], rr1604);
                 ("Absolutea", [r1591], rr1605);
                 ("Indexa", [r1592;r1593], rr1606);
                 ("Indirecta", [r1594], rr1607)])) in vv1595) in
       let rr1608 =
       x430
         (let r1609 = Tools.gensym "x" in
          let r1610 = Tools.gensym "x" in
          let r1611 = Tools.gensym "x" in
          let r1612 = Tools.gensym "x" in
          let r1613 = Tools.gensym "x" in
          let r1614 = Tools.gensym "x" in
          let r1615 = Tools.gensym "x" in
          let r1616 = Tools.gensym "x" in
          let vv1617 =
          Ctrl.shift
            (fun x1618 ->
               let rr1619 =
               x1618
                 (let r1620 = Tools.gensym "x" in
                  let r1621 = Tools.gensym "x" in
                  let vv1622 =
                  Ctrl.shift
                    (fun x1623 ->
                       let rr1624 =
                       x1623 (Tn
                         ((Generala
                          (Sy.VAR r1609, (Imode (Sy.VAR r1620)))))) in
                       let rr1625 =
                       x1623 (Tn
                         ((Generala
                          (Sy.VAR r1609, (Rmode (Sy.VAR r1621)))))) in
                       Sy.CASE
                       (Sy.VAR r1610,
                        [("Imode", [r1620], rr1624);
                         ("Rmode", [r1621], rr1625)])) in vv1622) in
               let rr1626 =
               x1618 (Tn ((Dispa (Sy.VAR r1611, Sy.VAR r1612)))) in
               let rr1627 = x1618 (Tn ((Absolutea (Sy.VAR r1613)))) in
               let rr1628 =
               x1618 (Tn ((Indexa (Sy.VAR r1614, Sy.VAR r1615)))) in
               let rr1629 = x1618 (Tn ((Indirecta (Sy.VAR r1616)))) in
               Sy.CASE
               (Sy.VAR r406,
                [("Generala", [r1609;r1610], rr1619);
                 ("Dispa", [r1611;r1612], rr1626);
                 ("Absolutea", [r1613], rr1627);
                 ("Indexa", [r1614;r1615], rr1628);
                 ("Indirecta", [r1616], rr1629)])) in vv1617) in
       let rr1630 =
       x430
         (let r1631 = Tools.gensym "x" in
          let r1632 = Tools.gensym "x" in
          let r1633 = Tools.gensym "x" in
          let r1634 = Tools.gensym "x" in
          let r1635 = Tools.gensym "x" in
          let r1636 = Tools.gensym "x" in
          let r1637 = Tools.gensym "x" in
          let r1638 = Tools.gensym "x" in
          let vv1639 =
          Ctrl.shift
            (fun x1640 ->
               let rr1641 =
               x1640
                 (let r1642 = Tools.gensym "x" in
                  let r1643 = Tools.gensym "x" in
                  let vv1644 =
                  Ctrl.shift
                    (fun x1645 ->
                       let rr1646 =
                       x1645 (Te
                         ((Generala
                          (Sy.VAR r1631, (Imode (Sy.VAR r1642)))))) in
                       let rr1647 =
                       x1645 (Te
                         ((Generala
                          (Sy.VAR r1631, (Rmode (Sy.VAR r1643)))))) in
                       Sy.CASE
                       (Sy.VAR r1632,
                        [("Imode", [r1642], rr1646);
                         ("Rmode", [r1643], rr1647)])) in vv1644) in
               let rr1648 =
               x1640 (Te ((Dispa (Sy.VAR r1633, Sy.VAR r1634)))) in
               let rr1649 = x1640 (Te ((Absolutea (Sy.VAR r1635)))) in
               let rr1650 =
               x1640 (Te ((Indexa (Sy.VAR r1636, Sy.VAR r1637)))) in
               let rr1651 = x1640 (Te ((Indirecta (Sy.VAR r1638)))) in
               Sy.CASE
               (Sy.VAR r407,
                [("Generala", [r1631;r1632], rr1641);
                 ("Dispa", [r1633;r1634], rr1648);
                 ("Absolutea", [r1635], rr1649);
                 ("Indexa", [r1636;r1637], rr1650);
                 ("Indirecta", [r1638], rr1651)])) in vv1639) in
       let rr1652 =
       x430
         (let r1653 = Tools.gensym "x" in
          let r1654 = Tools.gensym "x" in
          let r1655 = Tools.gensym "x" in
          let r1656 = Tools.gensym "x" in
          let r1657 = Tools.gensym "x" in
          let r1658 = Tools.gensym "x" in
          let r1659 = Tools.gensym "x" in
          let r1660 = Tools.gensym "x" in
          let vv1661 =
          Ctrl.shift
            (fun x1662 ->
               let rr1663 =
               x1662
                 (let r1664 = Tools.gensym "x" in
                  let r1665 = Tools.gensym "x" in
                  let vv1666 =
                  Ctrl.shift
                    (fun x1667 ->
                       let rr1668 =
                       x1667 (Tle
                         ((Generala
                          (Sy.VAR r1653, (Imode (Sy.VAR r1664)))))) in
                       let rr1669 =
                       x1667 (Tle
                         ((Generala
                          (Sy.VAR r1653, (Rmode (Sy.VAR r1665)))))) in
                       Sy.CASE
                       (Sy.VAR r1654,
                        [("Imode", [r1664], rr1668);
                         ("Rmode", [r1665], rr1669)])) in vv1666) in
               let rr1670 =
               x1662 (Tle ((Dispa (Sy.VAR r1655, Sy.VAR r1656)))) in
               let rr1671 = x1662 (Tle ((Absolutea (Sy.VAR r1657)))) in
               let rr1672 =
               x1662 (Tle ((Indexa (Sy.VAR r1658, Sy.VAR r1659)))) in
               let rr1673 = x1662 (Tle ((Indirecta (Sy.VAR r1660)))) in
               Sy.CASE
               (Sy.VAR r408,
                [("Generala", [r1653;r1654], rr1663);
                 ("Dispa", [r1655;r1656], rr1670);
                 ("Absolutea", [r1657], rr1671);
                 ("Indexa", [r1658;r1659], rr1672);
                 ("Indirecta", [r1660], rr1673)])) in vv1661) in
       let rr1674 =
       x430
         (let r1675 = Tools.gensym "x" in
          let r1676 = Tools.gensym "x" in
          let r1677 = Tools.gensym "x" in
          let r1678 = Tools.gensym "x" in
          let r1679 = Tools.gensym "x" in
          let r1680 = Tools.gensym "x" in
          let r1681 = Tools.gensym "x" in
          let r1682 = Tools.gensym "x" in
          let vv1683 =
          Ctrl.shift
            (fun x1684 ->
               let rr1685 =
               x1684
                 (let r1686 = Tools.gensym "x" in
                  let r1687 = Tools.gensym "x" in
                  let vv1688 =
                  Ctrl.shift
                    (fun x1689 ->
                       let rr1690 =
                       x1689 (Tl
                         ((Generala
                          (Sy.VAR r1675, (Imode (Sy.VAR r1686)))))) in
                       let rr1691 =
                       x1689 (Tl
                         ((Generala
                          (Sy.VAR r1675, (Rmode (Sy.VAR r1687)))))) in
                       Sy.CASE
                       (Sy.VAR r1676,
                        [("Imode", [r1686], rr1690);
                         ("Rmode", [r1687], rr1691)])) in vv1688) in
               let rr1692 =
               x1684 (Tl ((Dispa (Sy.VAR r1677, Sy.VAR r1678)))) in
               let rr1693 = x1684 (Tl ((Absolutea (Sy.VAR r1679)))) in
               let rr1694 =
               x1684 (Tl ((Indexa (Sy.VAR r1680, Sy.VAR r1681)))) in
               let rr1695 = x1684 (Tl ((Indirecta (Sy.VAR r1682)))) in
               Sy.CASE
               (Sy.VAR r409,
                [("Generala", [r1675;r1676], rr1685);
                 ("Dispa", [r1677;r1678], rr1692);
                 ("Absolutea", [r1679], rr1693);
                 ("Indexa", [r1680;r1681], rr1694);
                 ("Indirecta", [r1682], rr1695)])) in vv1683) in
       let rr1696 =
       x430
         (let r1697 = Tools.gensym "x" in
          let r1698 = Tools.gensym "x" in
          let r1699 = Tools.gensym "x" in
          let r1700 = Tools.gensym "x" in
          let r1701 = Tools.gensym "x" in
          let r1702 = Tools.gensym "x" in
          let r1703 = Tools.gensym "x" in
          let r1704 = Tools.gensym "x" in
          let vv1705 =
          Ctrl.shift
            (fun x1706 ->
               let rr1707 =
               x1706
                 (let r1708 = Tools.gensym "x" in
                  let r1709 = Tools.gensym "x" in
                  let vv1710 =
                  Ctrl.shift
                    (fun x1711 ->
                       let rr1712 =
                       x1711 (Tleu
                         ((Generala
                          (Sy.VAR r1697, (Imode (Sy.VAR r1708)))))) in
                       let rr1713 =
                       x1711 (Tleu
                         ((Generala
                          (Sy.VAR r1697, (Rmode (Sy.VAR r1709)))))) in
                       Sy.CASE
                       (Sy.VAR r1698,
                        [("Imode", [r1708], rr1712);
                         ("Rmode", [r1709], rr1713)])) in vv1710) in
               let rr1714 =
               x1706 (Tleu ((Dispa (Sy.VAR r1699, Sy.VAR r1700)))) in
               let rr1715 = x1706 (Tleu ((Absolutea (Sy.VAR r1701))))
               in
               let rr1716 =
               x1706 (Tleu ((Indexa (Sy.VAR r1702, Sy.VAR r1703)))) in
               let rr1717 = x1706 (Tleu ((Indirecta (Sy.VAR r1704))))
               in
               Sy.CASE
               (Sy.VAR r410,
                [("Generala", [r1697;r1698], rr1707);
                 ("Dispa", [r1699;r1700], rr1714);
                 ("Absolutea", [r1701], rr1715);
                 ("Indexa", [r1702;r1703], rr1716);
                 ("Indirecta", [r1704], rr1717)])) in vv1705) in
       let rr1718 =
       x430
         (let r1719 = Tools.gensym "x" in
          let r1720 = Tools.gensym "x" in
          let r1721 = Tools.gensym "x" in
          let r1722 = Tools.gensym "x" in
          let r1723 = Tools.gensym "x" in
          let r1724 = Tools.gensym "x" in
          let r1725 = Tools.gensym "x" in
          let r1726 = Tools.gensym "x" in
          let vv1727 =
          Ctrl.shift
            (fun x1728 ->
               let rr1729 =
               x1728
                 (let r1730 = Tools.gensym "x" in
                  let r1731 = Tools.gensym "x" in
                  let vv1732 =
                  Ctrl.shift
                    (fun x1733 ->
                       let rr1734 =
                       x1733 (Tcs
                         ((Generala
                          (Sy.VAR r1719, (Imode (Sy.VAR r1730)))))) in
                       let rr1735 =
                       x1733 (Tcs
                         ((Generala
                          (Sy.VAR r1719, (Rmode (Sy.VAR r1731)))))) in
                       Sy.CASE
                       (Sy.VAR r1720,
                        [("Imode", [r1730], rr1734);
                         ("Rmode", [r1731], rr1735)])) in vv1732) in
               let rr1736 =
               x1728 (Tcs ((Dispa (Sy.VAR r1721, Sy.VAR r1722)))) in
               let rr1737 = x1728 (Tcs ((Absolutea (Sy.VAR r1723)))) in
               let rr1738 =
               x1728 (Tcs ((Indexa (Sy.VAR r1724, Sy.VAR r1725)))) in
               let rr1739 = x1728 (Tcs ((Indirecta (Sy.VAR r1726)))) in
               Sy.CASE
               (Sy.VAR r411,
                [("Generala", [r1719;r1720], rr1729);
                 ("Dispa", [r1721;r1722], rr1736);
                 ("Absolutea", [r1723], rr1737);
                 ("Indexa", [r1724;r1725], rr1738);
                 ("Indirecta", [r1726], rr1739)])) in vv1727) in
       let rr1740 =
       x430
         (let r1741 = Tools.gensym "x" in
          let r1742 = Tools.gensym "x" in
          let r1743 = Tools.gensym "x" in
          let r1744 = Tools.gensym "x" in
          let r1745 = Tools.gensym "x" in
          let r1746 = Tools.gensym "x" in
          let r1747 = Tools.gensym "x" in
          let r1748 = Tools.gensym "x" in
          let vv1749 =
          Ctrl.shift
            (fun x1750 ->
               let rr1751 =
               x1750
                 (let r1752 = Tools.gensym "x" in
                  let r1753 = Tools.gensym "x" in
                  let vv1754 =
                  Ctrl.shift
                    (fun x1755 ->
                       let rr1756 =
                       x1755 (Tneg
                         ((Generala
                          (Sy.VAR r1741, (Imode (Sy.VAR r1752)))))) in
                       let rr1757 =
                       x1755 (Tneg
                         ((Generala
                          (Sy.VAR r1741, (Rmode (Sy.VAR r1753)))))) in
                       Sy.CASE
                       (Sy.VAR r1742,
                        [("Imode", [r1752], rr1756);
                         ("Rmode", [r1753], rr1757)])) in vv1754) in
               let rr1758 =
               x1750 (Tneg ((Dispa (Sy.VAR r1743, Sy.VAR r1744)))) in
               let rr1759 = x1750 (Tneg ((Absolutea (Sy.VAR r1745))))
               in
               let rr1760 =
               x1750 (Tneg ((Indexa (Sy.VAR r1746, Sy.VAR r1747)))) in
               let rr1761 = x1750 (Tneg ((Indirecta (Sy.VAR r1748))))
               in
               Sy.CASE
               (Sy.VAR r412,
                [("Generala", [r1741;r1742], rr1751);
                 ("Dispa", [r1743;r1744], rr1758);
                 ("Absolutea", [r1745], rr1759);
                 ("Indexa", [r1746;r1747], rr1760);
                 ("Indirecta", [r1748], rr1761)])) in vv1749) in
       let rr1762 =
       x430
         (let r1763 = Tools.gensym "x" in
          let r1764 = Tools.gensym "x" in
          let r1765 = Tools.gensym "x" in
          let r1766 = Tools.gensym "x" in
          let r1767 = Tools.gensym "x" in
          let r1768 = Tools.gensym "x" in
          let r1769 = Tools.gensym "x" in
          let r1770 = Tools.gensym "x" in
          let vv1771 =
          Ctrl.shift
            (fun x1772 ->
               let rr1773 =
               x1772
                 (let r1774 = Tools.gensym "x" in
                  let r1775 = Tools.gensym "x" in
                  let vv1776 =
                  Ctrl.shift
                    (fun x1777 ->
                       let rr1778 =
                       x1777 (Tvs
                         ((Generala
                          (Sy.VAR r1763, (Imode (Sy.VAR r1774)))))) in
                       let rr1779 =
                       x1777 (Tvs
                         ((Generala
                          (Sy.VAR r1763, (Rmode (Sy.VAR r1775)))))) in
                       Sy.CASE
                       (Sy.VAR r1764,
                        [("Imode", [r1774], rr1778);
                         ("Rmode", [r1775], rr1779)])) in vv1776) in
               let rr1780 =
               x1772 (Tvs ((Dispa (Sy.VAR r1765, Sy.VAR r1766)))) in
               let rr1781 = x1772 (Tvs ((Absolutea (Sy.VAR r1767)))) in
               let rr1782 =
               x1772 (Tvs ((Indexa (Sy.VAR r1768, Sy.VAR r1769)))) in
               let rr1783 = x1772 (Tvs ((Indirecta (Sy.VAR r1770)))) in
               Sy.CASE
               (Sy.VAR r413,
                [("Generala", [r1763;r1764], rr1773);
                 ("Dispa", [r1765;r1766], rr1780);
                 ("Absolutea", [r1767], rr1781);
                 ("Indexa", [r1768;r1769], rr1782);
                 ("Indirecta", [r1770], rr1783)])) in vv1771) in
       let rr1784 =
       x430
         (let r1785 = Tools.gensym "x" in
          let r1786 = Tools.gensym "x" in
          let r1787 = Tools.gensym "x" in
          let r1788 = Tools.gensym "x" in
          let r1789 = Tools.gensym "x" in
          let r1790 = Tools.gensym "x" in
          let r1791 = Tools.gensym "x" in
          let r1792 = Tools.gensym "x" in
          let vv1793 =
          Ctrl.shift
            (fun x1794 ->
               let rr1795 =
               x1794
                 (let r1796 = Tools.gensym "x" in
                  let r1797 = Tools.gensym "x" in
                  let vv1798 =
                  Ctrl.shift
                    (fun x1799 ->
                       let rr1800 =
                       x1799 (Ta
                         ((Generala
                          (Sy.VAR r1785, (Imode (Sy.VAR r1796)))))) in
                       let rr1801 =
                       x1799 (Ta
                         ((Generala
                          (Sy.VAR r1785, (Rmode (Sy.VAR r1797)))))) in
                       Sy.CASE
                       (Sy.VAR r1786,
                        [("Imode", [r1796], rr1800);
                         ("Rmode", [r1797], rr1801)])) in vv1798) in
               let rr1802 =
               x1794 (Ta ((Dispa (Sy.VAR r1787, Sy.VAR r1788)))) in
               let rr1803 = x1794 (Ta ((Absolutea (Sy.VAR r1789)))) in
               let rr1804 =
               x1794 (Ta ((Indexa (Sy.VAR r1790, Sy.VAR r1791)))) in
               let rr1805 = x1794 (Ta ((Indirecta (Sy.VAR r1792)))) in
               Sy.CASE
               (Sy.VAR r414,
                [("Generala", [r1785;r1786], rr1795);
                 ("Dispa", [r1787;r1788], rr1802);
                 ("Absolutea", [r1789], rr1803);
                 ("Indexa", [r1790;r1791], rr1804);
                 ("Indirecta", [r1792], rr1805)])) in vv1793) in
       let rr1806 =
       x430
         (let r1807 = Tools.gensym "x" in
          let r1808 = Tools.gensym "x" in
          let r1809 = Tools.gensym "x" in
          let r1810 = Tools.gensym "x" in
          let r1811 = Tools.gensym "x" in
          let r1812 = Tools.gensym "x" in
          let r1813 = Tools.gensym "x" in
          let r1814 = Tools.gensym "x" in
          let vv1815 =
          Ctrl.shift
            (fun x1816 ->
               let rr1817 =
               x1816
                 (let r1818 = Tools.gensym "x" in
                  let r1819 = Tools.gensym "x" in
                  let vv1820 =
                  Ctrl.shift
                    (fun x1821 ->
                       let rr1822 =
                       x1821 (Tne
                         ((Generala
                          (Sy.VAR r1807, (Imode (Sy.VAR r1818)))))) in
                       let rr1823 =
                       x1821 (Tne
                         ((Generala
                          (Sy.VAR r1807, (Rmode (Sy.VAR r1819)))))) in
                       Sy.CASE
                       (Sy.VAR r1808,
                        [("Imode", [r1818], rr1822);
                         ("Rmode", [r1819], rr1823)])) in vv1820) in
               let rr1824 =
               x1816 (Tne ((Dispa (Sy.VAR r1809, Sy.VAR r1810)))) in
               let rr1825 = x1816 (Tne ((Absolutea (Sy.VAR r1811)))) in
               let rr1826 =
               x1816 (Tne ((Indexa (Sy.VAR r1812, Sy.VAR r1813)))) in
               let rr1827 = x1816 (Tne ((Indirecta (Sy.VAR r1814)))) in
               Sy.CASE
               (Sy.VAR r415,
                [("Generala", [r1807;r1808], rr1817);
                 ("Dispa", [r1809;r1810], rr1824);
                 ("Absolutea", [r1811], rr1825);
                 ("Indexa", [r1812;r1813], rr1826);
                 ("Indirecta", [r1814], rr1827)])) in vv1815) in
       let rr1828 =
       x430
         (let r1829 = Tools.gensym "x" in
          let r1830 = Tools.gensym "x" in
          let r1831 = Tools.gensym "x" in
          let r1832 = Tools.gensym "x" in
          let r1833 = Tools.gensym "x" in
          let r1834 = Tools.gensym "x" in
          let r1835 = Tools.gensym "x" in
          let r1836 = Tools.gensym "x" in
          let vv1837 =
          Ctrl.shift
            (fun x1838 ->
               let rr1839 =
               x1838
                 (let r1840 = Tools.gensym "x" in
                  let r1841 = Tools.gensym "x" in
                  let vv1842 =
                  Ctrl.shift
                    (fun x1843 ->
                       let rr1844 =
                       x1843 (Tg
                         ((Generala
                          (Sy.VAR r1829, (Imode (Sy.VAR r1840)))))) in
                       let rr1845 =
                       x1843 (Tg
                         ((Generala
                          (Sy.VAR r1829, (Rmode (Sy.VAR r1841)))))) in
                       Sy.CASE
                       (Sy.VAR r1830,
                        [("Imode", [r1840], rr1844);
                         ("Rmode", [r1841], rr1845)])) in vv1842) in
               let rr1846 =
               x1838 (Tg ((Dispa (Sy.VAR r1831, Sy.VAR r1832)))) in
               let rr1847 = x1838 (Tg ((Absolutea (Sy.VAR r1833)))) in
               let rr1848 =
               x1838 (Tg ((Indexa (Sy.VAR r1834, Sy.VAR r1835)))) in
               let rr1849 = x1838 (Tg ((Indirecta (Sy.VAR r1836)))) in
               Sy.CASE
               (Sy.VAR r416,
                [("Generala", [r1829;r1830], rr1839);
                 ("Dispa", [r1831;r1832], rr1846);
                 ("Absolutea", [r1833], rr1847);
                 ("Indexa", [r1834;r1835], rr1848);
                 ("Indirecta", [r1836], rr1849)])) in vv1837) in
       let rr1850 =
       x430
         (let r1851 = Tools.gensym "x" in
          let r1852 = Tools.gensym "x" in
          let r1853 = Tools.gensym "x" in
          let r1854 = Tools.gensym "x" in
          let r1855 = Tools.gensym "x" in
          let r1856 = Tools.gensym "x" in
          let r1857 = Tools.gensym "x" in
          let r1858 = Tools.gensym "x" in
          let vv1859 =
          Ctrl.shift
            (fun x1860 ->
               let rr1861 =
               x1860
                 (let r1862 = Tools.gensym "x" in
                  let r1863 = Tools.gensym "x" in
                  let vv1864 =
                  Ctrl.shift
                    (fun x1865 ->
                       let rr1866 =
                       x1865 (Tge
                         ((Generala
                          (Sy.VAR r1851, (Imode (Sy.VAR r1862)))))) in
                       let rr1867 =
                       x1865 (Tge
                         ((Generala
                          (Sy.VAR r1851, (Rmode (Sy.VAR r1863)))))) in
                       Sy.CASE
                       (Sy.VAR r1852,
                        [("Imode", [r1862], rr1866);
                         ("Rmode", [r1863], rr1867)])) in vv1864) in
               let rr1868 =
               x1860 (Tge ((Dispa (Sy.VAR r1853, Sy.VAR r1854)))) in
               let rr1869 = x1860 (Tge ((Absolutea (Sy.VAR r1855)))) in
               let rr1870 =
               x1860 (Tge ((Indexa (Sy.VAR r1856, Sy.VAR r1857)))) in
               let rr1871 = x1860 (Tge ((Indirecta (Sy.VAR r1858)))) in
               Sy.CASE
               (Sy.VAR r417,
                [("Generala", [r1851;r1852], rr1861);
                 ("Dispa", [r1853;r1854], rr1868);
                 ("Absolutea", [r1855], rr1869);
                 ("Indexa", [r1856;r1857], rr1870);
                 ("Indirecta", [r1858], rr1871)])) in vv1859) in
       let rr1872 =
       x430
         (let r1873 = Tools.gensym "x" in
          let r1874 = Tools.gensym "x" in
          let r1875 = Tools.gensym "x" in
          let r1876 = Tools.gensym "x" in
          let r1877 = Tools.gensym "x" in
          let r1878 = Tools.gensym "x" in
          let r1879 = Tools.gensym "x" in
          let r1880 = Tools.gensym "x" in
          let vv1881 =
          Ctrl.shift
            (fun x1882 ->
               let rr1883 =
               x1882
                 (let r1884 = Tools.gensym "x" in
                  let r1885 = Tools.gensym "x" in
                  let vv1886 =
                  Ctrl.shift
                    (fun x1887 ->
                       let rr1888 =
                       x1887 (Tgu
                         ((Generala
                          (Sy.VAR r1873, (Imode (Sy.VAR r1884)))))) in
                       let rr1889 =
                       x1887 (Tgu
                         ((Generala
                          (Sy.VAR r1873, (Rmode (Sy.VAR r1885)))))) in
                       Sy.CASE
                       (Sy.VAR r1874,
                        [("Imode", [r1884], rr1888);
                         ("Rmode", [r1885], rr1889)])) in vv1886) in
               let rr1890 =
               x1882 (Tgu ((Dispa (Sy.VAR r1875, Sy.VAR r1876)))) in
               let rr1891 = x1882 (Tgu ((Absolutea (Sy.VAR r1877)))) in
               let rr1892 =
               x1882 (Tgu ((Indexa (Sy.VAR r1878, Sy.VAR r1879)))) in
               let rr1893 = x1882 (Tgu ((Indirecta (Sy.VAR r1880)))) in
               Sy.CASE
               (Sy.VAR r418,
                [("Generala", [r1873;r1874], rr1883);
                 ("Dispa", [r1875;r1876], rr1890);
                 ("Absolutea", [r1877], rr1891);
                 ("Indexa", [r1878;r1879], rr1892);
                 ("Indirecta", [r1880], rr1893)])) in vv1881) in
       let rr1894 =
       x430
         (let r1895 = Tools.gensym "x" in
          let r1896 = Tools.gensym "x" in
          let r1897 = Tools.gensym "x" in
          let r1898 = Tools.gensym "x" in
          let r1899 = Tools.gensym "x" in
          let r1900 = Tools.gensym "x" in
          let r1901 = Tools.gensym "x" in
          let r1902 = Tools.gensym "x" in
          let vv1903 =
          Ctrl.shift
            (fun x1904 ->
               let rr1905 =
               x1904
                 (let r1906 = Tools.gensym "x" in
                  let r1907 = Tools.gensym "x" in
                  let vv1908 =
                  Ctrl.shift
                    (fun x1909 ->
                       let rr1910 =
                       x1909 (Tcc
                         ((Generala
                          (Sy.VAR r1895, (Imode (Sy.VAR r1906)))))) in
                       let rr1911 =
                       x1909 (Tcc
                         ((Generala
                          (Sy.VAR r1895, (Rmode (Sy.VAR r1907)))))) in
                       Sy.CASE
                       (Sy.VAR r1896,
                        [("Imode", [r1906], rr1910);
                         ("Rmode", [r1907], rr1911)])) in vv1908) in
               let rr1912 =
               x1904 (Tcc ((Dispa (Sy.VAR r1897, Sy.VAR r1898)))) in
               let rr1913 = x1904 (Tcc ((Absolutea (Sy.VAR r1899)))) in
               let rr1914 =
               x1904 (Tcc ((Indexa (Sy.VAR r1900, Sy.VAR r1901)))) in
               let rr1915 = x1904 (Tcc ((Indirecta (Sy.VAR r1902)))) in
               Sy.CASE
               (Sy.VAR r419,
                [("Generala", [r1895;r1896], rr1905);
                 ("Dispa", [r1897;r1898], rr1912);
                 ("Absolutea", [r1899], rr1913);
                 ("Indexa", [r1900;r1901], rr1914);
                 ("Indirecta", [r1902], rr1915)])) in vv1903) in
       let rr1916 =
       x430
         (let r1917 = Tools.gensym "x" in
          let r1918 = Tools.gensym "x" in
          let r1919 = Tools.gensym "x" in
          let r1920 = Tools.gensym "x" in
          let r1921 = Tools.gensym "x" in
          let r1922 = Tools.gensym "x" in
          let r1923 = Tools.gensym "x" in
          let r1924 = Tools.gensym "x" in
          let vv1925 =
          Ctrl.shift
            (fun x1926 ->
               let rr1927 =
               x1926
                 (let r1928 = Tools.gensym "x" in
                  let r1929 = Tools.gensym "x" in
                  let vv1930 =
                  Ctrl.shift
                    (fun x1931 ->
                       let rr1932 =
                       x1931 (Tpos
                         ((Generala
                          (Sy.VAR r1917, (Imode (Sy.VAR r1928)))))) in
                       let rr1933 =
                       x1931 (Tpos
                         ((Generala
                          (Sy.VAR r1917, (Rmode (Sy.VAR r1929)))))) in
                       Sy.CASE
                       (Sy.VAR r1918,
                        [("Imode", [r1928], rr1932);
                         ("Rmode", [r1929], rr1933)])) in vv1930) in
               let rr1934 =
               x1926 (Tpos ((Dispa (Sy.VAR r1919, Sy.VAR r1920)))) in
               let rr1935 = x1926 (Tpos ((Absolutea (Sy.VAR r1921))))
               in
               let rr1936 =
               x1926 (Tpos ((Indexa (Sy.VAR r1922, Sy.VAR r1923)))) in
               let rr1937 = x1926 (Tpos ((Indirecta (Sy.VAR r1924))))
               in
               Sy.CASE
               (Sy.VAR r420,
                [("Generala", [r1917;r1918], rr1927);
                 ("Dispa", [r1919;r1920], rr1934);
                 ("Absolutea", [r1921], rr1935);
                 ("Indexa", [r1922;r1923], rr1936);
                 ("Indirecta", [r1924], rr1937)])) in vv1925) in
       let rr1938 =
       x430
         (let r1939 = Tools.gensym "x" in
          let r1940 = Tools.gensym "x" in
          let r1941 = Tools.gensym "x" in
          let r1942 = Tools.gensym "x" in
          let r1943 = Tools.gensym "x" in
          let r1944 = Tools.gensym "x" in
          let r1945 = Tools.gensym "x" in
          let r1946 = Tools.gensym "x" in
          let vv1947 =
          Ctrl.shift
            (fun x1948 ->
               let rr1949 =
               x1948
                 (let r1950 = Tools.gensym "x" in
                  let r1951 = Tools.gensym "x" in
                  let vv1952 =
                  Ctrl.shift
                    (fun x1953 ->
                       let rr1954 =
                       x1953 (Tvc
                         ((Generala
                          (Sy.VAR r1939, (Imode (Sy.VAR r1950)))))) in
                       let rr1955 =
                       x1953 (Tvc
                         ((Generala
                          (Sy.VAR r1939, (Rmode (Sy.VAR r1951)))))) in
                       Sy.CASE
                       (Sy.VAR r1940,
                        [("Imode", [r1950], rr1954);
                         ("Rmode", [r1951], rr1955)])) in vv1952) in
               let rr1956 =
               x1948 (Tvc ((Dispa (Sy.VAR r1941, Sy.VAR r1942)))) in
               let rr1957 = x1948 (Tvc ((Absolutea (Sy.VAR r1943)))) in
               let rr1958 =
               x1948 (Tvc ((Indexa (Sy.VAR r1944, Sy.VAR r1945)))) in
               let rr1959 = x1948 (Tvc ((Indirecta (Sy.VAR r1946)))) in
               Sy.CASE
               (Sy.VAR r421,
                [("Generala", [r1939;r1940], rr1949);
                 ("Dispa", [r1941;r1942], rr1956);
                 ("Absolutea", [r1943], rr1957);
                 ("Indexa", [r1944;r1945], rr1958);
                 ("Indirecta", [r1946], rr1959)])) in vv1947) in
       let rr1960 = x430 (Unimp (Sy.VAR r422)) in
       let rr1961 = x430 (Sethi (Sy.VAR r423, Sy.VAR r424)) in
       let rr1962 = x430 (Decode_sethi (Sy.VAR r425, Sy.VAR r426)) in
       let rr1963 = x430 (Set (Sy.VAR r427, Sy.VAR r428)) in
       Sy.CASE
       (x1,
        [("Ldsb", [r2;r3], rr431);("Ldsh", [r4;r5], rr453);
         ("Ldub", [r6;r7], rr475);("Lduh", [r8;r9], rr497);
         ("Ld", [r10;r11], rr519);("Ldstub", [r12;r13], rr541);
         ("Swap_", [r14;r15], rr563);("Ldd", [r16;r17], rr585);
         ("Ldf", [r18;r19], rr607);("Lddf", [r20;r21], rr629);
         ("Ldc", [r22;r23], rr651);("Lddc", [r24;r25], rr673);
         ("Stb", [r26;r27], rr695);("Sth", [r28;r29], rr717);
         ("St", [r30;r31], rr739);("Std", [r32;r33], rr761);
         ("Stf", [r34;r35], rr783);("Stdf", [r36;r37], rr805);
         ("Stc", [r38;r39], rr827);("Stdc", [r40;r41], rr849);
         ("Ldsba", [r42;r43;r44], rr871);
         ("Ldsha", [r45;r46;r47], rr879);
         ("Lduba", [r48;r49;r50], rr887);
         ("Lduha", [r51;r52;r53], rr895);("Lda", [r54;r55;r56], rr903);
         ("Ldstuba", [r57;r58;r59], rr911);
         ("Swapa", [r60;r61;r62], rr919);
         ("Ldda", [r63;r64;r65], rr927);("Stba", [r66;r67;r68], rr935);
         ("Stha", [r69;r70;r71], rr943);("Sta", [r72;r73;r74], rr951);
         ("Stda", [r75;r76;r77], rr959);("Ldfsr", [r78], rr967);
         ("Ldcsr", [r79], rr989);("Stfsr", [r80], rr1011);
         ("Stcsr", [r81], rr1033);("Stdfq", [r82], rr1055);
         ("Stdcq", [r83], rr1077);("Rdy", [r84], rr1099);
         ("Rdpsr", [r85], rr1100);("Rdwim", [r86], rr1101);
         ("Rdtbr", [r87], rr1102);("Wry", [r88;r89], rr1103);
         ("Wrpsr", [r90;r91], rr1110);("Wrwim", [r92;r93], rr1117);
         ("Wrtbr", [r94;r95], rr1124);("Rdasr", [r96;r97], rr1131);
         ("Wrasr", [r98;r99;r100], rr1132);("Stbar", [], rr1139);
         ("And", [r101;r102;r103], rr1140);
         ("Andcc", [r104;r105;r106], rr1147);
         ("Andn", [r107;r108;r109], rr1154);
         ("Andncc", [r110;r111;r112], rr1161);
         ("Or", [r113;r114;r115], rr1168);
         ("Orcc", [r116;r117;r118], rr1175);
         ("Orn", [r119;r120;r121], rr1182);
         ("Orncc", [r122;r123;r124], rr1189);
         ("Xor", [r125;r126;r127], rr1196);
         ("Xorcc", [r128;r129;r130], rr1203);
         ("Xnor", [r131;r132;r133], rr1210);
         ("Xnorcc", [r134;r135;r136], rr1217);
         ("Sll", [r137;r138;r139], rr1224);
         ("Srl", [r140;r141;r142], rr1231);
         ("Sra", [r143;r144;r145], rr1238);
         ("Add", [r146;r147;r148], rr1245);
         ("Addcc", [r149;r150;r151], rr1252);
         ("Addx", [r152;r153;r154], rr1259);
         ("Addxcc", [r155;r156;r157], rr1266);
         ("Taddcc", [r158;r159;r160], rr1273);
         ("Taddcctv", [r161;r162;r163], rr1280);
         ("Sub", [r164;r165;r166], rr1287);
         ("Subcc", [r167;r168;r169], rr1294);
         ("Subx", [r170;r171;r172], rr1301);
         ("Subxcc", [r173;r174;r175], rr1308);
         ("Tsubcc", [r176;r177;r178], rr1315);
         ("Tsubcctv", [r179;r180;r181], rr1322);
         ("Mulscc", [r182;r183;r184], rr1329);
         ("Umul", [r185;r186;r187], rr1336);
         ("Smul", [r188;r189;r190], rr1343);
         ("Umulcc", [r191;r192;r193], rr1350);
         ("Smulcc", [r194;r195;r196], rr1357);
         ("Udiv", [r197;r198;r199], rr1364);
         ("Sdiv", [r200;r201;r202], rr1371);
         ("Udivcc", [r203;r204;r205], rr1378);
         ("Sdivcc", [r206;r207;r208], rr1385);
         ("Save", [r209;r210;r211], rr1392);
         ("Restore", [r212;r213;r214], rr1399);("Bn", [r215], rr1406);
         ("Bn_a", [r216], rr1407);("Be", [r217], rr1408);
         ("Be_a", [r218], rr1409);("Ble", [r219], rr1410);
         ("Ble_a", [r220], rr1411);("Bl", [r221], rr1412);
         ("Bl_a", [r222], rr1413);("Bleu", [r223], rr1414);
         ("Bleu_a", [r224], rr1415);("Bcs", [r225], rr1416);
         ("Bcs_a", [r226], rr1417);("Bneg", [r227], rr1418);
         ("Bneg_a", [r228], rr1419);("Bvs", [r229], rr1420);
         ("Bvs_a", [r230], rr1421);("Ba", [r231], rr1422);
         ("Ba_a", [r232], rr1423);("Bne", [r233], rr1424);
         ("Bne_a", [r234], rr1425);("Bg", [r235], rr1426);
         ("Bg_a", [r236], rr1427);("Bge", [r237], rr1428);
         ("Bge_a", [r238], rr1429);("Bgu", [r239], rr1430);
         ("Bgu_a", [r240], rr1431);("Bcc", [r241], rr1432);
         ("Bcc_a", [r242], rr1433);("Bpos", [r243], rr1434);
         ("Bpos_a", [r244], rr1435);("Bvc", [r245], rr1436);
         ("Bvc_a", [r246], rr1437);("Fbn", [r247], rr1438);
         ("Fbn_a", [r248], rr1439);("Fbne", [r249], rr1440);
         ("Fbne_a", [r250], rr1441);("Fblg", [r251], rr1442);
         ("Fblg_a", [r252], rr1443);("Fbul", [r253], rr1444);
         ("Fbul_a", [r254], rr1445);("Fbl", [r255], rr1446);
         ("Fbl_a", [r256], rr1447);("Fbug", [r257], rr1448);
         ("Fbug_a", [r258], rr1449);("Fbg", [r259], rr1450);
         ("Fbg_a", [r260], rr1451);("Fbu", [r261], rr1452);
         ("Fbu_a", [r262], rr1453);("Fba", [r263], rr1454);
         ("Fba_a", [r264], rr1455);("Fbe", [r265], rr1456);
         ("Fbe_a", [r266], rr1457);("Fbue", [r267], rr1458);
         ("Fbue_a", [r268], rr1459);("Fbge", [r269], rr1460);
         ("Fbge_a", [r270], rr1461);("Fbuge", [r271], rr1462);
         ("Fbuge_a", [r272], rr1463);("Fble", [r273], rr1464);
         ("Fble_a", [r274], rr1465);("Fbule", [r275], rr1466);
         ("Fbule_a", [r276], rr1467);("Fbo", [r277], rr1468);
         ("Fbo_a", [r278], rr1469);("Cbn", [r279], rr1470);
         ("Cbn_a", [r280], rr1471);("Cb123", [r281], rr1472);
         ("Cb123_a", [r282], rr1473);("Cb12", [r283], rr1474);
         ("Cb12_a", [r284], rr1475);("Cb13", [r285], rr1476);
         ("Cb13_a", [r286], rr1477);("Cb1", [r287], rr1478);
         ("Cb1_a", [r288], rr1479);("Cb23", [r289], rr1480);
         ("Cb23_a", [r290], rr1481);("Cb2", [r291], rr1482);
         ("Cb2_a", [r292], rr1483);("Cb3", [r293], rr1484);
         ("Cb3_a", [r294], rr1485);("Cba", [r295], rr1486);
         ("Cba_a", [r296], rr1487);("Cb0", [r297], rr1488);
         ("Cb0_a", [r298], rr1489);("Cb03", [r299], rr1490);
         ("Cb03_a", [r300], rr1491);("Cb02", [r301], rr1492);
         ("Cb02_a", [r302], rr1493);("Cb023", [r303], rr1494);
         ("Cb023_a", [r304], rr1495);("Cb01", [r305], rr1496);
         ("Cb01_a", [r306], rr1497);("Cb013", [r307], rr1498);
         ("Cb013_a", [r308], rr1499);("Cb012", [r309], rr1500);
         ("Cb012_a", [r310], rr1501);("Call", [r311], rr1502);
         ("Fmovs", [r312;r313], rr1503);("Fnegs", [r314;r315], rr1504);
         ("Fabss", [r316;r317], rr1505);
         ("Fsqrts", [r318;r319], rr1506);
         ("Fsqrtd", [r320;r321], rr1507);
         ("Fsqrtq", [r322;r323], rr1508);
         ("Fitos", [r324;r325], rr1509);("Fstoi", [r326;r327], rr1510);
         ("Fitod", [r328;r329], rr1511);("Fstod", [r330;r331], rr1512);
         ("Fitoq", [r332;r333], rr1513);("Fstoq", [r334;r335], rr1514);
         ("Fdtoi", [r336;r337], rr1515);("Fdtos", [r338;r339], rr1516);
         ("Fqtos", [r340;r341], rr1517);("Fqtoi", [r342;r343], rr1518);
         ("Fqtod", [r344;r345], rr1519);("Fdtoq", [r346;r347], rr1520);
         ("Fadds", [r348;r349;r350], rr1521);
         ("Fsubs", [r351;r352;r353], rr1522);
         ("Fmuls", [r354;r355;r356], rr1523);
         ("Fdivs", [r357;r358;r359], rr1524);
         ("Faddd", [r360;r361;r362], rr1525);
         ("Fsubd", [r363;r364;r365], rr1526);
         ("Fmuld", [r366;r367;r368], rr1527);
         ("Fdivd", [r369;r370;r371], rr1528);
         ("Faddq", [r372;r373;r374], rr1529);
         ("Fsubq", [r375;r376;r377], rr1530);
         ("Fmulq", [r378;r379;r380], rr1531);
         ("Fdivq", [r381;r382;r383], rr1532);
         ("Fsmuld", [r384;r385;r386], rr1533);
         ("Fdmulq", [r387;r388;r389], rr1534);
         ("Fcmps", [r390;r391], rr1535);
         ("Fcmpes", [r392;r393], rr1536);
         ("Fcmpd", [r394;r395], rr1537);
         ("Fcmped", [r396;r397], rr1538);
         ("Fcmpq", [r398;r399], rr1539);
         ("Fcmpeq", [r400;r401], rr1540);("Nop", [], rr1541);
         ("Flush", [r402], rr1542);("Jmpl", [r403;r404], rr1564);
         ("Rett", [r405], rr1586);("Tn", [r406], rr1608);
         ("Te", [r407], rr1630);("Tle", [r408], rr1652);
         ("Tl", [r409], rr1674);("Tleu", [r410], rr1696);
         ("Tcs", [r411], rr1718);("Tneg", [r412], rr1740);
         ("Tvs", [r413], rr1762);("Ta", [r414], rr1784);
         ("Tne", [r415], rr1806);("Tg", [r416], rr1828);
         ("Tge", [r417], rr1850);("Tgu", [r418], rr1872);
         ("Tcc", [r419], rr1894);("Tpos", [r420], rr1916);
         ("Tvc", [r421], rr1938);("Unimp", [r422], rr1960);
         ("Sethi", [r423;r424], rr1961);
         ("Decode_sethi", [r425;r426], rr1962);
         ("Set", [r427;r428], rr1963)])) in vv429
let reify_t =
fun x1 ->
  (match x1 with 
     | Ldsb (x2,x3) ->
    (match x2 with 
       | Generala (x429,x430) ->
      (match x430 with 
         | Imode (x437) ->
        Sy.XTRA (S.T__t (S.Ldsb
          ((Sy.XTRA (S.T__address (S.Generala
           (x429, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x437)))))))), x3)))
         | Rmode (x438) ->
        Sy.XTRA (S.T__t (S.Ldsb
          ((Sy.XTRA (S.T__address (S.Generala
           (x429, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x438)))))))), x3))))
       | Dispa (x431,x432) ->
      Sy.XTRA (S.T__t (S.Ldsb
        ((Sy.XTRA (S.T__address (S.Dispa (x431, x432)))), x3)))
       | Absolutea (x433) ->
      Sy.XTRA (S.T__t (S.Ldsb
        ((Sy.XTRA (S.T__address (S.Absolutea (x433)))), x3)))
       | Indexa (x434,x435) ->
      Sy.XTRA (S.T__t (S.Ldsb
        ((Sy.XTRA (S.T__address (S.Indexa (x434, x435)))), x3)))
       | Indirecta (x436) ->
      Sy.XTRA (S.T__t (S.Ldsb
        ((Sy.XTRA (S.T__address (S.Indirecta (x436)))), x3))))
     | Ldsh (x4,x5) ->
    (match x4 with 
       | Generala (x439,x440) ->
      (match x440 with 
         | Imode (x447) ->
        Sy.XTRA (S.T__t (S.Ldsh
          ((Sy.XTRA (S.T__address (S.Generala
           (x439, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x447)))))))), x5)))
         | Rmode (x448) ->
        Sy.XTRA (S.T__t (S.Ldsh
          ((Sy.XTRA (S.T__address (S.Generala
           (x439, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x448)))))))), x5))))
       | Dispa (x441,x442) ->
      Sy.XTRA (S.T__t (S.Ldsh
        ((Sy.XTRA (S.T__address (S.Dispa (x441, x442)))), x5)))
       | Absolutea (x443) ->
      Sy.XTRA (S.T__t (S.Ldsh
        ((Sy.XTRA (S.T__address (S.Absolutea (x443)))), x5)))
       | Indexa (x444,x445) ->
      Sy.XTRA (S.T__t (S.Ldsh
        ((Sy.XTRA (S.T__address (S.Indexa (x444, x445)))), x5)))
       | Indirecta (x446) ->
      Sy.XTRA (S.T__t (S.Ldsh
        ((Sy.XTRA (S.T__address (S.Indirecta (x446)))), x5))))
     | Ldub (x6,x7) ->
    (match x6 with 
       | Generala (x449,x450) ->
      (match x450 with 
         | Imode (x457) ->
        Sy.XTRA (S.T__t (S.Ldub
          ((Sy.XTRA (S.T__address (S.Generala
           (x449, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x457)))))))), x7)))
         | Rmode (x458) ->
        Sy.XTRA (S.T__t (S.Ldub
          ((Sy.XTRA (S.T__address (S.Generala
           (x449, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x458)))))))), x7))))
       | Dispa (x451,x452) ->
      Sy.XTRA (S.T__t (S.Ldub
        ((Sy.XTRA (S.T__address (S.Dispa (x451, x452)))), x7)))
       | Absolutea (x453) ->
      Sy.XTRA (S.T__t (S.Ldub
        ((Sy.XTRA (S.T__address (S.Absolutea (x453)))), x7)))
       | Indexa (x454,x455) ->
      Sy.XTRA (S.T__t (S.Ldub
        ((Sy.XTRA (S.T__address (S.Indexa (x454, x455)))), x7)))
       | Indirecta (x456) ->
      Sy.XTRA (S.T__t (S.Ldub
        ((Sy.XTRA (S.T__address (S.Indirecta (x456)))), x7))))
     | Lduh (x8,x9) ->
    (match x8 with 
       | Generala (x459,x460) ->
      (match x460 with 
         | Imode (x467) ->
        Sy.XTRA (S.T__t (S.Lduh
          ((Sy.XTRA (S.T__address (S.Generala
           (x459, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x467)))))))), x9)))
         | Rmode (x468) ->
        Sy.XTRA (S.T__t (S.Lduh
          ((Sy.XTRA (S.T__address (S.Generala
           (x459, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x468)))))))), x9))))
       | Dispa (x461,x462) ->
      Sy.XTRA (S.T__t (S.Lduh
        ((Sy.XTRA (S.T__address (S.Dispa (x461, x462)))), x9)))
       | Absolutea (x463) ->
      Sy.XTRA (S.T__t (S.Lduh
        ((Sy.XTRA (S.T__address (S.Absolutea (x463)))), x9)))
       | Indexa (x464,x465) ->
      Sy.XTRA (S.T__t (S.Lduh
        ((Sy.XTRA (S.T__address (S.Indexa (x464, x465)))), x9)))
       | Indirecta (x466) ->
      Sy.XTRA (S.T__t (S.Lduh
        ((Sy.XTRA (S.T__address (S.Indirecta (x466)))), x9))))
     | Ld (x10,x11) ->
    (match x10 with 
       | Generala (x469,x470) ->
      (match x470 with 
         | Imode (x477) ->
        Sy.XTRA (S.T__t (S.Ld
          ((Sy.XTRA (S.T__address (S.Generala
           (x469, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x477)))))))),
           x11)))
         | Rmode (x478) ->
        Sy.XTRA (S.T__t (S.Ld
          ((Sy.XTRA (S.T__address (S.Generala
           (x469, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x478)))))))),
           x11))))
       | Dispa (x471,x472) ->
      Sy.XTRA (S.T__t (S.Ld
        ((Sy.XTRA (S.T__address (S.Dispa (x471, x472)))), x11)))
       | Absolutea (x473) ->
      Sy.XTRA (S.T__t (S.Ld
        ((Sy.XTRA (S.T__address (S.Absolutea (x473)))), x11)))
       | Indexa (x474,x475) ->
      Sy.XTRA (S.T__t (S.Ld
        ((Sy.XTRA (S.T__address (S.Indexa (x474, x475)))), x11)))
       | Indirecta (x476) ->
      Sy.XTRA (S.T__t (S.Ld
        ((Sy.XTRA (S.T__address (S.Indirecta (x476)))), x11))))
     | Ldstub (x12,x13) ->
    (match x12 with 
       | Generala (x479,x480) ->
      (match x480 with 
         | Imode (x487) ->
        Sy.XTRA (S.T__t (S.Ldstub
          ((Sy.XTRA (S.T__address (S.Generala
           (x479, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x487)))))))),
           x13)))
         | Rmode (x488) ->
        Sy.XTRA (S.T__t (S.Ldstub
          ((Sy.XTRA (S.T__address (S.Generala
           (x479, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x488)))))))),
           x13))))
       | Dispa (x481,x482) ->
      Sy.XTRA (S.T__t (S.Ldstub
        ((Sy.XTRA (S.T__address (S.Dispa (x481, x482)))), x13)))
       | Absolutea (x483) ->
      Sy.XTRA (S.T__t (S.Ldstub
        ((Sy.XTRA (S.T__address (S.Absolutea (x483)))), x13)))
       | Indexa (x484,x485) ->
      Sy.XTRA (S.T__t (S.Ldstub
        ((Sy.XTRA (S.T__address (S.Indexa (x484, x485)))), x13)))
       | Indirecta (x486) ->
      Sy.XTRA (S.T__t (S.Ldstub
        ((Sy.XTRA (S.T__address (S.Indirecta (x486)))), x13))))
     | Swap_ (x14,x15) ->
    (match x14 with 
       | Generala (x489,x490) ->
      (match x490 with 
         | Imode (x497) ->
        Sy.XTRA (S.T__t (S.Swap_
          ((Sy.XTRA (S.T__address (S.Generala
           (x489, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x497)))))))),
           x15)))
         | Rmode (x498) ->
        Sy.XTRA (S.T__t (S.Swap_
          ((Sy.XTRA (S.T__address (S.Generala
           (x489, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x498)))))))),
           x15))))
       | Dispa (x491,x492) ->
      Sy.XTRA (S.T__t (S.Swap_
        ((Sy.XTRA (S.T__address (S.Dispa (x491, x492)))), x15)))
       | Absolutea (x493) ->
      Sy.XTRA (S.T__t (S.Swap_
        ((Sy.XTRA (S.T__address (S.Absolutea (x493)))), x15)))
       | Indexa (x494,x495) ->
      Sy.XTRA (S.T__t (S.Swap_
        ((Sy.XTRA (S.T__address (S.Indexa (x494, x495)))), x15)))
       | Indirecta (x496) ->
      Sy.XTRA (S.T__t (S.Swap_
        ((Sy.XTRA (S.T__address (S.Indirecta (x496)))), x15))))
     | Ldd (x16,x17) ->
    (match x16 with 
       | Generala (x499,x500) ->
      (match x500 with 
         | Imode (x507) ->
        Sy.XTRA (S.T__t (S.Ldd
          ((Sy.XTRA (S.T__address (S.Generala
           (x499, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x507)))))))),
           x17)))
         | Rmode (x508) ->
        Sy.XTRA (S.T__t (S.Ldd
          ((Sy.XTRA (S.T__address (S.Generala
           (x499, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x508)))))))),
           x17))))
       | Dispa (x501,x502) ->
      Sy.XTRA (S.T__t (S.Ldd
        ((Sy.XTRA (S.T__address (S.Dispa (x501, x502)))), x17)))
       | Absolutea (x503) ->
      Sy.XTRA (S.T__t (S.Ldd
        ((Sy.XTRA (S.T__address (S.Absolutea (x503)))), x17)))
       | Indexa (x504,x505) ->
      Sy.XTRA (S.T__t (S.Ldd
        ((Sy.XTRA (S.T__address (S.Indexa (x504, x505)))), x17)))
       | Indirecta (x506) ->
      Sy.XTRA (S.T__t (S.Ldd
        ((Sy.XTRA (S.T__address (S.Indirecta (x506)))), x17))))
     | Ldf (x18,x19) ->
    (match x18 with 
       | Generala (x509,x510) ->
      (match x510 with 
         | Imode (x517) ->
        Sy.XTRA (S.T__t (S.Ldf
          ((Sy.XTRA (S.T__address (S.Generala
           (x509, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x517)))))))),
           x19)))
         | Rmode (x518) ->
        Sy.XTRA (S.T__t (S.Ldf
          ((Sy.XTRA (S.T__address (S.Generala
           (x509, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x518)))))))),
           x19))))
       | Dispa (x511,x512) ->
      Sy.XTRA (S.T__t (S.Ldf
        ((Sy.XTRA (S.T__address (S.Dispa (x511, x512)))), x19)))
       | Absolutea (x513) ->
      Sy.XTRA (S.T__t (S.Ldf
        ((Sy.XTRA (S.T__address (S.Absolutea (x513)))), x19)))
       | Indexa (x514,x515) ->
      Sy.XTRA (S.T__t (S.Ldf
        ((Sy.XTRA (S.T__address (S.Indexa (x514, x515)))), x19)))
       | Indirecta (x516) ->
      Sy.XTRA (S.T__t (S.Ldf
        ((Sy.XTRA (S.T__address (S.Indirecta (x516)))), x19))))
     | Lddf (x20,x21) ->
    (match x20 with 
       | Generala (x519,x520) ->
      (match x520 with 
         | Imode (x527) ->
        Sy.XTRA (S.T__t (S.Lddf
          ((Sy.XTRA (S.T__address (S.Generala
           (x519, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x527)))))))),
           x21)))
         | Rmode (x528) ->
        Sy.XTRA (S.T__t (S.Lddf
          ((Sy.XTRA (S.T__address (S.Generala
           (x519, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x528)))))))),
           x21))))
       | Dispa (x521,x522) ->
      Sy.XTRA (S.T__t (S.Lddf
        ((Sy.XTRA (S.T__address (S.Dispa (x521, x522)))), x21)))
       | Absolutea (x523) ->
      Sy.XTRA (S.T__t (S.Lddf
        ((Sy.XTRA (S.T__address (S.Absolutea (x523)))), x21)))
       | Indexa (x524,x525) ->
      Sy.XTRA (S.T__t (S.Lddf
        ((Sy.XTRA (S.T__address (S.Indexa (x524, x525)))), x21)))
       | Indirecta (x526) ->
      Sy.XTRA (S.T__t (S.Lddf
        ((Sy.XTRA (S.T__address (S.Indirecta (x526)))), x21))))
     | Ldc (x22,x23) ->
    (match x22 with 
       | Generala (x529,x530) ->
      (match x530 with 
         | Imode (x537) ->
        Sy.XTRA (S.T__t (S.Ldc
          ((Sy.XTRA (S.T__address (S.Generala
           (x529, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x537)))))))),
           x23)))
         | Rmode (x538) ->
        Sy.XTRA (S.T__t (S.Ldc
          ((Sy.XTRA (S.T__address (S.Generala
           (x529, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x538)))))))),
           x23))))
       | Dispa (x531,x532) ->
      Sy.XTRA (S.T__t (S.Ldc
        ((Sy.XTRA (S.T__address (S.Dispa (x531, x532)))), x23)))
       | Absolutea (x533) ->
      Sy.XTRA (S.T__t (S.Ldc
        ((Sy.XTRA (S.T__address (S.Absolutea (x533)))), x23)))
       | Indexa (x534,x535) ->
      Sy.XTRA (S.T__t (S.Ldc
        ((Sy.XTRA (S.T__address (S.Indexa (x534, x535)))), x23)))
       | Indirecta (x536) ->
      Sy.XTRA (S.T__t (S.Ldc
        ((Sy.XTRA (S.T__address (S.Indirecta (x536)))), x23))))
     | Lddc (x24,x25) ->
    (match x24 with 
       | Generala (x539,x540) ->
      (match x540 with 
         | Imode (x547) ->
        Sy.XTRA (S.T__t (S.Lddc
          ((Sy.XTRA (S.T__address (S.Generala
           (x539, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x547)))))))),
           x25)))
         | Rmode (x548) ->
        Sy.XTRA (S.T__t (S.Lddc
          ((Sy.XTRA (S.T__address (S.Generala
           (x539, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x548)))))))),
           x25))))
       | Dispa (x541,x542) ->
      Sy.XTRA (S.T__t (S.Lddc
        ((Sy.XTRA (S.T__address (S.Dispa (x541, x542)))), x25)))
       | Absolutea (x543) ->
      Sy.XTRA (S.T__t (S.Lddc
        ((Sy.XTRA (S.T__address (S.Absolutea (x543)))), x25)))
       | Indexa (x544,x545) ->
      Sy.XTRA (S.T__t (S.Lddc
        ((Sy.XTRA (S.T__address (S.Indexa (x544, x545)))), x25)))
       | Indirecta (x546) ->
      Sy.XTRA (S.T__t (S.Lddc
        ((Sy.XTRA (S.T__address (S.Indirecta (x546)))), x25))))
     | Stb (x26,x27) ->
    (match x27 with 
       | Generala (x549,x550) ->
      (match x550 with 
         | Imode (x557) ->
        Sy.XTRA (S.T__t (S.Stb
          (x26, (Sy.XTRA (S.T__address (S.Generala
           (x549, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x557)))))))))))
         | Rmode (x558) ->
        Sy.XTRA (S.T__t (S.Stb
          (x26, (Sy.XTRA (S.T__address (S.Generala
           (x549, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x558))))))))))))
       | Dispa (x551,x552) ->
      Sy.XTRA (S.T__t (S.Stb
        (x26, (Sy.XTRA (S.T__address (S.Dispa (x551, x552)))))))
       | Absolutea (x553) ->
      Sy.XTRA (S.T__t (S.Stb
        (x26, (Sy.XTRA (S.T__address (S.Absolutea (x553)))))))
       | Indexa (x554,x555) ->
      Sy.XTRA (S.T__t (S.Stb
        (x26, (Sy.XTRA (S.T__address (S.Indexa (x554, x555)))))))
       | Indirecta (x556) ->
      Sy.XTRA (S.T__t (S.Stb
        (x26, (Sy.XTRA (S.T__address (S.Indirecta (x556))))))))
     | Sth (x28,x29) ->
    (match x29 with 
       | Generala (x559,x560) ->
      (match x560 with 
         | Imode (x567) ->
        Sy.XTRA (S.T__t (S.Sth
          (x28, (Sy.XTRA (S.T__address (S.Generala
           (x559, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x567)))))))))))
         | Rmode (x568) ->
        Sy.XTRA (S.T__t (S.Sth
          (x28, (Sy.XTRA (S.T__address (S.Generala
           (x559, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x568))))))))))))
       | Dispa (x561,x562) ->
      Sy.XTRA (S.T__t (S.Sth
        (x28, (Sy.XTRA (S.T__address (S.Dispa (x561, x562)))))))
       | Absolutea (x563) ->
      Sy.XTRA (S.T__t (S.Sth
        (x28, (Sy.XTRA (S.T__address (S.Absolutea (x563)))))))
       | Indexa (x564,x565) ->
      Sy.XTRA (S.T__t (S.Sth
        (x28, (Sy.XTRA (S.T__address (S.Indexa (x564, x565)))))))
       | Indirecta (x566) ->
      Sy.XTRA (S.T__t (S.Sth
        (x28, (Sy.XTRA (S.T__address (S.Indirecta (x566))))))))
     | St (x30,x31) ->
    (match x31 with 
       | Generala (x569,x570) ->
      (match x570 with 
         | Imode (x577) ->
        Sy.XTRA (S.T__t (S.St
          (x30, (Sy.XTRA (S.T__address (S.Generala
           (x569, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x577)))))))))))
         | Rmode (x578) ->
        Sy.XTRA (S.T__t (S.St
          (x30, (Sy.XTRA (S.T__address (S.Generala
           (x569, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x578))))))))))))
       | Dispa (x571,x572) ->
      Sy.XTRA (S.T__t (S.St
        (x30, (Sy.XTRA (S.T__address (S.Dispa (x571, x572)))))))
       | Absolutea (x573) ->
      Sy.XTRA (S.T__t (S.St
        (x30, (Sy.XTRA (S.T__address (S.Absolutea (x573)))))))
       | Indexa (x574,x575) ->
      Sy.XTRA (S.T__t (S.St
        (x30, (Sy.XTRA (S.T__address (S.Indexa (x574, x575)))))))
       | Indirecta (x576) ->
      Sy.XTRA (S.T__t (S.St
        (x30, (Sy.XTRA (S.T__address (S.Indirecta (x576))))))))
     | Std (x32,x33) ->
    (match x33 with 
       | Generala (x579,x580) ->
      (match x580 with 
         | Imode (x587) ->
        Sy.XTRA (S.T__t (S.Std
          (x32, (Sy.XTRA (S.T__address (S.Generala
           (x579, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x587)))))))))))
         | Rmode (x588) ->
        Sy.XTRA (S.T__t (S.Std
          (x32, (Sy.XTRA (S.T__address (S.Generala
           (x579, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x588))))))))))))
       | Dispa (x581,x582) ->
      Sy.XTRA (S.T__t (S.Std
        (x32, (Sy.XTRA (S.T__address (S.Dispa (x581, x582)))))))
       | Absolutea (x583) ->
      Sy.XTRA (S.T__t (S.Std
        (x32, (Sy.XTRA (S.T__address (S.Absolutea (x583)))))))
       | Indexa (x584,x585) ->
      Sy.XTRA (S.T__t (S.Std
        (x32, (Sy.XTRA (S.T__address (S.Indexa (x584, x585)))))))
       | Indirecta (x586) ->
      Sy.XTRA (S.T__t (S.Std
        (x32, (Sy.XTRA (S.T__address (S.Indirecta (x586))))))))
     | Stf (x34,x35) ->
    (match x35 with 
       | Generala (x589,x590) ->
      (match x590 with 
         | Imode (x597) ->
        Sy.XTRA (S.T__t (S.Stf
          (x34, (Sy.XTRA (S.T__address (S.Generala
           (x589, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x597)))))))))))
         | Rmode (x598) ->
        Sy.XTRA (S.T__t (S.Stf
          (x34, (Sy.XTRA (S.T__address (S.Generala
           (x589, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x598))))))))))))
       | Dispa (x591,x592) ->
      Sy.XTRA (S.T__t (S.Stf
        (x34, (Sy.XTRA (S.T__address (S.Dispa (x591, x592)))))))
       | Absolutea (x593) ->
      Sy.XTRA (S.T__t (S.Stf
        (x34, (Sy.XTRA (S.T__address (S.Absolutea (x593)))))))
       | Indexa (x594,x595) ->
      Sy.XTRA (S.T__t (S.Stf
        (x34, (Sy.XTRA (S.T__address (S.Indexa (x594, x595)))))))
       | Indirecta (x596) ->
      Sy.XTRA (S.T__t (S.Stf
        (x34, (Sy.XTRA (S.T__address (S.Indirecta (x596))))))))
     | Stdf (x36,x37) ->
    (match x37 with 
       | Generala (x599,x600) ->
      (match x600 with 
         | Imode (x607) ->
        Sy.XTRA (S.T__t (S.Stdf
          (x36, (Sy.XTRA (S.T__address (S.Generala
           (x599, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x607)))))))))))
         | Rmode (x608) ->
        Sy.XTRA (S.T__t (S.Stdf
          (x36, (Sy.XTRA (S.T__address (S.Generala
           (x599, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x608))))))))))))
       | Dispa (x601,x602) ->
      Sy.XTRA (S.T__t (S.Stdf
        (x36, (Sy.XTRA (S.T__address (S.Dispa (x601, x602)))))))
       | Absolutea (x603) ->
      Sy.XTRA (S.T__t (S.Stdf
        (x36, (Sy.XTRA (S.T__address (S.Absolutea (x603)))))))
       | Indexa (x604,x605) ->
      Sy.XTRA (S.T__t (S.Stdf
        (x36, (Sy.XTRA (S.T__address (S.Indexa (x604, x605)))))))
       | Indirecta (x606) ->
      Sy.XTRA (S.T__t (S.Stdf
        (x36, (Sy.XTRA (S.T__address (S.Indirecta (x606))))))))
     | Stc (x38,x39) ->
    (match x39 with 
       | Generala (x609,x610) ->
      (match x610 with 
         | Imode (x617) ->
        Sy.XTRA (S.T__t (S.Stc
          (x38, (Sy.XTRA (S.T__address (S.Generala
           (x609, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x617)))))))))))
         | Rmode (x618) ->
        Sy.XTRA (S.T__t (S.Stc
          (x38, (Sy.XTRA (S.T__address (S.Generala
           (x609, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x618))))))))))))
       | Dispa (x611,x612) ->
      Sy.XTRA (S.T__t (S.Stc
        (x38, (Sy.XTRA (S.T__address (S.Dispa (x611, x612)))))))
       | Absolutea (x613) ->
      Sy.XTRA (S.T__t (S.Stc
        (x38, (Sy.XTRA (S.T__address (S.Absolutea (x613)))))))
       | Indexa (x614,x615) ->
      Sy.XTRA (S.T__t (S.Stc
        (x38, (Sy.XTRA (S.T__address (S.Indexa (x614, x615)))))))
       | Indirecta (x616) ->
      Sy.XTRA (S.T__t (S.Stc
        (x38, (Sy.XTRA (S.T__address (S.Indirecta (x616))))))))
     | Stdc (x40,x41) ->
    (match x41 with 
       | Generala (x619,x620) ->
      (match x620 with 
         | Imode (x627) ->
        Sy.XTRA (S.T__t (S.Stdc
          (x40, (Sy.XTRA (S.T__address (S.Generala
           (x619, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x627)))))))))))
         | Rmode (x628) ->
        Sy.XTRA (S.T__t (S.Stdc
          (x40, (Sy.XTRA (S.T__address (S.Generala
           (x619, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x628))))))))))))
       | Dispa (x621,x622) ->
      Sy.XTRA (S.T__t (S.Stdc
        (x40, (Sy.XTRA (S.T__address (S.Dispa (x621, x622)))))))
       | Absolutea (x623) ->
      Sy.XTRA (S.T__t (S.Stdc
        (x40, (Sy.XTRA (S.T__address (S.Absolutea (x623)))))))
       | Indexa (x624,x625) ->
      Sy.XTRA (S.T__t (S.Stdc
        (x40, (Sy.XTRA (S.T__address (S.Indexa (x624, x625)))))))
       | Indirecta (x626) ->
      Sy.XTRA (S.T__t (S.Stdc
        (x40, (Sy.XTRA (S.T__address (S.Indirecta (x626))))))))
     | Ldsba (x42,x43,x44) ->
    (match x42 with 
       | Indexr (x629,x630) ->
      Sy.XTRA (S.T__t (S.Ldsba
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x629, x630)))), x43, x44)))
       | Indirectr (x631) ->
      Sy.XTRA (S.T__t (S.Ldsba
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x631)))), x43, x44))))
     | Ldsha (x45,x46,x47) ->
    (match x45 with 
       | Indexr (x632,x633) ->
      Sy.XTRA (S.T__t (S.Ldsha
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x632, x633)))), x46, x47)))
       | Indirectr (x634) ->
      Sy.XTRA (S.T__t (S.Ldsha
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x634)))), x46, x47))))
     | Lduba (x48,x49,x50) ->
    (match x48 with 
       | Indexr (x635,x636) ->
      Sy.XTRA (S.T__t (S.Lduba
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x635, x636)))), x49, x50)))
       | Indirectr (x637) ->
      Sy.XTRA (S.T__t (S.Lduba
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x637)))), x49, x50))))
     | Lduha (x51,x52,x53) ->
    (match x51 with 
       | Indexr (x638,x639) ->
      Sy.XTRA (S.T__t (S.Lduha
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x638, x639)))), x52, x53)))
       | Indirectr (x640) ->
      Sy.XTRA (S.T__t (S.Lduha
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x640)))), x52, x53))))
     | Lda (x54,x55,x56) ->
    (match x54 with 
       | Indexr (x641,x642) ->
      Sy.XTRA (S.T__t (S.Lda
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x641, x642)))), x55, x56)))
       | Indirectr (x643) ->
      Sy.XTRA (S.T__t (S.Lda
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x643)))), x55, x56))))
     | Ldstuba (x57,x58,x59) ->
    (match x57 with 
       | Indexr (x644,x645) ->
      Sy.XTRA (S.T__t (S.Ldstuba
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x644, x645)))), x58, x59)))
       | Indirectr (x646) ->
      Sy.XTRA (S.T__t (S.Ldstuba
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x646)))), x58, x59))))
     | Swapa (x60,x61,x62) ->
    (match x60 with 
       | Indexr (x647,x648) ->
      Sy.XTRA (S.T__t (S.Swapa
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x647, x648)))), x61, x62)))
       | Indirectr (x649) ->
      Sy.XTRA (S.T__t (S.Swapa
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x649)))), x61, x62))))
     | Ldda (x63,x64,x65) ->
    (match x63 with 
       | Indexr (x650,x651) ->
      Sy.XTRA (S.T__t (S.Ldda
        ((Sy.XTRA (S.T__regaddr (S.Indexr (x650, x651)))), x64, x65)))
       | Indirectr (x652) ->
      Sy.XTRA (S.T__t (S.Ldda
        ((Sy.XTRA (S.T__regaddr (S.Indirectr (x652)))), x64, x65))))
     | Stba (x66,x67,x68) ->
    (match x67 with 
       | Indexr (x653,x654) ->
      Sy.XTRA (S.T__t (S.Stba
        (x66, (Sy.XTRA (S.T__regaddr (S.Indexr (x653, x654)))), x68)))
       | Indirectr (x655) ->
      Sy.XTRA (S.T__t (S.Stba
        (x66, (Sy.XTRA (S.T__regaddr (S.Indirectr (x655)))), x68))))
     | Stha (x69,x70,x71) ->
    (match x70 with 
       | Indexr (x656,x657) ->
      Sy.XTRA (S.T__t (S.Stha
        (x69, (Sy.XTRA (S.T__regaddr (S.Indexr (x656, x657)))), x71)))
       | Indirectr (x658) ->
      Sy.XTRA (S.T__t (S.Stha
        (x69, (Sy.XTRA (S.T__regaddr (S.Indirectr (x658)))), x71))))
     | Sta (x72,x73,x74) ->
    (match x73 with 
       | Indexr (x659,x660) ->
      Sy.XTRA (S.T__t (S.Sta
        (x72, (Sy.XTRA (S.T__regaddr (S.Indexr (x659, x660)))), x74)))
       | Indirectr (x661) ->
      Sy.XTRA (S.T__t (S.Sta
        (x72, (Sy.XTRA (S.T__regaddr (S.Indirectr (x661)))), x74))))
     | Stda (x75,x76,x77) ->
    (match x76 with 
       | Indexr (x662,x663) ->
      Sy.XTRA (S.T__t (S.Stda
        (x75, (Sy.XTRA (S.T__regaddr (S.Indexr (x662, x663)))), x77)))
       | Indirectr (x664) ->
      Sy.XTRA (S.T__t (S.Stda
        (x75, (Sy.XTRA (S.T__regaddr (S.Indirectr (x664)))), x77))))
     | Ldfsr (x78) ->
    (match x78 with 
       | Generala (x665,x666) ->
      (match x666 with 
         | Imode (x673) ->
        Sy.XTRA (S.T__t (S.Ldfsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x665, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x673)))))))))))
         | Rmode (x674) ->
        Sy.XTRA (S.T__t (S.Ldfsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x665, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x674))))))))))))
       | Dispa (x667,x668) ->
      Sy.XTRA (S.T__t (S.Ldfsr
        ((Sy.XTRA (S.T__address (S.Dispa (x667, x668)))))))
       | Absolutea (x669) ->
      Sy.XTRA (S.T__t (S.Ldfsr
        ((Sy.XTRA (S.T__address (S.Absolutea (x669)))))))
       | Indexa (x670,x671) ->
      Sy.XTRA (S.T__t (S.Ldfsr
        ((Sy.XTRA (S.T__address (S.Indexa (x670, x671)))))))
       | Indirecta (x672) ->
      Sy.XTRA (S.T__t (S.Ldfsr
        ((Sy.XTRA (S.T__address (S.Indirecta (x672))))))))
     | Ldcsr (x79) ->
    (match x79 with 
       | Generala (x675,x676) ->
      (match x676 with 
         | Imode (x683) ->
        Sy.XTRA (S.T__t (S.Ldcsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x675, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x683)))))))))))
         | Rmode (x684) ->
        Sy.XTRA (S.T__t (S.Ldcsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x675, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x684))))))))))))
       | Dispa (x677,x678) ->
      Sy.XTRA (S.T__t (S.Ldcsr
        ((Sy.XTRA (S.T__address (S.Dispa (x677, x678)))))))
       | Absolutea (x679) ->
      Sy.XTRA (S.T__t (S.Ldcsr
        ((Sy.XTRA (S.T__address (S.Absolutea (x679)))))))
       | Indexa (x680,x681) ->
      Sy.XTRA (S.T__t (S.Ldcsr
        ((Sy.XTRA (S.T__address (S.Indexa (x680, x681)))))))
       | Indirecta (x682) ->
      Sy.XTRA (S.T__t (S.Ldcsr
        ((Sy.XTRA (S.T__address (S.Indirecta (x682))))))))
     | Stfsr (x80) ->
    (match x80 with 
       | Generala (x685,x686) ->
      (match x686 with 
         | Imode (x693) ->
        Sy.XTRA (S.T__t (S.Stfsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x685, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x693)))))))))))
         | Rmode (x694) ->
        Sy.XTRA (S.T__t (S.Stfsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x685, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x694))))))))))))
       | Dispa (x687,x688) ->
      Sy.XTRA (S.T__t (S.Stfsr
        ((Sy.XTRA (S.T__address (S.Dispa (x687, x688)))))))
       | Absolutea (x689) ->
      Sy.XTRA (S.T__t (S.Stfsr
        ((Sy.XTRA (S.T__address (S.Absolutea (x689)))))))
       | Indexa (x690,x691) ->
      Sy.XTRA (S.T__t (S.Stfsr
        ((Sy.XTRA (S.T__address (S.Indexa (x690, x691)))))))
       | Indirecta (x692) ->
      Sy.XTRA (S.T__t (S.Stfsr
        ((Sy.XTRA (S.T__address (S.Indirecta (x692))))))))
     | Stcsr (x81) ->
    (match x81 with 
       | Generala (x695,x696) ->
      (match x696 with 
         | Imode (x703) ->
        Sy.XTRA (S.T__t (S.Stcsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x695, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x703)))))))))))
         | Rmode (x704) ->
        Sy.XTRA (S.T__t (S.Stcsr
          ((Sy.XTRA (S.T__address (S.Generala
           (x695, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x704))))))))))))
       | Dispa (x697,x698) ->
      Sy.XTRA (S.T__t (S.Stcsr
        ((Sy.XTRA (S.T__address (S.Dispa (x697, x698)))))))
       | Absolutea (x699) ->
      Sy.XTRA (S.T__t (S.Stcsr
        ((Sy.XTRA (S.T__address (S.Absolutea (x699)))))))
       | Indexa (x700,x701) ->
      Sy.XTRA (S.T__t (S.Stcsr
        ((Sy.XTRA (S.T__address (S.Indexa (x700, x701)))))))
       | Indirecta (x702) ->
      Sy.XTRA (S.T__t (S.Stcsr
        ((Sy.XTRA (S.T__address (S.Indirecta (x702))))))))
     | Stdfq (x82) ->
    (match x82 with 
       | Generala (x705,x706) ->
      (match x706 with 
         | Imode (x713) ->
        Sy.XTRA (S.T__t (S.Stdfq
          ((Sy.XTRA (S.T__address (S.Generala
           (x705, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x713)))))))))))
         | Rmode (x714) ->
        Sy.XTRA (S.T__t (S.Stdfq
          ((Sy.XTRA (S.T__address (S.Generala
           (x705, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x714))))))))))))
       | Dispa (x707,x708) ->
      Sy.XTRA (S.T__t (S.Stdfq
        ((Sy.XTRA (S.T__address (S.Dispa (x707, x708)))))))
       | Absolutea (x709) ->
      Sy.XTRA (S.T__t (S.Stdfq
        ((Sy.XTRA (S.T__address (S.Absolutea (x709)))))))
       | Indexa (x710,x711) ->
      Sy.XTRA (S.T__t (S.Stdfq
        ((Sy.XTRA (S.T__address (S.Indexa (x710, x711)))))))
       | Indirecta (x712) ->
      Sy.XTRA (S.T__t (S.Stdfq
        ((Sy.XTRA (S.T__address (S.Indirecta (x712))))))))
     | Stdcq (x83) ->
    (match x83 with 
       | Generala (x715,x716) ->
      (match x716 with 
         | Imode (x723) ->
        Sy.XTRA (S.T__t (S.Stdcq
          ((Sy.XTRA (S.T__address (S.Generala
           (x715, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x723)))))))))))
         | Rmode (x724) ->
        Sy.XTRA (S.T__t (S.Stdcq
          ((Sy.XTRA (S.T__address (S.Generala
           (x715, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x724))))))))))))
       | Dispa (x717,x718) ->
      Sy.XTRA (S.T__t (S.Stdcq
        ((Sy.XTRA (S.T__address (S.Dispa (x717, x718)))))))
       | Absolutea (x719) ->
      Sy.XTRA (S.T__t (S.Stdcq
        ((Sy.XTRA (S.T__address (S.Absolutea (x719)))))))
       | Indexa (x720,x721) ->
      Sy.XTRA (S.T__t (S.Stdcq
        ((Sy.XTRA (S.T__address (S.Indexa (x720, x721)))))))
       | Indirecta (x722) ->
      Sy.XTRA (S.T__t (S.Stdcq
        ((Sy.XTRA (S.T__address (S.Indirecta (x722))))))))
     | Rdy (x84) -> Sy.XTRA (S.T__t (S.Rdy (x84)))
     | Rdpsr (x85) -> Sy.XTRA (S.T__t (S.Rdpsr (x85)))
     | Rdwim (x86) -> Sy.XTRA (S.T__t (S.Rdwim (x86)))
     | Rdtbr (x87) -> Sy.XTRA (S.T__t (S.Rdtbr (x87)))
     | Wry (x88,x89) ->
    (match x89 with 
       | Imode (x725) ->
      Sy.XTRA (S.T__t (S.Wry
        (x88, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x725)))))))
       | Rmode (x726) ->
      Sy.XTRA (S.T__t (S.Wry
        (x88, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x726))))))))
     | Wrpsr (x90,x91) ->
    (match x91 with 
       | Imode (x727) ->
      Sy.XTRA (S.T__t (S.Wrpsr
        (x90, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x727)))))))
       | Rmode (x728) ->
      Sy.XTRA (S.T__t (S.Wrpsr
        (x90, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x728))))))))
     | Wrwim (x92,x93) ->
    (match x93 with 
       | Imode (x729) ->
      Sy.XTRA (S.T__t (S.Wrwim
        (x92, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x729)))))))
       | Rmode (x730) ->
      Sy.XTRA (S.T__t (S.Wrwim
        (x92, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x730))))))))
     | Wrtbr (x94,x95) ->
    (match x95 with 
       | Imode (x731) ->
      Sy.XTRA (S.T__t (S.Wrtbr
        (x94, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x731)))))))
       | Rmode (x732) ->
      Sy.XTRA (S.T__t (S.Wrtbr
        (x94, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x732))))))))
     | Rdasr (x96,x97) -> Sy.XTRA (S.T__t (S.Rdasr (x96, x97)))
     | Wrasr (x98,x99,x100) ->
    (match x99 with 
       | Imode (x733) ->
      Sy.XTRA (S.T__t (S.Wrasr
        (x98, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x733)))), x100)))
       | Rmode (x734) ->
      Sy.XTRA (S.T__t (S.Wrasr
        (x98, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x734)))), x100))))
     | Stbar () -> Sy.XTRA (S.T__t (S.Stbar ()))
     | And (x101,x102,x103) ->
    (match x102 with 
       | Imode (x735) ->
      Sy.XTRA (S.T__t (S.And
        (x101, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x735)))), x103)))
       | Rmode (x736) ->
      Sy.XTRA (S.T__t (S.And
        (x101, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x736)))), x103))))
     | Andcc (x104,x105,x106) ->
    (match x105 with 
       | Imode (x737) ->
      Sy.XTRA (S.T__t (S.Andcc
        (x104, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x737)))), x106)))
       | Rmode (x738) ->
      Sy.XTRA (S.T__t (S.Andcc
        (x104, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x738)))), x106))))
     | Andn (x107,x108,x109) ->
    (match x108 with 
       | Imode (x739) ->
      Sy.XTRA (S.T__t (S.Andn
        (x107, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x739)))), x109)))
       | Rmode (x740) ->
      Sy.XTRA (S.T__t (S.Andn
        (x107, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x740)))), x109))))
     | Andncc (x110,x111,x112) ->
    (match x111 with 
       | Imode (x741) ->
      Sy.XTRA (S.T__t (S.Andncc
        (x110, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x741)))), x112)))
       | Rmode (x742) ->
      Sy.XTRA (S.T__t (S.Andncc
        (x110, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x742)))), x112))))
     | Or (x113,x114,x115) ->
    (match x114 with 
       | Imode (x743) ->
      Sy.XTRA (S.T__t (S.Or
        (x113, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x743)))), x115)))
       | Rmode (x744) ->
      Sy.XTRA (S.T__t (S.Or
        (x113, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x744)))), x115))))
     | Orcc (x116,x117,x118) ->
    (match x117 with 
       | Imode (x745) ->
      Sy.XTRA (S.T__t (S.Orcc
        (x116, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x745)))), x118)))
       | Rmode (x746) ->
      Sy.XTRA (S.T__t (S.Orcc
        (x116, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x746)))), x118))))
     | Orn (x119,x120,x121) ->
    (match x120 with 
       | Imode (x747) ->
      Sy.XTRA (S.T__t (S.Orn
        (x119, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x747)))), x121)))
       | Rmode (x748) ->
      Sy.XTRA (S.T__t (S.Orn
        (x119, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x748)))), x121))))
     | Orncc (x122,x123,x124) ->
    (match x123 with 
       | Imode (x749) ->
      Sy.XTRA (S.T__t (S.Orncc
        (x122, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x749)))), x124)))
       | Rmode (x750) ->
      Sy.XTRA (S.T__t (S.Orncc
        (x122, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x750)))), x124))))
     | Xor (x125,x126,x127) ->
    (match x126 with 
       | Imode (x751) ->
      Sy.XTRA (S.T__t (S.Xor
        (x125, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x751)))), x127)))
       | Rmode (x752) ->
      Sy.XTRA (S.T__t (S.Xor
        (x125, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x752)))), x127))))
     | Xorcc (x128,x129,x130) ->
    (match x129 with 
       | Imode (x753) ->
      Sy.XTRA (S.T__t (S.Xorcc
        (x128, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x753)))), x130)))
       | Rmode (x754) ->
      Sy.XTRA (S.T__t (S.Xorcc
        (x128, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x754)))), x130))))
     | Xnor (x131,x132,x133) ->
    (match x132 with 
       | Imode (x755) ->
      Sy.XTRA (S.T__t (S.Xnor
        (x131, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x755)))), x133)))
       | Rmode (x756) ->
      Sy.XTRA (S.T__t (S.Xnor
        (x131, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x756)))), x133))))
     | Xnorcc (x134,x135,x136) ->
    (match x135 with 
       | Imode (x757) ->
      Sy.XTRA (S.T__t (S.Xnorcc
        (x134, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x757)))), x136)))
       | Rmode (x758) ->
      Sy.XTRA (S.T__t (S.Xnorcc
        (x134, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x758)))), x136))))
     | Sll (x137,x138,x139) ->
    (match x138 with 
       | Imode (x759) ->
      Sy.XTRA (S.T__t (S.Sll
        (x137, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x759)))), x139)))
       | Rmode (x760) ->
      Sy.XTRA (S.T__t (S.Sll
        (x137, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x760)))), x139))))
     | Srl (x140,x141,x142) ->
    (match x141 with 
       | Imode (x761) ->
      Sy.XTRA (S.T__t (S.Srl
        (x140, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x761)))), x142)))
       | Rmode (x762) ->
      Sy.XTRA (S.T__t (S.Srl
        (x140, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x762)))), x142))))
     | Sra (x143,x144,x145) ->
    (match x144 with 
       | Imode (x763) ->
      Sy.XTRA (S.T__t (S.Sra
        (x143, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x763)))), x145)))
       | Rmode (x764) ->
      Sy.XTRA (S.T__t (S.Sra
        (x143, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x764)))), x145))))
     | Add (x146,x147,x148) ->
    (match x147 with 
       | Imode (x765) ->
      Sy.XTRA (S.T__t (S.Add
        (x146, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x765)))), x148)))
       | Rmode (x766) ->
      Sy.XTRA (S.T__t (S.Add
        (x146, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x766)))), x148))))
     | Addcc (x149,x150,x151) ->
    (match x150 with 
       | Imode (x767) ->
      Sy.XTRA (S.T__t (S.Addcc
        (x149, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x767)))), x151)))
       | Rmode (x768) ->
      Sy.XTRA (S.T__t (S.Addcc
        (x149, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x768)))), x151))))
     | Addx (x152,x153,x154) ->
    (match x153 with 
       | Imode (x769) ->
      Sy.XTRA (S.T__t (S.Addx
        (x152, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x769)))), x154)))
       | Rmode (x770) ->
      Sy.XTRA (S.T__t (S.Addx
        (x152, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x770)))), x154))))
     | Addxcc (x155,x156,x157) ->
    (match x156 with 
       | Imode (x771) ->
      Sy.XTRA (S.T__t (S.Addxcc
        (x155, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x771)))), x157)))
       | Rmode (x772) ->
      Sy.XTRA (S.T__t (S.Addxcc
        (x155, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x772)))), x157))))
     | Taddcc (x158,x159,x160) ->
    (match x159 with 
       | Imode (x773) ->
      Sy.XTRA (S.T__t (S.Taddcc
        (x158, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x773)))), x160)))
       | Rmode (x774) ->
      Sy.XTRA (S.T__t (S.Taddcc
        (x158, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x774)))), x160))))
     | Taddcctv (x161,x162,x163) ->
    (match x162 with 
       | Imode (x775) ->
      Sy.XTRA (S.T__t (S.Taddcctv
        (x161, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x775)))), x163)))
       | Rmode (x776) ->
      Sy.XTRA (S.T__t (S.Taddcctv
        (x161, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x776)))), x163))))
     | Sub (x164,x165,x166) ->
    (match x165 with 
       | Imode (x777) ->
      Sy.XTRA (S.T__t (S.Sub
        (x164, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x777)))), x166)))
       | Rmode (x778) ->
      Sy.XTRA (S.T__t (S.Sub
        (x164, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x778)))), x166))))
     | Subcc (x167,x168,x169) ->
    (match x168 with 
       | Imode (x779) ->
      Sy.XTRA (S.T__t (S.Subcc
        (x167, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x779)))), x169)))
       | Rmode (x780) ->
      Sy.XTRA (S.T__t (S.Subcc
        (x167, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x780)))), x169))))
     | Subx (x170,x171,x172) ->
    (match x171 with 
       | Imode (x781) ->
      Sy.XTRA (S.T__t (S.Subx
        (x170, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x781)))), x172)))
       | Rmode (x782) ->
      Sy.XTRA (S.T__t (S.Subx
        (x170, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x782)))), x172))))
     | Subxcc (x173,x174,x175) ->
    (match x174 with 
       | Imode (x783) ->
      Sy.XTRA (S.T__t (S.Subxcc
        (x173, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x783)))), x175)))
       | Rmode (x784) ->
      Sy.XTRA (S.T__t (S.Subxcc
        (x173, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x784)))), x175))))
     | Tsubcc (x176,x177,x178) ->
    (match x177 with 
       | Imode (x785) ->
      Sy.XTRA (S.T__t (S.Tsubcc
        (x176, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x785)))), x178)))
       | Rmode (x786) ->
      Sy.XTRA (S.T__t (S.Tsubcc
        (x176, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x786)))), x178))))
     | Tsubcctv (x179,x180,x181) ->
    (match x180 with 
       | Imode (x787) ->
      Sy.XTRA (S.T__t (S.Tsubcctv
        (x179, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x787)))), x181)))
       | Rmode (x788) ->
      Sy.XTRA (S.T__t (S.Tsubcctv
        (x179, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x788)))), x181))))
     | Mulscc (x182,x183,x184) ->
    (match x183 with 
       | Imode (x789) ->
      Sy.XTRA (S.T__t (S.Mulscc
        (x182, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x789)))), x184)))
       | Rmode (x790) ->
      Sy.XTRA (S.T__t (S.Mulscc
        (x182, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x790)))), x184))))
     | Umul (x185,x186,x187) ->
    (match x186 with 
       | Imode (x791) ->
      Sy.XTRA (S.T__t (S.Umul
        (x185, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x791)))), x187)))
       | Rmode (x792) ->
      Sy.XTRA (S.T__t (S.Umul
        (x185, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x792)))), x187))))
     | Smul (x188,x189,x190) ->
    (match x189 with 
       | Imode (x793) ->
      Sy.XTRA (S.T__t (S.Smul
        (x188, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x793)))), x190)))
       | Rmode (x794) ->
      Sy.XTRA (S.T__t (S.Smul
        (x188, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x794)))), x190))))
     | Umulcc (x191,x192,x193) ->
    (match x192 with 
       | Imode (x795) ->
      Sy.XTRA (S.T__t (S.Umulcc
        (x191, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x795)))), x193)))
       | Rmode (x796) ->
      Sy.XTRA (S.T__t (S.Umulcc
        (x191, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x796)))), x193))))
     | Smulcc (x194,x195,x196) ->
    (match x195 with 
       | Imode (x797) ->
      Sy.XTRA (S.T__t (S.Smulcc
        (x194, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x797)))), x196)))
       | Rmode (x798) ->
      Sy.XTRA (S.T__t (S.Smulcc
        (x194, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x798)))), x196))))
     | Udiv (x197,x198,x199) ->
    (match x198 with 
       | Imode (x799) ->
      Sy.XTRA (S.T__t (S.Udiv
        (x197, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x799)))), x199)))
       | Rmode (x800) ->
      Sy.XTRA (S.T__t (S.Udiv
        (x197, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x800)))), x199))))
     | Sdiv (x200,x201,x202) ->
    (match x201 with 
       | Imode (x801) ->
      Sy.XTRA (S.T__t (S.Sdiv
        (x200, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x801)))), x202)))
       | Rmode (x802) ->
      Sy.XTRA (S.T__t (S.Sdiv
        (x200, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x802)))), x202))))
     | Udivcc (x203,x204,x205) ->
    (match x204 with 
       | Imode (x803) ->
      Sy.XTRA (S.T__t (S.Udivcc
        (x203, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x803)))), x205)))
       | Rmode (x804) ->
      Sy.XTRA (S.T__t (S.Udivcc
        (x203, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x804)))), x205))))
     | Sdivcc (x206,x207,x208) ->
    (match x207 with 
       | Imode (x805) ->
      Sy.XTRA (S.T__t (S.Sdivcc
        (x206, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x805)))), x208)))
       | Rmode (x806) ->
      Sy.XTRA (S.T__t (S.Sdivcc
        (x206, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x806)))), x208))))
     | Save (x209,x210,x211) ->
    (match x210 with 
       | Imode (x807) ->
      Sy.XTRA (S.T__t (S.Save
        (x209, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x807)))), x211)))
       | Rmode (x808) ->
      Sy.XTRA (S.T__t (S.Save
        (x209, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x808)))), x211))))
     | Restore (x212,x213,x214) ->
    (match x213 with 
       | Imode (x809) ->
      Sy.XTRA (S.T__t (S.Restore
        (x212, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x809)))), x214)))
       | Rmode (x810) ->
      Sy.XTRA (S.T__t (S.Restore
        (x212, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x810)))), x214))))
     | Bn (x215) -> Sy.XTRA (S.T__t (S.Bn (x215)))
     | Bn_a (x216) -> Sy.XTRA (S.T__t (S.Bn_a (x216)))
     | Be (x217) -> Sy.XTRA (S.T__t (S.Be (x217)))
     | Be_a (x218) -> Sy.XTRA (S.T__t (S.Be_a (x218)))
     | Ble (x219) -> Sy.XTRA (S.T__t (S.Ble (x219)))
     | Ble_a (x220) -> Sy.XTRA (S.T__t (S.Ble_a (x220)))
     | Bl (x221) -> Sy.XTRA (S.T__t (S.Bl (x221)))
     | Bl_a (x222) -> Sy.XTRA (S.T__t (S.Bl_a (x222)))
     | Bleu (x223) -> Sy.XTRA (S.T__t (S.Bleu (x223)))
     | Bleu_a (x224) -> Sy.XTRA (S.T__t (S.Bleu_a (x224)))
     | Bcs (x225) -> Sy.XTRA (S.T__t (S.Bcs (x225)))
     | Bcs_a (x226) -> Sy.XTRA (S.T__t (S.Bcs_a (x226)))
     | Bneg (x227) -> Sy.XTRA (S.T__t (S.Bneg (x227)))
     | Bneg_a (x228) -> Sy.XTRA (S.T__t (S.Bneg_a (x228)))
     | Bvs (x229) -> Sy.XTRA (S.T__t (S.Bvs (x229)))
     | Bvs_a (x230) -> Sy.XTRA (S.T__t (S.Bvs_a (x230)))
     | Ba (x231) -> Sy.XTRA (S.T__t (S.Ba (x231)))
     | Ba_a (x232) -> Sy.XTRA (S.T__t (S.Ba_a (x232)))
     | Bne (x233) -> Sy.XTRA (S.T__t (S.Bne (x233)))
     | Bne_a (x234) -> Sy.XTRA (S.T__t (S.Bne_a (x234)))
     | Bg (x235) -> Sy.XTRA (S.T__t (S.Bg (x235)))
     | Bg_a (x236) -> Sy.XTRA (S.T__t (S.Bg_a (x236)))
     | Bge (x237) -> Sy.XTRA (S.T__t (S.Bge (x237)))
     | Bge_a (x238) -> Sy.XTRA (S.T__t (S.Bge_a (x238)))
     | Bgu (x239) -> Sy.XTRA (S.T__t (S.Bgu (x239)))
     | Bgu_a (x240) -> Sy.XTRA (S.T__t (S.Bgu_a (x240)))
     | Bcc (x241) -> Sy.XTRA (S.T__t (S.Bcc (x241)))
     | Bcc_a (x242) -> Sy.XTRA (S.T__t (S.Bcc_a (x242)))
     | Bpos (x243) -> Sy.XTRA (S.T__t (S.Bpos (x243)))
     | Bpos_a (x244) -> Sy.XTRA (S.T__t (S.Bpos_a (x244)))
     | Bvc (x245) -> Sy.XTRA (S.T__t (S.Bvc (x245)))
     | Bvc_a (x246) -> Sy.XTRA (S.T__t (S.Bvc_a (x246)))
     | Fbn (x247) -> Sy.XTRA (S.T__t (S.Fbn (x247)))
     | Fbn_a (x248) -> Sy.XTRA (S.T__t (S.Fbn_a (x248)))
     | Fbne (x249) -> Sy.XTRA (S.T__t (S.Fbne (x249)))
     | Fbne_a (x250) -> Sy.XTRA (S.T__t (S.Fbne_a (x250)))
     | Fblg (x251) -> Sy.XTRA (S.T__t (S.Fblg (x251)))
     | Fblg_a (x252) -> Sy.XTRA (S.T__t (S.Fblg_a (x252)))
     | Fbul (x253) -> Sy.XTRA (S.T__t (S.Fbul (x253)))
     | Fbul_a (x254) -> Sy.XTRA (S.T__t (S.Fbul_a (x254)))
     | Fbl (x255) -> Sy.XTRA (S.T__t (S.Fbl (x255)))
     | Fbl_a (x256) -> Sy.XTRA (S.T__t (S.Fbl_a (x256)))
     | Fbug (x257) -> Sy.XTRA (S.T__t (S.Fbug (x257)))
     | Fbug_a (x258) -> Sy.XTRA (S.T__t (S.Fbug_a (x258)))
     | Fbg (x259) -> Sy.XTRA (S.T__t (S.Fbg (x259)))
     | Fbg_a (x260) -> Sy.XTRA (S.T__t (S.Fbg_a (x260)))
     | Fbu (x261) -> Sy.XTRA (S.T__t (S.Fbu (x261)))
     | Fbu_a (x262) -> Sy.XTRA (S.T__t (S.Fbu_a (x262)))
     | Fba (x263) -> Sy.XTRA (S.T__t (S.Fba (x263)))
     | Fba_a (x264) -> Sy.XTRA (S.T__t (S.Fba_a (x264)))
     | Fbe (x265) -> Sy.XTRA (S.T__t (S.Fbe (x265)))
     | Fbe_a (x266) -> Sy.XTRA (S.T__t (S.Fbe_a (x266)))
     | Fbue (x267) -> Sy.XTRA (S.T__t (S.Fbue (x267)))
     | Fbue_a (x268) -> Sy.XTRA (S.T__t (S.Fbue_a (x268)))
     | Fbge (x269) -> Sy.XTRA (S.T__t (S.Fbge (x269)))
     | Fbge_a (x270) -> Sy.XTRA (S.T__t (S.Fbge_a (x270)))
     | Fbuge (x271) -> Sy.XTRA (S.T__t (S.Fbuge (x271)))
     | Fbuge_a (x272) -> Sy.XTRA (S.T__t (S.Fbuge_a (x272)))
     | Fble (x273) -> Sy.XTRA (S.T__t (S.Fble (x273)))
     | Fble_a (x274) -> Sy.XTRA (S.T__t (S.Fble_a (x274)))
     | Fbule (x275) -> Sy.XTRA (S.T__t (S.Fbule (x275)))
     | Fbule_a (x276) -> Sy.XTRA (S.T__t (S.Fbule_a (x276)))
     | Fbo (x277) -> Sy.XTRA (S.T__t (S.Fbo (x277)))
     | Fbo_a (x278) -> Sy.XTRA (S.T__t (S.Fbo_a (x278)))
     | Cbn (x279) -> Sy.XTRA (S.T__t (S.Cbn (x279)))
     | Cbn_a (x280) -> Sy.XTRA (S.T__t (S.Cbn_a (x280)))
     | Cb123 (x281) -> Sy.XTRA (S.T__t (S.Cb123 (x281)))
     | Cb123_a (x282) -> Sy.XTRA (S.T__t (S.Cb123_a (x282)))
     | Cb12 (x283) -> Sy.XTRA (S.T__t (S.Cb12 (x283)))
     | Cb12_a (x284) -> Sy.XTRA (S.T__t (S.Cb12_a (x284)))
     | Cb13 (x285) -> Sy.XTRA (S.T__t (S.Cb13 (x285)))
     | Cb13_a (x286) -> Sy.XTRA (S.T__t (S.Cb13_a (x286)))
     | Cb1 (x287) -> Sy.XTRA (S.T__t (S.Cb1 (x287)))
     | Cb1_a (x288) -> Sy.XTRA (S.T__t (S.Cb1_a (x288)))
     | Cb23 (x289) -> Sy.XTRA (S.T__t (S.Cb23 (x289)))
     | Cb23_a (x290) -> Sy.XTRA (S.T__t (S.Cb23_a (x290)))
     | Cb2 (x291) -> Sy.XTRA (S.T__t (S.Cb2 (x291)))
     | Cb2_a (x292) -> Sy.XTRA (S.T__t (S.Cb2_a (x292)))
     | Cb3 (x293) -> Sy.XTRA (S.T__t (S.Cb3 (x293)))
     | Cb3_a (x294) -> Sy.XTRA (S.T__t (S.Cb3_a (x294)))
     | Cba (x295) -> Sy.XTRA (S.T__t (S.Cba (x295)))
     | Cba_a (x296) -> Sy.XTRA (S.T__t (S.Cba_a (x296)))
     | Cb0 (x297) -> Sy.XTRA (S.T__t (S.Cb0 (x297)))
     | Cb0_a (x298) -> Sy.XTRA (S.T__t (S.Cb0_a (x298)))
     | Cb03 (x299) -> Sy.XTRA (S.T__t (S.Cb03 (x299)))
     | Cb03_a (x300) -> Sy.XTRA (S.T__t (S.Cb03_a (x300)))
     | Cb02 (x301) -> Sy.XTRA (S.T__t (S.Cb02 (x301)))
     | Cb02_a (x302) -> Sy.XTRA (S.T__t (S.Cb02_a (x302)))
     | Cb023 (x303) -> Sy.XTRA (S.T__t (S.Cb023 (x303)))
     | Cb023_a (x304) -> Sy.XTRA (S.T__t (S.Cb023_a (x304)))
     | Cb01 (x305) -> Sy.XTRA (S.T__t (S.Cb01 (x305)))
     | Cb01_a (x306) -> Sy.XTRA (S.T__t (S.Cb01_a (x306)))
     | Cb013 (x307) -> Sy.XTRA (S.T__t (S.Cb013 (x307)))
     | Cb013_a (x308) -> Sy.XTRA (S.T__t (S.Cb013_a (x308)))
     | Cb012 (x309) -> Sy.XTRA (S.T__t (S.Cb012 (x309)))
     | Cb012_a (x310) -> Sy.XTRA (S.T__t (S.Cb012_a (x310)))
     | Call (x311) -> Sy.XTRA (S.T__t (S.Call (x311)))
     | Fmovs (x312,x313) -> Sy.XTRA (S.T__t (S.Fmovs (x312, x313)))
     | Fnegs (x314,x315) -> Sy.XTRA (S.T__t (S.Fnegs (x314, x315)))
     | Fabss (x316,x317) -> Sy.XTRA (S.T__t (S.Fabss (x316, x317)))
     | Fsqrts (x318,x319) -> Sy.XTRA (S.T__t (S.Fsqrts (x318, x319)))
     | Fsqrtd (x320,x321) -> Sy.XTRA (S.T__t (S.Fsqrtd (x320, x321)))
     | Fsqrtq (x322,x323) -> Sy.XTRA (S.T__t (S.Fsqrtq (x322, x323)))
     | Fitos (x324,x325) -> Sy.XTRA (S.T__t (S.Fitos (x324, x325)))
     | Fstoi (x326,x327) -> Sy.XTRA (S.T__t (S.Fstoi (x326, x327)))
     | Fitod (x328,x329) -> Sy.XTRA (S.T__t (S.Fitod (x328, x329)))
     | Fstod (x330,x331) -> Sy.XTRA (S.T__t (S.Fstod (x330, x331)))
     | Fitoq (x332,x333) -> Sy.XTRA (S.T__t (S.Fitoq (x332, x333)))
     | Fstoq (x334,x335) -> Sy.XTRA (S.T__t (S.Fstoq (x334, x335)))
     | Fdtoi (x336,x337) -> Sy.XTRA (S.T__t (S.Fdtoi (x336, x337)))
     | Fdtos (x338,x339) -> Sy.XTRA (S.T__t (S.Fdtos (x338, x339)))
     | Fqtos (x340,x341) -> Sy.XTRA (S.T__t (S.Fqtos (x340, x341)))
     | Fqtoi (x342,x343) -> Sy.XTRA (S.T__t (S.Fqtoi (x342, x343)))
     | Fqtod (x344,x345) -> Sy.XTRA (S.T__t (S.Fqtod (x344, x345)))
     | Fdtoq (x346,x347) -> Sy.XTRA (S.T__t (S.Fdtoq (x346, x347)))
     | Fadds (x348,x349,x350) ->
    Sy.XTRA (S.T__t (S.Fadds (x348, x349, x350)))
     | Fsubs (x351,x352,x353) ->
    Sy.XTRA (S.T__t (S.Fsubs (x351, x352, x353)))
     | Fmuls (x354,x355,x356) ->
    Sy.XTRA (S.T__t (S.Fmuls (x354, x355, x356)))
     | Fdivs (x357,x358,x359) ->
    Sy.XTRA (S.T__t (S.Fdivs (x357, x358, x359)))
     | Faddd (x360,x361,x362) ->
    Sy.XTRA (S.T__t (S.Faddd (x360, x361, x362)))
     | Fsubd (x363,x364,x365) ->
    Sy.XTRA (S.T__t (S.Fsubd (x363, x364, x365)))
     | Fmuld (x366,x367,x368) ->
    Sy.XTRA (S.T__t (S.Fmuld (x366, x367, x368)))
     | Fdivd (x369,x370,x371) ->
    Sy.XTRA (S.T__t (S.Fdivd (x369, x370, x371)))
     | Faddq (x372,x373,x374) ->
    Sy.XTRA (S.T__t (S.Faddq (x372, x373, x374)))
     | Fsubq (x375,x376,x377) ->
    Sy.XTRA (S.T__t (S.Fsubq (x375, x376, x377)))
     | Fmulq (x378,x379,x380) ->
    Sy.XTRA (S.T__t (S.Fmulq (x378, x379, x380)))
     | Fdivq (x381,x382,x383) ->
    Sy.XTRA (S.T__t (S.Fdivq (x381, x382, x383)))
     | Fsmuld (x384,x385,x386) ->
    Sy.XTRA (S.T__t (S.Fsmuld (x384, x385, x386)))
     | Fdmulq (x387,x388,x389) ->
    Sy.XTRA (S.T__t (S.Fdmulq (x387, x388, x389)))
     | Fcmps (x390,x391) -> Sy.XTRA (S.T__t (S.Fcmps (x390, x391)))
     | Fcmpes (x392,x393) -> Sy.XTRA (S.T__t (S.Fcmpes (x392, x393)))
     | Fcmpd (x394,x395) -> Sy.XTRA (S.T__t (S.Fcmpd (x394, x395)))
     | Fcmped (x396,x397) -> Sy.XTRA (S.T__t (S.Fcmped (x396, x397)))
     | Fcmpq (x398,x399) -> Sy.XTRA (S.T__t (S.Fcmpq (x398, x399)))
     | Fcmpeq (x400,x401) -> Sy.XTRA (S.T__t (S.Fcmpeq (x400, x401)))
     | Nop () -> Sy.XTRA (S.T__t (S.Nop ()))
     | Flush (x402) ->
    (match x402 with 
       | Generala (x811,x812) ->
      (match x812 with 
         | Imode (x819) ->
        Sy.XTRA (S.T__t (S.Flush
          ((Sy.XTRA (S.T__address (S.Generala
           (x811, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x819)))))))))))
         | Rmode (x820) ->
        Sy.XTRA (S.T__t (S.Flush
          ((Sy.XTRA (S.T__address (S.Generala
           (x811, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x820))))))))))))
       | Dispa (x813,x814) ->
      Sy.XTRA (S.T__t (S.Flush
        ((Sy.XTRA (S.T__address (S.Dispa (x813, x814)))))))
       | Absolutea (x815) ->
      Sy.XTRA (S.T__t (S.Flush
        ((Sy.XTRA (S.T__address (S.Absolutea (x815)))))))
       | Indexa (x816,x817) ->
      Sy.XTRA (S.T__t (S.Flush
        ((Sy.XTRA (S.T__address (S.Indexa (x816, x817)))))))
       | Indirecta (x818) ->
      Sy.XTRA (S.T__t (S.Flush
        ((Sy.XTRA (S.T__address (S.Indirecta (x818))))))))
     | Jmpl (x403,x404) ->
    (match x403 with 
       | Generala (x821,x822) ->
      (match x822 with 
         | Imode (x829) ->
        Sy.XTRA (S.T__t (S.Jmpl
          ((Sy.XTRA (S.T__address (S.Generala
           (x821, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x829)))))))),
           x404)))
         | Rmode (x830) ->
        Sy.XTRA (S.T__t (S.Jmpl
          ((Sy.XTRA (S.T__address (S.Generala
           (x821, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x830)))))))),
           x404))))
       | Dispa (x823,x824) ->
      Sy.XTRA (S.T__t (S.Jmpl
        ((Sy.XTRA (S.T__address (S.Dispa (x823, x824)))), x404)))
       | Absolutea (x825) ->
      Sy.XTRA (S.T__t (S.Jmpl
        ((Sy.XTRA (S.T__address (S.Absolutea (x825)))), x404)))
       | Indexa (x826,x827) ->
      Sy.XTRA (S.T__t (S.Jmpl
        ((Sy.XTRA (S.T__address (S.Indexa (x826, x827)))), x404)))
       | Indirecta (x828) ->
      Sy.XTRA (S.T__t (S.Jmpl
        ((Sy.XTRA (S.T__address (S.Indirecta (x828)))), x404))))
     | Rett (x405) ->
    (match x405 with 
       | Generala (x831,x832) ->
      (match x832 with 
         | Imode (x839) ->
        Sy.XTRA (S.T__t (S.Rett
          ((Sy.XTRA (S.T__address (S.Generala
           (x831, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x839)))))))))))
         | Rmode (x840) ->
        Sy.XTRA (S.T__t (S.Rett
          ((Sy.XTRA (S.T__address (S.Generala
           (x831, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x840))))))))))))
       | Dispa (x833,x834) ->
      Sy.XTRA (S.T__t (S.Rett
        ((Sy.XTRA (S.T__address (S.Dispa (x833, x834)))))))
       | Absolutea (x835) ->
      Sy.XTRA (S.T__t (S.Rett
        ((Sy.XTRA (S.T__address (S.Absolutea (x835)))))))
       | Indexa (x836,x837) ->
      Sy.XTRA (S.T__t (S.Rett
        ((Sy.XTRA (S.T__address (S.Indexa (x836, x837)))))))
       | Indirecta (x838) ->
      Sy.XTRA (S.T__t (S.Rett
        ((Sy.XTRA (S.T__address (S.Indirecta (x838))))))))
     | Tn (x406) ->
    (match x406 with 
       | Generala (x841,x842) ->
      (match x842 with 
         | Imode (x849) ->
        Sy.XTRA (S.T__t (S.Tn
          ((Sy.XTRA (S.T__address (S.Generala
           (x841, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x849)))))))))))
         | Rmode (x850) ->
        Sy.XTRA (S.T__t (S.Tn
          ((Sy.XTRA (S.T__address (S.Generala
           (x841, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x850))))))))))))
       | Dispa (x843,x844) ->
      Sy.XTRA (S.T__t (S.Tn
        ((Sy.XTRA (S.T__address (S.Dispa (x843, x844)))))))
       | Absolutea (x845) ->
      Sy.XTRA (S.T__t (S.Tn
        ((Sy.XTRA (S.T__address (S.Absolutea (x845)))))))
       | Indexa (x846,x847) ->
      Sy.XTRA (S.T__t (S.Tn
        ((Sy.XTRA (S.T__address (S.Indexa (x846, x847)))))))
       | Indirecta (x848) ->
      Sy.XTRA (S.T__t (S.Tn
        ((Sy.XTRA (S.T__address (S.Indirecta (x848))))))))
     | Te (x407) ->
    (match x407 with 
       | Generala (x851,x852) ->
      (match x852 with 
         | Imode (x859) ->
        Sy.XTRA (S.T__t (S.Te
          ((Sy.XTRA (S.T__address (S.Generala
           (x851, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x859)))))))))))
         | Rmode (x860) ->
        Sy.XTRA (S.T__t (S.Te
          ((Sy.XTRA (S.T__address (S.Generala
           (x851, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x860))))))))))))
       | Dispa (x853,x854) ->
      Sy.XTRA (S.T__t (S.Te
        ((Sy.XTRA (S.T__address (S.Dispa (x853, x854)))))))
       | Absolutea (x855) ->
      Sy.XTRA (S.T__t (S.Te
        ((Sy.XTRA (S.T__address (S.Absolutea (x855)))))))
       | Indexa (x856,x857) ->
      Sy.XTRA (S.T__t (S.Te
        ((Sy.XTRA (S.T__address (S.Indexa (x856, x857)))))))
       | Indirecta (x858) ->
      Sy.XTRA (S.T__t (S.Te
        ((Sy.XTRA (S.T__address (S.Indirecta (x858))))))))
     | Tle (x408) ->
    (match x408 with 
       | Generala (x861,x862) ->
      (match x862 with 
         | Imode (x869) ->
        Sy.XTRA (S.T__t (S.Tle
          ((Sy.XTRA (S.T__address (S.Generala
           (x861, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x869)))))))))))
         | Rmode (x870) ->
        Sy.XTRA (S.T__t (S.Tle
          ((Sy.XTRA (S.T__address (S.Generala
           (x861, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x870))))))))))))
       | Dispa (x863,x864) ->
      Sy.XTRA (S.T__t (S.Tle
        ((Sy.XTRA (S.T__address (S.Dispa (x863, x864)))))))
       | Absolutea (x865) ->
      Sy.XTRA (S.T__t (S.Tle
        ((Sy.XTRA (S.T__address (S.Absolutea (x865)))))))
       | Indexa (x866,x867) ->
      Sy.XTRA (S.T__t (S.Tle
        ((Sy.XTRA (S.T__address (S.Indexa (x866, x867)))))))
       | Indirecta (x868) ->
      Sy.XTRA (S.T__t (S.Tle
        ((Sy.XTRA (S.T__address (S.Indirecta (x868))))))))
     | Tl (x409) ->
    (match x409 with 
       | Generala (x871,x872) ->
      (match x872 with 
         | Imode (x879) ->
        Sy.XTRA (S.T__t (S.Tl
          ((Sy.XTRA (S.T__address (S.Generala
           (x871, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x879)))))))))))
         | Rmode (x880) ->
        Sy.XTRA (S.T__t (S.Tl
          ((Sy.XTRA (S.T__address (S.Generala
           (x871, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x880))))))))))))
       | Dispa (x873,x874) ->
      Sy.XTRA (S.T__t (S.Tl
        ((Sy.XTRA (S.T__address (S.Dispa (x873, x874)))))))
       | Absolutea (x875) ->
      Sy.XTRA (S.T__t (S.Tl
        ((Sy.XTRA (S.T__address (S.Absolutea (x875)))))))
       | Indexa (x876,x877) ->
      Sy.XTRA (S.T__t (S.Tl
        ((Sy.XTRA (S.T__address (S.Indexa (x876, x877)))))))
       | Indirecta (x878) ->
      Sy.XTRA (S.T__t (S.Tl
        ((Sy.XTRA (S.T__address (S.Indirecta (x878))))))))
     | Tleu (x410) ->
    (match x410 with 
       | Generala (x881,x882) ->
      (match x882 with 
         | Imode (x889) ->
        Sy.XTRA (S.T__t (S.Tleu
          ((Sy.XTRA (S.T__address (S.Generala
           (x881, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x889)))))))))))
         | Rmode (x890) ->
        Sy.XTRA (S.T__t (S.Tleu
          ((Sy.XTRA (S.T__address (S.Generala
           (x881, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x890))))))))))))
       | Dispa (x883,x884) ->
      Sy.XTRA (S.T__t (S.Tleu
        ((Sy.XTRA (S.T__address (S.Dispa (x883, x884)))))))
       | Absolutea (x885) ->
      Sy.XTRA (S.T__t (S.Tleu
        ((Sy.XTRA (S.T__address (S.Absolutea (x885)))))))
       | Indexa (x886,x887) ->
      Sy.XTRA (S.T__t (S.Tleu
        ((Sy.XTRA (S.T__address (S.Indexa (x886, x887)))))))
       | Indirecta (x888) ->
      Sy.XTRA (S.T__t (S.Tleu
        ((Sy.XTRA (S.T__address (S.Indirecta (x888))))))))
     | Tcs (x411) ->
    (match x411 with 
       | Generala (x891,x892) ->
      (match x892 with 
         | Imode (x899) ->
        Sy.XTRA (S.T__t (S.Tcs
          ((Sy.XTRA (S.T__address (S.Generala
           (x891, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x899)))))))))))
         | Rmode (x900) ->
        Sy.XTRA (S.T__t (S.Tcs
          ((Sy.XTRA (S.T__address (S.Generala
           (x891, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x900))))))))))))
       | Dispa (x893,x894) ->
      Sy.XTRA (S.T__t (S.Tcs
        ((Sy.XTRA (S.T__address (S.Dispa (x893, x894)))))))
       | Absolutea (x895) ->
      Sy.XTRA (S.T__t (S.Tcs
        ((Sy.XTRA (S.T__address (S.Absolutea (x895)))))))
       | Indexa (x896,x897) ->
      Sy.XTRA (S.T__t (S.Tcs
        ((Sy.XTRA (S.T__address (S.Indexa (x896, x897)))))))
       | Indirecta (x898) ->
      Sy.XTRA (S.T__t (S.Tcs
        ((Sy.XTRA (S.T__address (S.Indirecta (x898))))))))
     | Tneg (x412) ->
    (match x412 with 
       | Generala (x901,x902) ->
      (match x902 with 
         | Imode (x909) ->
        Sy.XTRA (S.T__t (S.Tneg
          ((Sy.XTRA (S.T__address (S.Generala
           (x901, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x909)))))))))))
         | Rmode (x910) ->
        Sy.XTRA (S.T__t (S.Tneg
          ((Sy.XTRA (S.T__address (S.Generala
           (x901, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x910))))))))))))
       | Dispa (x903,x904) ->
      Sy.XTRA (S.T__t (S.Tneg
        ((Sy.XTRA (S.T__address (S.Dispa (x903, x904)))))))
       | Absolutea (x905) ->
      Sy.XTRA (S.T__t (S.Tneg
        ((Sy.XTRA (S.T__address (S.Absolutea (x905)))))))
       | Indexa (x906,x907) ->
      Sy.XTRA (S.T__t (S.Tneg
        ((Sy.XTRA (S.T__address (S.Indexa (x906, x907)))))))
       | Indirecta (x908) ->
      Sy.XTRA (S.T__t (S.Tneg
        ((Sy.XTRA (S.T__address (S.Indirecta (x908))))))))
     | Tvs (x413) ->
    (match x413 with 
       | Generala (x911,x912) ->
      (match x912 with 
         | Imode (x919) ->
        Sy.XTRA (S.T__t (S.Tvs
          ((Sy.XTRA (S.T__address (S.Generala
           (x911, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x919)))))))))))
         | Rmode (x920) ->
        Sy.XTRA (S.T__t (S.Tvs
          ((Sy.XTRA (S.T__address (S.Generala
           (x911, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x920))))))))))))
       | Dispa (x913,x914) ->
      Sy.XTRA (S.T__t (S.Tvs
        ((Sy.XTRA (S.T__address (S.Dispa (x913, x914)))))))
       | Absolutea (x915) ->
      Sy.XTRA (S.T__t (S.Tvs
        ((Sy.XTRA (S.T__address (S.Absolutea (x915)))))))
       | Indexa (x916,x917) ->
      Sy.XTRA (S.T__t (S.Tvs
        ((Sy.XTRA (S.T__address (S.Indexa (x916, x917)))))))
       | Indirecta (x918) ->
      Sy.XTRA (S.T__t (S.Tvs
        ((Sy.XTRA (S.T__address (S.Indirecta (x918))))))))
     | Ta (x414) ->
    (match x414 with 
       | Generala (x921,x922) ->
      (match x922 with 
         | Imode (x929) ->
        Sy.XTRA (S.T__t (S.Ta
          ((Sy.XTRA (S.T__address (S.Generala
           (x921, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x929)))))))))))
         | Rmode (x930) ->
        Sy.XTRA (S.T__t (S.Ta
          ((Sy.XTRA (S.T__address (S.Generala
           (x921, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x930))))))))))))
       | Dispa (x923,x924) ->
      Sy.XTRA (S.T__t (S.Ta
        ((Sy.XTRA (S.T__address (S.Dispa (x923, x924)))))))
       | Absolutea (x925) ->
      Sy.XTRA (S.T__t (S.Ta
        ((Sy.XTRA (S.T__address (S.Absolutea (x925)))))))
       | Indexa (x926,x927) ->
      Sy.XTRA (S.T__t (S.Ta
        ((Sy.XTRA (S.T__address (S.Indexa (x926, x927)))))))
       | Indirecta (x928) ->
      Sy.XTRA (S.T__t (S.Ta
        ((Sy.XTRA (S.T__address (S.Indirecta (x928))))))))
     | Tne (x415) ->
    (match x415 with 
       | Generala (x931,x932) ->
      (match x932 with 
         | Imode (x939) ->
        Sy.XTRA (S.T__t (S.Tne
          ((Sy.XTRA (S.T__address (S.Generala
           (x931, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x939)))))))))))
         | Rmode (x940) ->
        Sy.XTRA (S.T__t (S.Tne
          ((Sy.XTRA (S.T__address (S.Generala
           (x931, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x940))))))))))))
       | Dispa (x933,x934) ->
      Sy.XTRA (S.T__t (S.Tne
        ((Sy.XTRA (S.T__address (S.Dispa (x933, x934)))))))
       | Absolutea (x935) ->
      Sy.XTRA (S.T__t (S.Tne
        ((Sy.XTRA (S.T__address (S.Absolutea (x935)))))))
       | Indexa (x936,x937) ->
      Sy.XTRA (S.T__t (S.Tne
        ((Sy.XTRA (S.T__address (S.Indexa (x936, x937)))))))
       | Indirecta (x938) ->
      Sy.XTRA (S.T__t (S.Tne
        ((Sy.XTRA (S.T__address (S.Indirecta (x938))))))))
     | Tg (x416) ->
    (match x416 with 
       | Generala (x941,x942) ->
      (match x942 with 
         | Imode (x949) ->
        Sy.XTRA (S.T__t (S.Tg
          ((Sy.XTRA (S.T__address (S.Generala
           (x941, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x949)))))))))))
         | Rmode (x950) ->
        Sy.XTRA (S.T__t (S.Tg
          ((Sy.XTRA (S.T__address (S.Generala
           (x941, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x950))))))))))))
       | Dispa (x943,x944) ->
      Sy.XTRA (S.T__t (S.Tg
        ((Sy.XTRA (S.T__address (S.Dispa (x943, x944)))))))
       | Absolutea (x945) ->
      Sy.XTRA (S.T__t (S.Tg
        ((Sy.XTRA (S.T__address (S.Absolutea (x945)))))))
       | Indexa (x946,x947) ->
      Sy.XTRA (S.T__t (S.Tg
        ((Sy.XTRA (S.T__address (S.Indexa (x946, x947)))))))
       | Indirecta (x948) ->
      Sy.XTRA (S.T__t (S.Tg
        ((Sy.XTRA (S.T__address (S.Indirecta (x948))))))))
     | Tge (x417) ->
    (match x417 with 
       | Generala (x951,x952) ->
      (match x952 with 
         | Imode (x959) ->
        Sy.XTRA (S.T__t (S.Tge
          ((Sy.XTRA (S.T__address (S.Generala
           (x951, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x959)))))))))))
         | Rmode (x960) ->
        Sy.XTRA (S.T__t (S.Tge
          ((Sy.XTRA (S.T__address (S.Generala
           (x951, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x960))))))))))))
       | Dispa (x953,x954) ->
      Sy.XTRA (S.T__t (S.Tge
        ((Sy.XTRA (S.T__address (S.Dispa (x953, x954)))))))
       | Absolutea (x955) ->
      Sy.XTRA (S.T__t (S.Tge
        ((Sy.XTRA (S.T__address (S.Absolutea (x955)))))))
       | Indexa (x956,x957) ->
      Sy.XTRA (S.T__t (S.Tge
        ((Sy.XTRA (S.T__address (S.Indexa (x956, x957)))))))
       | Indirecta (x958) ->
      Sy.XTRA (S.T__t (S.Tge
        ((Sy.XTRA (S.T__address (S.Indirecta (x958))))))))
     | Tgu (x418) ->
    (match x418 with 
       | Generala (x961,x962) ->
      (match x962 with 
         | Imode (x969) ->
        Sy.XTRA (S.T__t (S.Tgu
          ((Sy.XTRA (S.T__address (S.Generala
           (x961, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x969)))))))))))
         | Rmode (x970) ->
        Sy.XTRA (S.T__t (S.Tgu
          ((Sy.XTRA (S.T__address (S.Generala
           (x961, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x970))))))))))))
       | Dispa (x963,x964) ->
      Sy.XTRA (S.T__t (S.Tgu
        ((Sy.XTRA (S.T__address (S.Dispa (x963, x964)))))))
       | Absolutea (x965) ->
      Sy.XTRA (S.T__t (S.Tgu
        ((Sy.XTRA (S.T__address (S.Absolutea (x965)))))))
       | Indexa (x966,x967) ->
      Sy.XTRA (S.T__t (S.Tgu
        ((Sy.XTRA (S.T__address (S.Indexa (x966, x967)))))))
       | Indirecta (x968) ->
      Sy.XTRA (S.T__t (S.Tgu
        ((Sy.XTRA (S.T__address (S.Indirecta (x968))))))))
     | Tcc (x419) ->
    (match x419 with 
       | Generala (x971,x972) ->
      (match x972 with 
         | Imode (x979) ->
        Sy.XTRA (S.T__t (S.Tcc
          ((Sy.XTRA (S.T__address (S.Generala
           (x971, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x979)))))))))))
         | Rmode (x980) ->
        Sy.XTRA (S.T__t (S.Tcc
          ((Sy.XTRA (S.T__address (S.Generala
           (x971, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x980))))))))))))
       | Dispa (x973,x974) ->
      Sy.XTRA (S.T__t (S.Tcc
        ((Sy.XTRA (S.T__address (S.Dispa (x973, x974)))))))
       | Absolutea (x975) ->
      Sy.XTRA (S.T__t (S.Tcc
        ((Sy.XTRA (S.T__address (S.Absolutea (x975)))))))
       | Indexa (x976,x977) ->
      Sy.XTRA (S.T__t (S.Tcc
        ((Sy.XTRA (S.T__address (S.Indexa (x976, x977)))))))
       | Indirecta (x978) ->
      Sy.XTRA (S.T__t (S.Tcc
        ((Sy.XTRA (S.T__address (S.Indirecta (x978))))))))
     | Tpos (x420) ->
    (match x420 with 
       | Generala (x981,x982) ->
      (match x982 with 
         | Imode (x989) ->
        Sy.XTRA (S.T__t (S.Tpos
          ((Sy.XTRA (S.T__address (S.Generala
           (x981, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x989)))))))))))
         | Rmode (x990) ->
        Sy.XTRA (S.T__t (S.Tpos
          ((Sy.XTRA (S.T__address (S.Generala
           (x981, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x990))))))))))))
       | Dispa (x983,x984) ->
      Sy.XTRA (S.T__t (S.Tpos
        ((Sy.XTRA (S.T__address (S.Dispa (x983, x984)))))))
       | Absolutea (x985) ->
      Sy.XTRA (S.T__t (S.Tpos
        ((Sy.XTRA (S.T__address (S.Absolutea (x985)))))))
       | Indexa (x986,x987) ->
      Sy.XTRA (S.T__t (S.Tpos
        ((Sy.XTRA (S.T__address (S.Indexa (x986, x987)))))))
       | Indirecta (x988) ->
      Sy.XTRA (S.T__t (S.Tpos
        ((Sy.XTRA (S.T__address (S.Indirecta (x988))))))))
     | Tvc (x421) ->
    (match x421 with 
       | Generala (x991,x992) ->
      (match x992 with 
         | Imode (x999) ->
        Sy.XTRA (S.T__t (S.Tvc
          ((Sy.XTRA (S.T__address (S.Generala
           (x991, (Sy.XTRA (S.T__reg_or_imm (S.Imode (x999)))))))))))
         | Rmode (x1000) ->
        Sy.XTRA (S.T__t (S.Tvc
          ((Sy.XTRA (S.T__address (S.Generala
           (x991, (Sy.XTRA (S.T__reg_or_imm (S.Rmode (x1000))))))))))))
       | Dispa (x993,x994) ->
      Sy.XTRA (S.T__t (S.Tvc
        ((Sy.XTRA (S.T__address (S.Dispa (x993, x994)))))))
       | Absolutea (x995) ->
      Sy.XTRA (S.T__t (S.Tvc
        ((Sy.XTRA (S.T__address (S.Absolutea (x995)))))))
       | Indexa (x996,x997) ->
      Sy.XTRA (S.T__t (S.Tvc
        ((Sy.XTRA (S.T__address (S.Indexa (x996, x997)))))))
       | Indirecta (x998) ->
      Sy.XTRA (S.T__t (S.Tvc
        ((Sy.XTRA (S.T__address (S.Indirecta (x998))))))))
     | Unimp (x422) -> Sy.XTRA (S.T__t (S.Unimp (x422)))
     | Sethi (x423,x424) -> Sy.XTRA (S.T__t (S.Sethi (x423, x424)))
     | Decode_sethi (x425,x426) ->
    Sy.XTRA (S.T__t (S.Decode_sethi (x425, x426)))
     | Set (x427,x428) -> Sy.XTRA (S.T__t (S.Set (x427, x428))))

