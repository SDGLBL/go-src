# command-line-arguments
main.(*pointerImpl).Method STEXT size=486 args=0x18 locals=0xb0 funcid=0x0 align=0x0
	0x0000 00000 	TEXT	main.(*pointerImpl).Method(SB), ABIInternal, $176-24
	0x0000 00000 	LEAQ	-48(SP), R12
	0x0005 00005 	CMPQ	R12, 16(R14)
	0x0009 00009 	PCDATA	$0, $-2
	0x0009 00009 	JLS	446
	0x000f 00015 	PCDATA	$0, $-1
	0x000f 00015 	SUBQ	$176, SP
	0x0016 00022 	MOVQ	BP, 168(SP)
	0x001e 00030 	LEAQ	168(SP), BP
	0x0026 00038 	FUNCDATA	$0, gclocals·jMEwbs2xlC8jTxDFNygHZw==(SB)
	0x0026 00038 	FUNCDATA	$1, gclocals·YGcQKK9uXyy26D4rQDYqfg==(SB)
	0x0026 00038 	FUNCDATA	$2, main.(*pointerImpl).Method.stkobj(SB)
	0x0026 00038 	FUNCDATA	$5, main.(*pointerImpl).Method.arginfo1(SB)
	0x0026 00038 	MOVQ	AX, main.im+184(SP)
	0x002e 00046 	MOVQ	BX, main.s+192(SP)
	0x0036 00054 	MOVQ	CX, main.s+200(SP)
	0x003e 00062 	TESTB	AL, (AX)
	0x0040 00064 	MOVQ	CX, 8(AX)
	0x0044 00068 	PCDATA	$0, $-2
	0x0044 00068 	CMPL	runtime.writeBarrier(SB), $0
	0x004b 00075 	JEQ	79
	0x004d 00077 	JMP	84
	0x004f 00079 	MOVQ	BX, (AX)
	0x0052 00082 	JMP	94
	0x0054 00084 	MOVQ	AX, DI
	0x0057 00087 	CALL	runtime.gcWriteBarrierBX(SB)
	0x005c 00092 	JMP	94
	0x005e 00094 	PCDATA	$0, $-1
	0x005e 00094 	MOVUPS	X15, main..autotmp_2+120(SP)
	0x0064 00100 	MOVUPS	X15, main..autotmp_2+136(SP)
	0x006d 00109 	MOVUPS	X15, main..autotmp_2+152(SP)
	0x0076 00118 	LEAQ	main..autotmp_2+120(SP), CX
	0x007b 00123 	MOVQ	CX, main..autotmp_4+72(SP)
	0x0080 00128 	MOVQ	main.s+192(SP), AX
	0x0088 00136 	MOVQ	main.s+200(SP), BX
	0x0090 00144 	PCDATA	$1, $1
	0x0090 00144 	CALL	runtime.convTstring(SB)
	0x0095 00149 	MOVQ	AX, main..autotmp_5+64(SP)
	0x009a 00154 	MOVQ	main..autotmp_4+72(SP), DI
	0x009f 00159 	TESTB	AL, (DI)
	0x00a1 00161 	LEAQ	type:string(SB), CX
	0x00a8 00168 	MOVQ	CX, (DI)
	0x00ab 00171 	LEAQ	8(DI), CX
	0x00af 00175 	PCDATA	$0, $-2
	0x00af 00175 	CMPL	runtime.writeBarrier(SB), $0
	0x00b6 00182 	JEQ	186
	0x00b8 00184 	JMP	194
	0x00ba 00186 	MOVQ	AX, 8(DI)
	0x00be 00190 	NOP
	0x00c0 00192 	JMP	204
	0x00c2 00194 	MOVQ	CX, DI
	0x00c5 00197 	CALL	runtime.gcWriteBarrier(SB)
	0x00ca 00202 	JMP	204
	0x00cc 00204 	PCDATA	$0, $-1
	0x00cc 00204 	MOVQ	main.im+184(SP), CX
	0x00d4 00212 	TESTB	AL, (CX)
	0x00d6 00214 	MOVQ	(CX), AX
	0x00d9 00217 	MOVQ	8(CX), BX
	0x00dd 00221 	MOVQ	AX, main..autotmp_6+80(SP)
	0x00e2 00226 	MOVQ	BX, main..autotmp_6+88(SP)
	0x00e7 00231 	CALL	runtime.convTstring(SB)
	0x00ec 00236 	MOVQ	AX, main..autotmp_7+56(SP)
	0x00f1 00241 	MOVQ	main..autotmp_4+72(SP), DI
	0x00f6 00246 	TESTB	AL, (DI)
	0x00f8 00248 	LEAQ	type:string(SB), CX
	0x00ff 00255 	MOVQ	CX, 16(DI)
	0x0103 00259 	LEAQ	24(DI), CX
	0x0107 00263 	PCDATA	$0, $-2
	0x0107 00263 	CMPL	runtime.writeBarrier(SB), $0
	0x010e 00270 	JEQ	274
	0x0110 00272 	JMP	280
	0x0112 00274 	MOVQ	AX, 24(DI)
	0x0116 00278 	JMP	295
	0x0118 00280 	MOVQ	CX, DI
	0x011b 00283 	NOP
	0x0120 00288 	CALL	runtime.gcWriteBarrier(SB)
	0x0125 00293 	JMP	295
	0x0127 00295 	PCDATA	$0, $-1
	0x0127 00295 	MOVQ	main.im+184(SP), CX
	0x012f 00303 	TESTB	AL, (CX)
	0x0131 00305 	MOVQ	16(CX), AX
	0x0135 00309 	MOVQ	AX, main..autotmp_8+40(SP)
	0x013a 00314 	PCDATA	$1, $2
	0x013a 00314 	CALL	runtime.convT64(SB)
	0x013f 00319 	MOVQ	AX, main..autotmp_9+48(SP)
	0x0144 00324 	MOVQ	main..autotmp_4+72(SP), DI
	0x0149 00329 	TESTB	AL, (DI)
	0x014b 00331 	LEAQ	type:int(SB), CX
	0x0152 00338 	MOVQ	CX, 32(DI)
	0x0156 00342 	LEAQ	40(DI), CX
	0x015a 00346 	PCDATA	$0, $-2
	0x015a 00346 	CMPL	runtime.writeBarrier(SB), $0
	0x0161 00353 	JEQ	357
	0x0163 00355 	JMP	363
	0x0165 00357 	MOVQ	AX, 40(DI)
	0x0169 00361 	JMP	373
	0x016b 00363 	MOVQ	CX, DI
	0x016e 00366 	CALL	runtime.gcWriteBarrier(SB)
	0x0173 00371 	JMP	373
	0x0175 00373 	PCDATA	$0, $-1
	0x0175 00373 	MOVQ	main..autotmp_4+72(SP), CX
	0x017a 00378 	TESTB	AL, (CX)
	0x017c 00380 	JMP	382
	0x017e 00382 	MOVQ	CX, main..autotmp_3+96(SP)
	0x0183 00387 	MOVQ	$3, main..autotmp_3+104(SP)
	0x018c 00396 	MOVQ	$3, main..autotmp_3+112(SP)
	0x0195 00405 	LEAQ	go:string."NoneEmpty.Method Args: %s | NoneEmpty.X: %s | NoneEmpty.Y: %d \n"(SB), AX
	0x019c 00412 	MOVL	$63, BX
	0x01a1 00417 	MOVL	$3, DI
	0x01a6 00422 	MOVQ	DI, SI
	0x01a9 00425 	PCDATA	$1, $3
	0x01a9 00425 	CALL	fmt.Printf(SB)
	0x01ae 00430 	MOVQ	168(SP), BP
	0x01b6 00438 	ADDQ	$176, SP
	0x01bd 00445 	RET
	0x01be 00446 	NOP
	0x01be 00446 	PCDATA	$1, $-1
	0x01be 00446 	PCDATA	$0, $-2
	0x01be 00446 	MOVQ	AX, 8(SP)
	0x01c3 00451 	MOVQ	BX, 16(SP)
	0x01c8 00456 	MOVQ	CX, 24(SP)
	0x01cd 00461 	CALL	runtime.morestack_noctxt(SB)
	0x01d2 00466 	MOVQ	8(SP), AX
	0x01d7 00471 	MOVQ	16(SP), BX
	0x01dc 00476 	MOVQ	24(SP), CX
	0x01e1 00481 	PCDATA	$0, $-1
	0x01e1 00481 	JMP	0
	0x0000 4c 8d 64 24 d0 4d 3b 66 10 0f 86 af 01 00 00 48  L.d$.M;f.......H
	0x0010 81 ec b0 00 00 00 48 89 ac 24 a8 00 00 00 48 8d  ......H..$....H.
	0x0020 ac 24 a8 00 00 00 48 89 84 24 b8 00 00 00 48 89  .$....H..$....H.
	0x0030 9c 24 c0 00 00 00 48 89 8c 24 c8 00 00 00 84 00  .$....H..$......
	0x0040 48 89 48 08 83 3d 00 00 00 00 00 74 02 eb 05 48  H.H..=.....t...H
	0x0050 89 18 eb 0a 48 89 c7 e8 00 00 00 00 eb 00 44 0f  ....H.........D.
	0x0060 11 7c 24 78 44 0f 11 bc 24 88 00 00 00 44 0f 11  .|$xD...$....D..
	0x0070 bc 24 98 00 00 00 48 8d 4c 24 78 48 89 4c 24 48  .$....H.L$xH.L$H
	0x0080 48 8b 84 24 c0 00 00 00 48 8b 9c 24 c8 00 00 00  H..$....H..$....
	0x0090 e8 00 00 00 00 48 89 44 24 40 48 8b 7c 24 48 84  .....H.D$@H.|$H.
	0x00a0 07 48 8d 0d 00 00 00 00 48 89 0f 48 8d 4f 08 83  .H......H..H.O..
	0x00b0 3d 00 00 00 00 00 74 02 eb 08 48 89 47 08 66 90  =.....t...H.G.f.
	0x00c0 eb 0a 48 89 cf e8 00 00 00 00 eb 00 48 8b 8c 24  ..H.........H..$
	0x00d0 b8 00 00 00 84 01 48 8b 01 48 8b 59 08 48 89 44  ......H..H.Y.H.D
	0x00e0 24 50 48 89 5c 24 58 e8 00 00 00 00 48 89 44 24  $PH.\$X.....H.D$
	0x00f0 38 48 8b 7c 24 48 84 07 48 8d 0d 00 00 00 00 48  8H.|$H..H......H
	0x0100 89 4f 10 48 8d 4f 18 83 3d 00 00 00 00 00 74 02  .O.H.O..=.....t.
	0x0110 eb 06 48 89 47 18 eb 0f 48 89 cf 0f 1f 44 00 00  ..H.G...H....D..
	0x0120 e8 00 00 00 00 eb 00 48 8b 8c 24 b8 00 00 00 84  .......H..$.....
	0x0130 01 48 8b 41 10 48 89 44 24 28 e8 00 00 00 00 48  .H.A.H.D$(.....H
	0x0140 89 44 24 30 48 8b 7c 24 48 84 07 48 8d 0d 00 00  .D$0H.|$H..H....
	0x0150 00 00 48 89 4f 20 48 8d 4f 28 83 3d 00 00 00 00  ..H.O H.O(.=....
	0x0160 00 74 02 eb 06 48 89 47 28 eb 0a 48 89 cf e8 00  .t...H.G(..H....
	0x0170 00 00 00 eb 00 48 8b 4c 24 48 84 01 eb 00 48 89  .....H.L$H....H.
	0x0180 4c 24 60 48 c7 44 24 68 03 00 00 00 48 c7 44 24  L$`H.D$h....H.D$
	0x0190 70 03 00 00 00 48 8d 05 00 00 00 00 bb 3f 00 00  p....H.......?..
	0x01a0 00 bf 03 00 00 00 48 89 fe e8 00 00 00 00 48 8b  ......H.......H.
	0x01b0 ac 24 a8 00 00 00 48 81 c4 b0 00 00 00 c3 48 89  .$....H.......H.
	0x01c0 44 24 08 48 89 5c 24 10 48 89 4c 24 18 e8 00 00  D$.H.\$.H.L$....
	0x01d0 00 00 48 8b 44 24 08 48 8b 5c 24 10 48 8b 4c 24  ..H.D$.H.\$.H.L$
	0x01e0 18 e9 1a fe ff ff                                ......
	rel 3+0 t=23 type:string+0
	rel 3+0 t=23 type:string+0
	rel 3+0 t=23 type:int+0
	rel 70+4 t=14 runtime.writeBarrier+-1
	rel 88+4 t=7 runtime.gcWriteBarrierBX+0
	rel 145+4 t=7 runtime.convTstring+0
	rel 164+4 t=14 type:string+0
	rel 177+4 t=14 runtime.writeBarrier+-1
	rel 198+4 t=7 runtime.gcWriteBarrier+0
	rel 232+4 t=7 runtime.convTstring+0
	rel 251+4 t=14 type:string+0
	rel 265+4 t=14 runtime.writeBarrier+-1
	rel 289+4 t=7 runtime.gcWriteBarrier+0
	rel 315+4 t=7 runtime.convT64+0
	rel 334+4 t=14 type:int+0
	rel 348+4 t=14 runtime.writeBarrier+-1
	rel 367+4 t=7 runtime.gcWriteBarrier+0
	rel 408+4 t=14 go:string."NoneEmpty.Method Args: %s | NoneEmpty.X: %s | NoneEmpty.Y: %d \n"+0
	rel 426+4 t=7 fmt.Printf+0
	rel 462+4 t=7 runtime.morestack_noctxt+0
main.valueImpl.Method STEXT size=485 args=0x28 locals=0x98 funcid=0x0 align=0x0
	0x0000 00000 	TEXT	main.valueImpl.Method(SB), ABIInternal, $152-40
	0x0000 00000 	LEAQ	-24(SP), R12
	0x0005 00005 	CMPQ	R12, 16(R14)
	0x0009 00009 	PCDATA	$0, $-2
	0x0009 00009 	JLS	420
	0x000f 00015 	PCDATA	$0, $-1
	0x000f 00015 	SUBQ	$152, SP
	0x0016 00022 	MOVQ	BP, 144(SP)
	0x001e 00030 	LEAQ	144(SP), BP
	0x0026 00038 	FUNCDATA	$0, gclocals·u/KqUuBtPVCZ8St2+IV9zQ==(SB)
	0x0026 00038 	FUNCDATA	$1, gclocals·6Bpg6/3yM0XlU+cD70xNlA==(SB)
	0x0026 00038 	FUNCDATA	$2, main.valueImpl.Method.stkobj(SB)
	0x0026 00038 	FUNCDATA	$5, main.valueImpl.Method.arginfo1(SB)
	0x0026 00038 	MOVQ	AX, main.im+160(SP)
	0x002e 00046 	MOVQ	BX, main.im+168(SP)
	0x0036 00054 	MOVQ	CX, main.im+176(SP)
	0x003e 00062 	MOVQ	DI, main.s+184(SP)
	0x0046 00070 	MOVQ	SI, main.s+192(SP)
	0x004e 00078 	MOVQ	DI, main.im+160(SP)
	0x0056 00086 	MOVQ	SI, main.im+168(SP)
	0x005e 00094 	MOVUPS	X15, main..autotmp_2+96(SP)
	0x0064 00100 	MOVUPS	X15, main..autotmp_2+112(SP)
	0x006a 00106 	MOVUPS	X15, main..autotmp_2+128(SP)
	0x0073 00115 	LEAQ	main..autotmp_2+96(SP), CX
	0x0078 00120 	MOVQ	CX, main..autotmp_4+64(SP)
	0x007d 00125 	MOVQ	main.s+184(SP), AX
	0x0085 00133 	MOVQ	main.s+192(SP), BX
	0x008d 00141 	PCDATA	$1, $1
	0x008d 00141 	CALL	runtime.convTstring(SB)
	0x0092 00146 	MOVQ	AX, main..autotmp_5+56(SP)
	0x0097 00151 	MOVQ	main..autotmp_4+64(SP), DI
	0x009c 00156 	TESTB	AL, (DI)
	0x009e 00158 	LEAQ	type:string(SB), CX
	0x00a5 00165 	MOVQ	CX, (DI)
	0x00a8 00168 	LEAQ	8(DI), CX
	0x00ac 00172 	PCDATA	$0, $-2
	0x00ac 00172 	CMPL	runtime.writeBarrier(SB), $0
	0x00b3 00179 	JEQ	183
	0x00b5 00181 	JMP	189
	0x00b7 00183 	MOVQ	AX, 8(DI)
	0x00bb 00187 	JMP	199
	0x00bd 00189 	MOVQ	CX, DI
	0x00c0 00192 	CALL	runtime.gcWriteBarrier(SB)
	0x00c5 00197 	JMP	199
	0x00c7 00199 	PCDATA	$0, $-1
	0x00c7 00199 	MOVQ	main.im+160(SP), AX
	0x00cf 00207 	MOVQ	main.im+168(SP), BX
	0x00d7 00215 	CALL	runtime.convTstring(SB)
	0x00dc 00220 	MOVQ	AX, main..autotmp_6+48(SP)
	0x00e1 00225 	MOVQ	main..autotmp_4+64(SP), DI
	0x00e6 00230 	TESTB	AL, (DI)
	0x00e8 00232 	LEAQ	type:string(SB), CX
	0x00ef 00239 	MOVQ	CX, 16(DI)
	0x00f3 00243 	LEAQ	24(DI), CX
	0x00f7 00247 	PCDATA	$0, $-2
	0x00f7 00247 	CMPL	runtime.writeBarrier(SB), $0
	0x00fe 00254 	NOP
	0x0100 00256 	JEQ	260
	0x0102 00258 	JMP	266
	0x0104 00260 	MOVQ	AX, 24(DI)
	0x0108 00264 	JMP	276
	0x010a 00266 	MOVQ	CX, DI
	0x010d 00269 	CALL	runtime.gcWriteBarrier(SB)
	0x0112 00274 	JMP	276
	0x0114 00276 	PCDATA	$0, $-1
	0x0114 00276 	MOVQ	main.im+176(SP), AX
	0x011c 00284 	PCDATA	$1, $2
	0x011c 00284 	NOP
	0x0120 00288 	CALL	runtime.convT64(SB)
	0x0125 00293 	MOVQ	AX, main..autotmp_7+40(SP)
	0x012a 00298 	MOVQ	main..autotmp_4+64(SP), DI
	0x012f 00303 	TESTB	AL, (DI)
	0x0131 00305 	LEAQ	type:int(SB), CX
	0x0138 00312 	MOVQ	CX, 32(DI)
	0x013c 00316 	LEAQ	40(DI), CX
	0x0140 00320 	PCDATA	$0, $-2
	0x0140 00320 	CMPL	runtime.writeBarrier(SB), $0
	0x0147 00327 	JEQ	331
	0x0149 00329 	JMP	337
	0x014b 00331 	MOVQ	AX, 40(DI)
	0x014f 00335 	JMP	347
	0x0151 00337 	MOVQ	CX, DI
	0x0154 00340 	CALL	runtime.gcWriteBarrier(SB)
	0x0159 00345 	JMP	347
	0x015b 00347 	PCDATA	$0, $-1
	0x015b 00347 	MOVQ	main..autotmp_4+64(SP), CX
	0x0160 00352 	TESTB	AL, (CX)
	0x0162 00354 	JMP	356
	0x0164 00356 	MOVQ	CX, main..autotmp_3+72(SP)
	0x0169 00361 	MOVQ	$3, main..autotmp_3+80(SP)
	0x0172 00370 	MOVQ	$3, main..autotmp_3+88(SP)
	0x017b 00379 	LEAQ	go:string."NoneEmpty.Method Args: %s | NoneEmpty.X: %s | NoneEmpty.Y: %d \n"(SB), AX
	0x0182 00386 	MOVL	$63, BX
	0x0187 00391 	MOVL	$3, DI
	0x018c 00396 	MOVQ	DI, SI
	0x018f 00399 	PCDATA	$1, $3
	0x018f 00399 	CALL	fmt.Printf(SB)
	0x0194 00404 	MOVQ	144(SP), BP
	0x019c 00412 	ADDQ	$152, SP
	0x01a3 00419 	RET
	0x01a4 00420 	NOP
	0x01a4 00420 	PCDATA	$1, $-1
	0x01a4 00420 	PCDATA	$0, $-2
	0x01a4 00420 	MOVQ	AX, 8(SP)
	0x01a9 00425 	MOVQ	BX, 16(SP)
	0x01ae 00430 	MOVQ	CX, 24(SP)
	0x01b3 00435 	MOVQ	DI, 32(SP)
	0x01b8 00440 	MOVQ	SI, 40(SP)
	0x01bd 00445 	NOP
	0x01c0 00448 	CALL	runtime.morestack_noctxt(SB)
	0x01c5 00453 	MOVQ	8(SP), AX
	0x01ca 00458 	MOVQ	16(SP), BX
	0x01cf 00463 	MOVQ	24(SP), CX
	0x01d4 00468 	MOVQ	32(SP), DI
	0x01d9 00473 	MOVQ	40(SP), SI
	0x01de 00478 	PCDATA	$0, $-1
	0x01de 00478 	NOP
	0x01e0 00480 	JMP	0
	0x0000 4c 8d 64 24 e8 4d 3b 66 10 0f 86 95 01 00 00 48  L.d$.M;f.......H
	0x0010 81 ec 98 00 00 00 48 89 ac 24 90 00 00 00 48 8d  ......H..$....H.
	0x0020 ac 24 90 00 00 00 48 89 84 24 a0 00 00 00 48 89  .$....H..$....H.
	0x0030 9c 24 a8 00 00 00 48 89 8c 24 b0 00 00 00 48 89  .$....H..$....H.
	0x0040 bc 24 b8 00 00 00 48 89 b4 24 c0 00 00 00 48 89  .$....H..$....H.
	0x0050 bc 24 a0 00 00 00 48 89 b4 24 a8 00 00 00 44 0f  .$....H..$....D.
	0x0060 11 7c 24 60 44 0f 11 7c 24 70 44 0f 11 bc 24 80  .|$`D..|$pD...$.
	0x0070 00 00 00 48 8d 4c 24 60 48 89 4c 24 40 48 8b 84  ...H.L$`H.L$@H..
	0x0080 24 b8 00 00 00 48 8b 9c 24 c0 00 00 00 e8 00 00  $....H..$.......
	0x0090 00 00 48 89 44 24 38 48 8b 7c 24 40 84 07 48 8d  ..H.D$8H.|$@..H.
	0x00a0 0d 00 00 00 00 48 89 0f 48 8d 4f 08 83 3d 00 00  .....H..H.O..=..
	0x00b0 00 00 00 74 02 eb 06 48 89 47 08 eb 0a 48 89 cf  ...t...H.G...H..
	0x00c0 e8 00 00 00 00 eb 00 48 8b 84 24 a0 00 00 00 48  .......H..$....H
	0x00d0 8b 9c 24 a8 00 00 00 e8 00 00 00 00 48 89 44 24  ..$.........H.D$
	0x00e0 30 48 8b 7c 24 40 84 07 48 8d 0d 00 00 00 00 48  0H.|$@..H......H
	0x00f0 89 4f 10 48 8d 4f 18 83 3d 00 00 00 00 00 66 90  .O.H.O..=.....f.
	0x0100 74 02 eb 06 48 89 47 18 eb 0a 48 89 cf e8 00 00  t...H.G...H.....
	0x0110 00 00 eb 00 48 8b 84 24 b0 00 00 00 0f 1f 40 00  ....H..$......@.
	0x0120 e8 00 00 00 00 48 89 44 24 28 48 8b 7c 24 40 84  .....H.D$(H.|$@.
	0x0130 07 48 8d 0d 00 00 00 00 48 89 4f 20 48 8d 4f 28  .H......H.O H.O(
	0x0140 83 3d 00 00 00 00 00 74 02 eb 06 48 89 47 28 eb  .=.....t...H.G(.
	0x0150 0a 48 89 cf e8 00 00 00 00 eb 00 48 8b 4c 24 40  .H.........H.L$@
	0x0160 84 01 eb 00 48 89 4c 24 48 48 c7 44 24 50 03 00  ....H.L$HH.D$P..
	0x0170 00 00 48 c7 44 24 58 03 00 00 00 48 8d 05 00 00  ..H.D$X....H....
	0x0180 00 00 bb 3f 00 00 00 bf 03 00 00 00 48 89 fe e8  ...?........H...
	0x0190 00 00 00 00 48 8b ac 24 90 00 00 00 48 81 c4 98  ....H..$....H...
	0x01a0 00 00 00 c3 48 89 44 24 08 48 89 5c 24 10 48 89  ....H.D$.H.\$.H.
	0x01b0 4c 24 18 48 89 7c 24 20 48 89 74 24 28 0f 1f 00  L$.H.|$ H.t$(...
	0x01c0 e8 00 00 00 00 48 8b 44 24 08 48 8b 5c 24 10 48  .....H.D$.H.\$.H
	0x01d0 8b 4c 24 18 48 8b 7c 24 20 48 8b 74 24 28 66 90  .L$.H.|$ H.t$(f.
	0x01e0 e9 1b fe ff ff                                   .....
	rel 3+0 t=23 type:string+0
	rel 3+0 t=23 type:string+0
	rel 3+0 t=23 type:int+0
	rel 142+4 t=7 runtime.convTstring+0
	rel 161+4 t=14 type:string+0
	rel 174+4 t=14 runtime.writeBarrier+-1
	rel 193+4 t=7 runtime.gcWriteBarrier+0
	rel 216+4 t=7 runtime.convTstring+0
	rel 235+4 t=14 type:string+0
	rel 249+4 t=14 runtime.writeBarrier+-1
	rel 270+4 t=7 runtime.gcWriteBarrier+0
	rel 289+4 t=7 runtime.convT64+0
	rel 308+4 t=14 type:int+0
	rel 322+4 t=14 runtime.writeBarrier+-1
	rel 341+4 t=7 runtime.gcWriteBarrier+0
	rel 382+4 t=14 go:string."NoneEmpty.Method Args: %s | NoneEmpty.X: %s | NoneEmpty.Y: %d \n"+0
	rel 400+4 t=7 fmt.Printf+0
	rel 449+4 t=7 runtime.morestack_noctxt+0
main.main STEXT size=432 args=0x0 locals=0xc0 funcid=0x0 align=0x0
	0x0000 00000 	TEXT	main.main(SB), ABIInternal, $192-0
	0x0000 00000 	LEAQ	-64(SP), R12
	0x0005 00005 	CMPQ	R12, 16(R14)
	0x0009 00009 	PCDATA	$0, $-2
	0x0009 00009 	JLS	422
	0x000f 00015 	PCDATA	$0, $-1
	0x000f 00015 	SUBQ	$192, SP
	0x0016 00022 	MOVQ	BP, 184(SP)
	0x001e 00030 	LEAQ	184(SP), BP
	0x0026 00038 	FUNCDATA	$0, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0026 00038 	FUNCDATA	$1, gclocals·gsTd5b1infv8BfI5pCO9Hw==(SB)
	0x0026 00038 	FUNCDATA	$2, main.main.stkobj(SB)
	0x0026 00038 	MOVQ	$0, main..autotmp_6+136(SP)
	0x0032 00050 	MOVUPS	X15, main..autotmp_6+144(SP)
	0x003b 00059 	LEAQ	main..autotmp_6+136(SP), DX
	0x0043 00067 	MOVQ	DX, main..autotmp_5+48(SP)
	0x0048 00072 	TESTB	AL, (DX)
	0x004a 00074 	MOVUPS	X15, main..autotmp_6+144(SP)
	0x0053 00083 	MOVQ	$0, main..autotmp_6+136(SP)
	0x005f 00095 	TESTB	AL, (DX)
	0x0061 00097 	MOVQ	$1, main..autotmp_6+152(SP)
	0x006d 00109 	MOVQ	main..autotmp_5+48(SP), DX
	0x0072 00114 	MOVQ	DX, main..autotmp_3+56(SP)
	0x0077 00119 	LEAQ	go:itab.*main.pointerImpl,main.noneEmptyI(SB), SI
	0x007e 00126 	MOVQ	SI, main.pointerImplIns+80(SP)
	0x0083 00131 	MOVQ	DX, main.pointerImplIns+88(SP)
	0x0088 00136 	MOVQ	$0, main..autotmp_4+160(SP)
	0x0094 00148 	MOVUPS	X15, main..autotmp_4+168(SP)
	0x009d 00157 	MOVQ	$2, main..autotmp_4+176(SP)
	0x00a9 00169 	MOVUPS	X15, main..autotmp_7+112(SP)
	0x00af 00175 	MOVQ	$2, main..autotmp_7+128(SP)
	0x00bb 00187 	LEAQ	go:itab.main.valueImpl,main.noneEmptyI(SB), DX
	0x00c2 00194 	MOVQ	DX, main.valueImplIns+64(SP)
	0x00c7 00199 	LEAQ	main..autotmp_7+112(SP), DX
	0x00cc 00204 	MOVQ	DX, main.valueImplIns+72(SP)
	0x00d1 00209 	MOVQ	main.pointerImplIns+80(SP), AX
	0x00d6 00214 	MOVQ	main.pointerImplIns+88(SP), DX
	0x00db 00219 	LEAQ	go:itab.*main.pointerImpl,main.noneEmptyI(SB), SI
	0x00e2 00226 	CMPQ	AX, SI
	0x00e5 00229 	JEQ	236
	0x00e7 00231 	JMP	399
	0x00ec 00236 	MOVQ	DX, main..autotmp_8+40(SP)
	0x00f1 00241 	MOVQ	DX, AX
	0x00f4 00244 	LEAQ	go:string."pointerImplIns"(SB), BX
	0x00fb 00251 	MOVL	$14, CX
	0x0100 00256 	PCDATA	$1, $1
	0x0100 00256 	CALL	main.(*pointerImpl).Method(SB)
	0x0105 00261 	MOVQ	$0, main..autotmp_4+160(SP)
	0x0111 00273 	MOVUPS	X15, main..autotmp_4+168(SP)
	0x011a 00282 	MOVQ	main.valueImplIns+72(SP), DX
	0x011f 00287 	MOVQ	main.valueImplIns+64(SP), AX
	0x0124 00292 	LEAQ	go:itab.main.valueImpl,main.noneEmptyI(SB), SI
	0x012b 00299 	CMPQ	AX, SI
	0x012e 00302 	JEQ	306
	0x0130 00304 	JMP	380
	0x0132 00306 	MOVQ	(DX), AX
	0x0135 00309 	MOVQ	8(DX), BX
	0x0139 00313 	MOVQ	16(DX), CX
	0x013d 00317 	MOVQ	AX, main..autotmp_4+160(SP)
	0x0145 00325 	MOVQ	BX, main..autotmp_4+168(SP)
	0x014d 00333 	MOVQ	CX, main..autotmp_4+176(SP)
	0x0155 00341 	LEAQ	go:string."valueImplIns"(SB), DI
	0x015c 00348 	MOVL	$12, SI
	0x0161 00353 	PCDATA	$1, $0
	0x0161 00353 	CALL	main.valueImpl.Method(SB)
	0x0166 00358 	MOVUPS	X15, main.emptyImplIns+96(SP)
	0x016c 00364 	MOVQ	184(SP), BP
	0x0174 00372 	ADDQ	$192, SP
	0x017b 00379 	RET
	0x017c 00380 	LEAQ	type:main.valueImpl(SB), BX
	0x0183 00387 	LEAQ	type:main.noneEmptyI(SB), CX
	0x018a 00394 	CALL	runtime.panicdottypeI(SB)
	0x018f 00399 	LEAQ	type:*main.pointerImpl(SB), BX
	0x0196 00406 	LEAQ	type:main.noneEmptyI(SB), CX
	0x019d 00413 	NOP
	0x01a0 00416 	CALL	runtime.panicdottypeI(SB)
	0x01a5 00421 	XCHGL	AX, AX
	0x01a6 00422 	NOP
	0x01a6 00422 	PCDATA	$1, $-1
	0x01a6 00422 	PCDATA	$0, $-2
	0x01a6 00422 	CALL	runtime.morestack_noctxt(SB)
	0x01ab 00427 	PCDATA	$0, $-1
	0x01ab 00427 	JMP	0
	0x0000 4c 8d 64 24 c0 4d 3b 66 10 0f 86 97 01 00 00 48  L.d$.M;f.......H
	0x0010 81 ec c0 00 00 00 48 89 ac 24 b8 00 00 00 48 8d  ......H..$....H.
	0x0020 ac 24 b8 00 00 00 48 c7 84 24 88 00 00 00 00 00  .$....H..$......
	0x0030 00 00 44 0f 11 bc 24 90 00 00 00 48 8d 94 24 88  ..D...$....H..$.
	0x0040 00 00 00 48 89 54 24 30 84 02 44 0f 11 bc 24 90  ...H.T$0..D...$.
	0x0050 00 00 00 48 c7 84 24 88 00 00 00 00 00 00 00 84  ...H..$.........
	0x0060 02 48 c7 84 24 98 00 00 00 01 00 00 00 48 8b 54  .H..$........H.T
	0x0070 24 30 48 89 54 24 38 48 8d 35 00 00 00 00 48 89  $0H.T$8H.5....H.
	0x0080 74 24 50 48 89 54 24 58 48 c7 84 24 a0 00 00 00  t$PH.T$XH..$....
	0x0090 00 00 00 00 44 0f 11 bc 24 a8 00 00 00 48 c7 84  ....D...$....H..
	0x00a0 24 b0 00 00 00 02 00 00 00 44 0f 11 7c 24 70 48  $........D..|$pH
	0x00b0 c7 84 24 80 00 00 00 02 00 00 00 48 8d 15 00 00  ..$........H....
	0x00c0 00 00 48 89 54 24 40 48 8d 54 24 70 48 89 54 24  ..H.T$@H.T$pH.T$
	0x00d0 48 48 8b 44 24 50 48 8b 54 24 58 48 8d 35 00 00  HH.D$PH.T$XH.5..
	0x00e0 00 00 48 39 f0 74 05 e9 a3 00 00 00 48 89 54 24  ..H9.t......H.T$
	0x00f0 28 48 89 d0 48 8d 1d 00 00 00 00 b9 0e 00 00 00  (H..H...........
	0x0100 e8 00 00 00 00 48 c7 84 24 a0 00 00 00 00 00 00  .....H..$.......
	0x0110 00 44 0f 11 bc 24 a8 00 00 00 48 8b 54 24 48 48  .D...$....H.T$HH
	0x0120 8b 44 24 40 48 8d 35 00 00 00 00 48 39 f0 74 02  .D$@H.5....H9.t.
	0x0130 eb 4a 48 8b 02 48 8b 5a 08 48 8b 4a 10 48 89 84  .JH..H.Z.H.J.H..
	0x0140 24 a0 00 00 00 48 89 9c 24 a8 00 00 00 48 89 8c  $....H..$....H..
	0x0150 24 b0 00 00 00 48 8d 3d 00 00 00 00 be 0c 00 00  $....H.=........
	0x0160 00 e8 00 00 00 00 44 0f 11 7c 24 60 48 8b ac 24  ......D..|$`H..$
	0x0170 b8 00 00 00 48 81 c4 c0 00 00 00 c3 48 8d 1d 00  ....H.......H...
	0x0180 00 00 00 48 8d 0d 00 00 00 00 e8 00 00 00 00 48  ...H...........H
	0x0190 8d 1d 00 00 00 00 48 8d 0d 00 00 00 00 0f 1f 00  ......H.........
	0x01a0 e8 00 00 00 00 90 e8 00 00 00 00 e9 50 fe ff ff  ............P...
	rel 3+0 t=23 type:*main.pointerImpl+0
	rel 3+0 t=23 type:main.valueImpl+0
	rel 122+4 t=14 go:itab.*main.pointerImpl,main.noneEmptyI+0
	rel 190+4 t=14 go:itab.main.valueImpl,main.noneEmptyI+0
	rel 222+4 t=14 go:itab.*main.pointerImpl,main.noneEmptyI+0
	rel 247+4 t=14 go:string."pointerImplIns"+0
	rel 257+4 t=7 main.(*pointerImpl).Method+0
	rel 295+4 t=14 go:itab.main.valueImpl,main.noneEmptyI+0
	rel 344+4 t=14 go:string."valueImplIns"+0
	rel 354+4 t=7 main.valueImpl.Method+0
	rel 383+4 t=14 type:main.valueImpl+0
	rel 390+4 t=14 type:main.noneEmptyI+0
	rel 395+4 t=7 runtime.panicdottypeI+0
	rel 402+4 t=14 type:*main.pointerImpl+0
	rel 409+4 t=14 type:main.noneEmptyI+0
	rel 417+4 t=7 runtime.panicdottypeI+0
	rel 423+4 t=7 runtime.morestack_noctxt+0
type:.eq.main.pointerImpl STEXT dupok size=212 args=0x10 locals=0x48 funcid=0x0 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type:.eq.main.pointerImpl(SB), DUPOK|ABIInternal, $72-16
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	177
	0x000a 00010 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000a 00010 (<autogenerated>:1)	SUBQ	$72, SP
	0x000e 00014 (<autogenerated>:1)	MOVQ	BP, 64(SP)
	0x0013 00019 (<autogenerated>:1)	LEAQ	64(SP), BP
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$1, gclocals·AzW08EQV0LVfnDEAZer1Nw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$5, type:.eq.main.pointerImpl.arginfo1(SB)
	0x0018 00024 (<autogenerated>:1)	MOVQ	AX, main.p+80(SP)
	0x001d 00029 (<autogenerated>:1)	MOVQ	BX, main.q+88(SP)
	0x0022 00034 (<autogenerated>:1)	MOVB	$0, main.r+31(SP)
	0x0027 00039 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x002c 00044 (<autogenerated>:1)	MOVQ	8(DX), DX
	0x0030 00048 (<autogenerated>:1)	MOVQ	DX, main..autotmp_3+40(SP)
	0x0035 00053 (<autogenerated>:1)	MOVQ	8(BX), SI
	0x0039 00057 (<autogenerated>:1)	MOVQ	SI, main..autotmp_4+32(SP)
	0x003e 00062 (<autogenerated>:1)	NOP
	0x0040 00064 (<autogenerated>:1)	CMPQ	SI, DX
	0x0043 00067 (<autogenerated>:1)	JEQ	71
	0x0045 00069 (<autogenerated>:1)	JMP	151
	0x0047 00071 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x004c 00076 (<autogenerated>:1)	MOVQ	16(DX), DX
	0x0050 00080 (<autogenerated>:1)	CMPQ	16(BX), DX
	0x0054 00084 (<autogenerated>:1)	JEQ	88
	0x0056 00086 (<autogenerated>:1)	JMP	149
	0x0058 00088 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x005d 00093 (<autogenerated>:1)	MOVQ	8(DX), DX
	0x0061 00097 (<autogenerated>:1)	MOVQ	DX, main..autotmp_4+32(SP)
	0x0066 00102 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x006b 00107 (<autogenerated>:1)	MOVQ	(DX), DX
	0x006e 00110 (<autogenerated>:1)	MOVQ	DX, main..autotmp_5+56(SP)
	0x0073 00115 (<autogenerated>:1)	MOVQ	main.q+88(SP), DX
	0x0078 00120 (<autogenerated>:1)	MOVQ	(DX), BX
	0x007b 00123 (<autogenerated>:1)	MOVQ	BX, main..autotmp_6+48(SP)
	0x0080 00128 (<autogenerated>:1)	MOVQ	main..autotmp_4+32(SP), CX
	0x0085 00133 (<autogenerated>:1)	MOVQ	main..autotmp_5+56(SP), AX
	0x008a 00138 (<autogenerated>:1)	PCDATA	$1, $1
	0x008a 00138 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x008f 00143 (<autogenerated>:1)	MOVB	AL, main.r+31(SP)
	0x0093 00147 (<autogenerated>:1)	JMP	162
	0x0095 00149 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0095 00149 (<autogenerated>:1)	JMP	153
	0x0097 00151 (<autogenerated>:1)	JMP	153
	0x0099 00153 (<autogenerated>:1)	MOVB	$0, main.r+31(SP)
	0x009e 00158 (<autogenerated>:1)	NOP
	0x00a0 00160 (<autogenerated>:1)	JMP	162
	0x00a2 00162 (<autogenerated>:1)	MOVBLZX	main.r+31(SP), AX
	0x00a7 00167 (<autogenerated>:1)	MOVQ	64(SP), BP
	0x00ac 00172 (<autogenerated>:1)	ADDQ	$72, SP
	0x00b0 00176 (<autogenerated>:1)	RET
	0x00b1 00177 (<autogenerated>:1)	NOP
	0x00b1 00177 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00b1 00177 (<autogenerated>:1)	PCDATA	$0, $-2
	0x00b1 00177 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x00b6 00182 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x00bb 00187 (<autogenerated>:1)	NOP
	0x00c0 00192 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00c5 00197 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x00ca 00202 (<autogenerated>:1)	MOVQ	16(SP), BX
	0x00cf 00207 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00cf 00207 (<autogenerated>:1)	JMP	0
	0x0000 49 3b 66 10 0f 86 a7 00 00 00 48 83 ec 48 48 89  I;f.......H..HH.
	0x0010 6c 24 40 48 8d 6c 24 40 48 89 44 24 50 48 89 5c  l$@H.l$@H.D$PH.\
	0x0020 24 58 c6 44 24 1f 00 48 8b 54 24 50 48 8b 52 08  $X.D$..H.T$PH.R.
	0x0030 48 89 54 24 28 48 8b 73 08 48 89 74 24 20 66 90  H.T$(H.s.H.t$ f.
	0x0040 48 39 d6 74 02 eb 50 48 8b 54 24 50 48 8b 52 10  H9.t..PH.T$PH.R.
	0x0050 48 39 53 10 74 02 eb 3d 48 8b 54 24 50 48 8b 52  H9S.t..=H.T$PH.R
	0x0060 08 48 89 54 24 20 48 8b 54 24 50 48 8b 12 48 89  .H.T$ H.T$PH..H.
	0x0070 54 24 38 48 8b 54 24 58 48 8b 1a 48 89 5c 24 30  T$8H.T$XH..H.\$0
	0x0080 48 8b 4c 24 20 48 8b 44 24 38 e8 00 00 00 00 88  H.L$ H.D$8......
	0x0090 44 24 1f eb 0d eb 02 eb 00 c6 44 24 1f 00 66 90  D$........D$..f.
	0x00a0 eb 00 0f b6 44 24 1f 48 8b 6c 24 40 48 83 c4 48  ....D$.H.l$@H..H
	0x00b0 c3 48 89 44 24 08 48 89 5c 24 10 0f 1f 44 00 00  .H.D$.H.\$...D..
	0x00c0 e8 00 00 00 00 48 8b 44 24 08 48 8b 5c 24 10 e9  .....H.D$.H.\$..
	0x00d0 2c ff ff ff                                      ,...
	rel 139+4 t=7 runtime.memequal+0
	rel 193+4 t=7 runtime.morestack_noctxt+0
type:.eq.main.valueImpl STEXT dupok size=212 args=0x10 locals=0x48 funcid=0x0 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type:.eq.main.valueImpl(SB), DUPOK|ABIInternal, $72-16
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	177
	0x000a 00010 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000a 00010 (<autogenerated>:1)	SUBQ	$72, SP
	0x000e 00014 (<autogenerated>:1)	MOVQ	BP, 64(SP)
	0x0013 00019 (<autogenerated>:1)	LEAQ	64(SP), BP
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$1, gclocals·AzW08EQV0LVfnDEAZer1Nw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$5, type:.eq.main.valueImpl.arginfo1(SB)
	0x0018 00024 (<autogenerated>:1)	MOVQ	AX, main.p+80(SP)
	0x001d 00029 (<autogenerated>:1)	MOVQ	BX, main.q+88(SP)
	0x0022 00034 (<autogenerated>:1)	MOVB	$0, main.r+31(SP)
	0x0027 00039 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x002c 00044 (<autogenerated>:1)	MOVQ	8(DX), DX
	0x0030 00048 (<autogenerated>:1)	MOVQ	DX, main..autotmp_3+40(SP)
	0x0035 00053 (<autogenerated>:1)	MOVQ	8(BX), SI
	0x0039 00057 (<autogenerated>:1)	MOVQ	SI, main..autotmp_4+32(SP)
	0x003e 00062 (<autogenerated>:1)	NOP
	0x0040 00064 (<autogenerated>:1)	CMPQ	SI, DX
	0x0043 00067 (<autogenerated>:1)	JEQ	71
	0x0045 00069 (<autogenerated>:1)	JMP	151
	0x0047 00071 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x004c 00076 (<autogenerated>:1)	MOVQ	16(DX), DX
	0x0050 00080 (<autogenerated>:1)	CMPQ	16(BX), DX
	0x0054 00084 (<autogenerated>:1)	JEQ	88
	0x0056 00086 (<autogenerated>:1)	JMP	149
	0x0058 00088 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x005d 00093 (<autogenerated>:1)	MOVQ	8(DX), DX
	0x0061 00097 (<autogenerated>:1)	MOVQ	DX, main..autotmp_4+32(SP)
	0x0066 00102 (<autogenerated>:1)	MOVQ	main.p+80(SP), DX
	0x006b 00107 (<autogenerated>:1)	MOVQ	(DX), DX
	0x006e 00110 (<autogenerated>:1)	MOVQ	DX, main..autotmp_5+56(SP)
	0x0073 00115 (<autogenerated>:1)	MOVQ	main.q+88(SP), DX
	0x0078 00120 (<autogenerated>:1)	MOVQ	(DX), BX
	0x007b 00123 (<autogenerated>:1)	MOVQ	BX, main..autotmp_6+48(SP)
	0x0080 00128 (<autogenerated>:1)	MOVQ	main..autotmp_4+32(SP), CX
	0x0085 00133 (<autogenerated>:1)	MOVQ	main..autotmp_5+56(SP), AX
	0x008a 00138 (<autogenerated>:1)	PCDATA	$1, $1
	0x008a 00138 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x008f 00143 (<autogenerated>:1)	MOVB	AL, main.r+31(SP)
	0x0093 00147 (<autogenerated>:1)	JMP	162
	0x0095 00149 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0095 00149 (<autogenerated>:1)	JMP	153
	0x0097 00151 (<autogenerated>:1)	JMP	153
	0x0099 00153 (<autogenerated>:1)	MOVB	$0, main.r+31(SP)
	0x009e 00158 (<autogenerated>:1)	NOP
	0x00a0 00160 (<autogenerated>:1)	JMP	162
	0x00a2 00162 (<autogenerated>:1)	MOVBLZX	main.r+31(SP), AX
	0x00a7 00167 (<autogenerated>:1)	MOVQ	64(SP), BP
	0x00ac 00172 (<autogenerated>:1)	ADDQ	$72, SP
	0x00b0 00176 (<autogenerated>:1)	RET
	0x00b1 00177 (<autogenerated>:1)	NOP
	0x00b1 00177 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00b1 00177 (<autogenerated>:1)	PCDATA	$0, $-2
	0x00b1 00177 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x00b6 00182 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x00bb 00187 (<autogenerated>:1)	NOP
	0x00c0 00192 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00c5 00197 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x00ca 00202 (<autogenerated>:1)	MOVQ	16(SP), BX
	0x00cf 00207 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00cf 00207 (<autogenerated>:1)	JMP	0
	0x0000 49 3b 66 10 0f 86 a7 00 00 00 48 83 ec 48 48 89  I;f.......H..HH.
	0x0010 6c 24 40 48 8d 6c 24 40 48 89 44 24 50 48 89 5c  l$@H.l$@H.D$PH.\
	0x0020 24 58 c6 44 24 1f 00 48 8b 54 24 50 48 8b 52 08  $X.D$..H.T$PH.R.
	0x0030 48 89 54 24 28 48 8b 73 08 48 89 74 24 20 66 90  H.T$(H.s.H.t$ f.
	0x0040 48 39 d6 74 02 eb 50 48 8b 54 24 50 48 8b 52 10  H9.t..PH.T$PH.R.
	0x0050 48 39 53 10 74 02 eb 3d 48 8b 54 24 50 48 8b 52  H9S.t..=H.T$PH.R
	0x0060 08 48 89 54 24 20 48 8b 54 24 50 48 8b 12 48 89  .H.T$ H.T$PH..H.
	0x0070 54 24 38 48 8b 54 24 58 48 8b 1a 48 89 5c 24 30  T$8H.T$XH..H.\$0
	0x0080 48 8b 4c 24 20 48 8b 44 24 38 e8 00 00 00 00 88  H.L$ H.D$8......
	0x0090 44 24 1f eb 0d eb 02 eb 00 c6 44 24 1f 00 66 90  D$........D$..f.
	0x00a0 eb 00 0f b6 44 24 1f 48 8b 6c 24 40 48 83 c4 48  ....D$.H.l$@H..H
	0x00b0 c3 48 89 44 24 08 48 89 5c 24 10 0f 1f 44 00 00  .H.D$.H.\$...D..
	0x00c0 e8 00 00 00 00 48 8b 44 24 08 48 8b 5c 24 10 e9  .....H.D$.H.\$..
	0x00d0 2c ff ff ff                                      ,...
	rel 139+4 t=7 runtime.memequal+0
	rel 193+4 t=7 runtime.morestack_noctxt+0
main.noneEmptyI.Method STEXT dupok size=140 args=0x20 locals=0x20 funcid=0x15 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	main.noneEmptyI.Method(SB), DUPOK|WRAPPER|ABIInternal, $32-32
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	76
	0x0006 00006 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0006 00006 (<autogenerated>:1)	SUBQ	$32, SP
	0x000a 00010 (<autogenerated>:1)	MOVQ	BP, 24(SP)
	0x000f 00015 (<autogenerated>:1)	LEAQ	24(SP), BP
	0x0014 00020 (<autogenerated>:1)	MOVQ	32(R14), R12
	0x0018 00024 (<autogenerated>:1)	TESTQ	R12, R12
	0x001b 00027 (<autogenerated>:1)	JNE	123
	0x001d 00029 (<autogenerated>:1)	NOP
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$0, gclocals·jGrZsD7lYjdYP8VEa+BSQQ==(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$1, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$5, main.noneEmptyI.Method.arginfo1(SB)
	0x001d 00029 (<autogenerated>:1)	MOVQ	AX, main..this+40(SP)
	0x0022 00034 (<autogenerated>:1)	MOVQ	BX, main..this+48(SP)
	0x0027 00039 (<autogenerated>:1)	MOVQ	CX, main..anon0+56(SP)
	0x002c 00044 (<autogenerated>:1)	MOVQ	DI, main..anon0+64(SP)
	0x0031 00049 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0033 00051 (<autogenerated>:1)	MOVQ	24(AX), DX
	0x0037 00055 (<autogenerated>:1)	MOVQ	BX, AX
	0x003a 00058 (<autogenerated>:1)	MOVQ	CX, BX
	0x003d 00061 (<autogenerated>:1)	MOVQ	DI, CX
	0x0040 00064 (<autogenerated>:1)	PCDATA	$1, $1
	0x0040 00064 (<autogenerated>:1)	CALL	DX
	0x0042 00066 (<autogenerated>:1)	MOVQ	24(SP), BP
	0x0047 00071 (<autogenerated>:1)	ADDQ	$32, SP
	0x004b 00075 (<autogenerated>:1)	RET
	0x004c 00076 (<autogenerated>:1)	NOP
	0x004c 00076 (<autogenerated>:1)	PCDATA	$1, $-1
	0x004c 00076 (<autogenerated>:1)	PCDATA	$0, $-2
	0x004c 00076 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0051 00081 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x0056 00086 (<autogenerated>:1)	MOVQ	CX, 24(SP)
	0x005b 00091 (<autogenerated>:1)	MOVQ	DI, 32(SP)
	0x0060 00096 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0065 00101 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x006a 00106 (<autogenerated>:1)	MOVQ	16(SP), BX
	0x006f 00111 (<autogenerated>:1)	MOVQ	24(SP), CX
	0x0074 00116 (<autogenerated>:1)	MOVQ	32(SP), DI
	0x0079 00121 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0079 00121 (<autogenerated>:1)	JMP	0
	0x007b 00123 (<autogenerated>:1)	LEAQ	40(SP), R13
	0x0080 00128 (<autogenerated>:1)	CMPQ	(R12), R13
	0x0084 00132 (<autogenerated>:1)	JNE	29
	0x0086 00134 (<autogenerated>:1)	MOVQ	SP, (R12)
	0x008a 00138 (<autogenerated>:1)	JMP	29
	0x0000 49 3b 66 10 76 46 48 83 ec 20 48 89 6c 24 18 48  I;f.vFH.. H.l$.H
	0x0010 8d 6c 24 18 4d 8b 66 20 4d 85 e4 75 5e 48 89 44  .l$.M.f M..u^H.D
	0x0020 24 28 48 89 5c 24 30 48 89 4c 24 38 48 89 7c 24  $(H.\$0H.L$8H.|$
	0x0030 40 84 00 48 8b 50 18 48 89 d8 48 89 cb 48 89 f9  @..H.P.H..H..H..
	0x0040 ff d2 48 8b 6c 24 18 48 83 c4 20 c3 48 89 44 24  ..H.l$.H.. .H.D$
	0x0050 08 48 89 5c 24 10 48 89 4c 24 18 48 89 7c 24 20  .H.\$.H.L$.H.|$ 
	0x0060 e8 00 00 00 00 48 8b 44 24 08 48 8b 5c 24 10 48  .....H.D$.H.\$.H
	0x0070 8b 4c 24 18 48 8b 7c 24 20 eb 85 4c 8d 6c 24 28  .L$.H.|$ ..L.l$(
	0x0080 4d 39 2c 24 75 97 49 89 24 24 eb 91              M9,$u.I.$$..
	rel 2+0 t=24 type:main.noneEmptyI+96
	rel 64+0 t=10 +0
	rel 97+4 t=7 runtime.morestack_noctxt+0
main.(*valueImpl).Method STEXT dupok size=189 args=0x18 locals=0x48 funcid=0x15 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	main.(*valueImpl).Method(SB), DUPOK|WRAPPER|ABIInternal, $72-24
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	125
	0x0006 00006 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0006 00006 (<autogenerated>:1)	SUBQ	$72, SP
	0x000a 00010 (<autogenerated>:1)	MOVQ	BP, 64(SP)
	0x000f 00015 (<autogenerated>:1)	LEAQ	64(SP), BP
	0x0014 00020 (<autogenerated>:1)	MOVQ	32(R14), R12
	0x0018 00024 (<autogenerated>:1)	NOP
	0x0020 00032 (<autogenerated>:1)	TESTQ	R12, R12
	0x0023 00035 (<autogenerated>:1)	JNE	165
	0x0029 00041 (<autogenerated>:1)	NOP
	0x0029 00041 (<autogenerated>:1)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0029 00041 (<autogenerated>:1)	FUNCDATA	$1, gclocals·odYzRIjT7IX9pYG9TnNVzw==(SB)
	0x0029 00041 (<autogenerated>:1)	FUNCDATA	$5, main.(*valueImpl).Method.arginfo1(SB)
	0x0029 00041 (<autogenerated>:1)	MOVQ	AX, main..this+80(SP)
	0x002e 00046 (<autogenerated>:1)	MOVQ	BX, main.s+88(SP)
	0x0033 00051 (<autogenerated>:1)	MOVQ	CX, main.s+96(SP)
	0x0038 00056 (<autogenerated>:1)	TESTQ	AX, AX
	0x003b 00059 (<autogenerated>:1)	JNE	63
	0x003d 00061 (<autogenerated>:1)	JMP	119
	0x003f 00063 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0041 00065 (<autogenerated>:1)	MOVQ	(AX), DX
	0x0044 00068 (<autogenerated>:1)	MOVQ	8(AX), BX
	0x0048 00072 (<autogenerated>:1)	MOVQ	16(AX), CX
	0x004c 00076 (<autogenerated>:1)	MOVQ	DX, main..autotmp_2+40(SP)
	0x0051 00081 (<autogenerated>:1)	MOVQ	BX, main..autotmp_2+48(SP)
	0x0056 00086 (<autogenerated>:1)	MOVQ	CX, main..autotmp_2+56(SP)
	0x005b 00091 (<autogenerated>:1)	MOVQ	main.s+88(SP), DI
	0x0060 00096 (<autogenerated>:1)	MOVQ	main.s+96(SP), SI
	0x0065 00101 (<autogenerated>:1)	MOVQ	DX, AX
	0x0068 00104 (<autogenerated>:1)	PCDATA	$1, $1
	0x0068 00104 (<autogenerated>:1)	CALL	main.valueImpl.Method(SB)
	0x006d 00109 (<autogenerated>:1)	MOVQ	64(SP), BP
	0x0072 00114 (<autogenerated>:1)	ADDQ	$72, SP
	0x0076 00118 (<autogenerated>:1)	RET
	0x0077 00119 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x007c 00124 (<autogenerated>:1)	XCHGL	AX, AX
	0x007d 00125 (<autogenerated>:1)	NOP
	0x007d 00125 (<autogenerated>:1)	PCDATA	$1, $-1
	0x007d 00125 (<autogenerated>:1)	PCDATA	$0, $-2
	0x007d 00125 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0082 00130 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x0087 00135 (<autogenerated>:1)	MOVQ	CX, 24(SP)
	0x008c 00140 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0091 00145 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x0096 00150 (<autogenerated>:1)	MOVQ	16(SP), BX
	0x009b 00155 (<autogenerated>:1)	MOVQ	24(SP), CX
	0x00a0 00160 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00a0 00160 (<autogenerated>:1)	JMP	0
	0x00a5 00165 (<autogenerated>:1)	LEAQ	80(SP), R13
	0x00aa 00170 (<autogenerated>:1)	CMPQ	(R12), R13
	0x00ae 00174 (<autogenerated>:1)	JNE	41
	0x00b4 00180 (<autogenerated>:1)	MOVQ	SP, (R12)
	0x00b8 00184 (<autogenerated>:1)	JMP	41
	0x0000 49 3b 66 10 76 77 48 83 ec 48 48 89 6c 24 40 48  I;f.vwH..HH.l$@H
	0x0010 8d 6c 24 40 4d 8b 66 20 0f 1f 84 00 00 00 00 00  .l$@M.f ........
	0x0020 4d 85 e4 0f 85 7c 00 00 00 48 89 44 24 50 48 89  M....|...H.D$PH.
	0x0030 5c 24 58 48 89 4c 24 60 48 85 c0 75 02 eb 38 84  \$XH.L$`H..u..8.
	0x0040 00 48 8b 10 48 8b 58 08 48 8b 48 10 48 89 54 24  .H..H.X.H.H.H.T$
	0x0050 28 48 89 5c 24 30 48 89 4c 24 38 48 8b 7c 24 58  (H.\$0H.L$8H.|$X
	0x0060 48 8b 74 24 60 48 89 d0 e8 00 00 00 00 48 8b 6c  H.t$`H.......H.l
	0x0070 24 40 48 83 c4 48 c3 e8 00 00 00 00 90 48 89 44  $@H..H.......H.D
	0x0080 24 08 48 89 5c 24 10 48 89 4c 24 18 e8 00 00 00  $.H.\$.H.L$.....
	0x0090 00 48 8b 44 24 08 48 8b 5c 24 10 48 8b 4c 24 18  .H.D$.H.\$.H.L$.
	0x00a0 e9 5b ff ff ff 4c 8d 6c 24 50 4d 39 2c 24 0f 85  .[...L.l$PM9,$..
	0x00b0 75 ff ff ff 49 89 24 24 e9 6c ff ff ff           u...I.$$.l...
	rel 105+4 t=7 main.valueImpl.Method+0
	rel 120+4 t=7 runtime.panicwrap+0
	rel 141+4 t=7 runtime.morestack_noctxt+0
type:.eq.[3]interface {} STEXT dupok size=229 args=0x10 locals=0x50 funcid=0x0 align=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type:.eq.[3]interface {}(SB), DUPOK|ABIInternal, $80-16
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	199
	0x000a 00010 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000a 00010 (<autogenerated>:1)	SUBQ	$80, SP
	0x000e 00014 (<autogenerated>:1)	MOVQ	BP, 72(SP)
	0x0013 00019 (<autogenerated>:1)	LEAQ	72(SP), BP
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$0, gclocals·TjPuuCwdlCpTaRQGRKTrYw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$1, gclocals·EXTrhv4b3ahawRWAszmcVw==(SB)
	0x0018 00024 (<autogenerated>:1)	FUNCDATA	$5, type:.eq.[3]interface {}.arginfo1(SB)
	0x0018 00024 (<autogenerated>:1)	MOVQ	AX, main.p+88(SP)
	0x001d 00029 (<autogenerated>:1)	MOVQ	BX, main.q+96(SP)
	0x0022 00034 (<autogenerated>:1)	MOVB	$0, main.r+31(SP)
	0x0027 00039 (<autogenerated>:1)	MOVQ	$0, main..autotmp_3+32(SP)
	0x0030 00048 (<autogenerated>:1)	JMP	50
	0x0032 00050 (<autogenerated>:1)	CMPQ	main..autotmp_3+32(SP), $3
	0x0038 00056 (<autogenerated>:1)	JLT	60
	0x003a 00058 (<autogenerated>:1)	JMP	177
	0x003c 00060 (<autogenerated>:1)	MOVQ	main..autotmp_3+32(SP), DX
	0x0041 00065 (<autogenerated>:1)	SHLQ	$4, DX
	0x0045 00069 (<autogenerated>:1)	ADDQ	main.q+96(SP), DX
	0x004a 00074 (<autogenerated>:1)	MOVQ	(DX), SI
	0x004d 00077 (<autogenerated>:1)	MOVQ	8(DX), DX
	0x0051 00081 (<autogenerated>:1)	MOVQ	SI, main..autotmp_4+56(SP)
	0x0056 00086 (<autogenerated>:1)	MOVQ	DX, main..autotmp_4+64(SP)
	0x005b 00091 (<autogenerated>:1)	MOVQ	main..autotmp_3+32(SP), DX
	0x0060 00096 (<autogenerated>:1)	SHLQ	$4, DX
	0x0064 00100 (<autogenerated>:1)	ADDQ	main.p+88(SP), DX
	0x0069 00105 (<autogenerated>:1)	MOVQ	(DX), AX
	0x006c 00108 (<autogenerated>:1)	MOVQ	8(DX), BX
	0x0070 00112 (<autogenerated>:1)	MOVQ	AX, main..autotmp_5+40(SP)
	0x0075 00117 (<autogenerated>:1)	MOVQ	BX, main..autotmp_5+48(SP)
	0x007a 00122 (<autogenerated>:1)	NOP
	0x0080 00128 (<autogenerated>:1)	CMPQ	main..autotmp_4+56(SP), AX
	0x0085 00133 (<autogenerated>:1)	JEQ	137
	0x0087 00135 (<autogenerated>:1)	JMP	166
	0x0089 00137 (<autogenerated>:1)	MOVQ	main..autotmp_4+64(SP), CX
	0x008e 00142 (<autogenerated>:1)	PCDATA	$1, $0
	0x008e 00142 (<autogenerated>:1)	CALL	runtime.efaceeq(SB)
	0x0093 00147 (<autogenerated>:1)	TESTB	AL, AL
	0x0095 00149 (<autogenerated>:1)	JNE	153
	0x0097 00151 (<autogenerated>:1)	JMP	164
	0x0099 00153 (<autogenerated>:1)	INCQ	main..autotmp_3+32(SP)
	0x009e 00158 (<autogenerated>:1)	NOP
	0x00a0 00160 (<autogenerated>:1)	JMP	162
	0x00a2 00162 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00a2 00162 (<autogenerated>:1)	JMP	50
	0x00a4 00164 (<autogenerated>:1)	JMP	168
	0x00a6 00166 (<autogenerated>:1)	JMP	168
	0x00a8 00168 (<autogenerated>:1)	JMP	170
	0x00aa 00170 (<autogenerated>:1)	MOVB	$0, main.r+31(SP)
	0x00af 00175 (<autogenerated>:1)	JMP	184
	0x00b1 00177 (<autogenerated>:1)	MOVB	$1, main.r+31(SP)
	0x00b6 00182 (<autogenerated>:1)	JMP	184
	0x00b8 00184 (<autogenerated>:1)	MOVBLZX	main.r+31(SP), AX
	0x00bd 00189 (<autogenerated>:1)	MOVQ	72(SP), BP
	0x00c2 00194 (<autogenerated>:1)	ADDQ	$80, SP
	0x00c6 00198 (<autogenerated>:1)	RET
	0x00c7 00199 (<autogenerated>:1)	NOP
	0x00c7 00199 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00c7 00199 (<autogenerated>:1)	PCDATA	$0, $-2
	0x00c7 00199 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x00cc 00204 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x00d1 00209 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00d6 00214 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x00db 00219 (<autogenerated>:1)	MOVQ	16(SP), BX
	0x00e0 00224 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00e0 00224 (<autogenerated>:1)	JMP	0
	0x0000 49 3b 66 10 0f 86 bd 00 00 00 48 83 ec 50 48 89  I;f.......H..PH.
	0x0010 6c 24 48 48 8d 6c 24 48 48 89 44 24 58 48 89 5c  l$HH.l$HH.D$XH.\
	0x0020 24 60 c6 44 24 1f 00 48 c7 44 24 20 00 00 00 00  $`.D$..H.D$ ....
	0x0030 eb 00 48 83 7c 24 20 03 7c 02 eb 75 48 8b 54 24  ..H.|$ .|..uH.T$
	0x0040 20 48 c1 e2 04 48 03 54 24 60 48 8b 32 48 8b 52   H...H.T$`H.2H.R
	0x0050 08 48 89 74 24 38 48 89 54 24 40 48 8b 54 24 20  .H.t$8H.T$@H.T$ 
	0x0060 48 c1 e2 04 48 03 54 24 58 48 8b 02 48 8b 5a 08  H...H.T$XH..H.Z.
	0x0070 48 89 44 24 28 48 89 5c 24 30 66 0f 1f 44 00 00  H.D$(H.\$0f..D..
	0x0080 48 39 44 24 38 74 02 eb 1d 48 8b 4c 24 40 e8 00  H9D$8t...H.L$@..
	0x0090 00 00 00 84 c0 75 02 eb 0b 48 ff 44 24 20 66 90  .....u...H.D$ f.
	0x00a0 eb 00 eb 8e eb 02 eb 00 eb 00 c6 44 24 1f 00 eb  ...........D$...
	0x00b0 07 c6 44 24 1f 01 eb 00 0f b6 44 24 1f 48 8b 6c  ..D$......D$.H.l
	0x00c0 24 48 48 83 c4 50 c3 48 89 44 24 08 48 89 5c 24  $HH..P.H.D$.H.\$
	0x00d0 10 e8 00 00 00 00 48 8b 44 24 08 48 8b 5c 24 10  ......H.D$.H.\$.
	0x00e0 e9 1b ff ff ff                                   .....
	rel 143+4 t=7 runtime.efaceeq+0
	rel 210+4 t=7 runtime.morestack_noctxt+0
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:.namedata.*func(string)- SRODATA dupok size=15
	0x0000 00 0d 2a 66 75 6e 63 28 73 74 72 69 6e 67 29     ..*func(string)
type:*func(string) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 0e 4e 14 46 08 08 08 36 00 00 00 00 00 00 00 00  .N.F...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(string)-+0
	rel 48+8 t=1 type:func(string)+0
type:func(string) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8c 51 ac f7 02 08 08 33 00 00 00 00 00 00 00 00  .Q.....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(string)-+0
	rel 44+4 t=-32763 type:*func(string)+0
	rel 56+8 t=1 type:string+0
runtime.interequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.interequal+0
type:.namedata.*main.noneEmptyI- SRODATA dupok size=18
	0x0000 00 10 2a 6d 61 69 6e 2e 6e 6f 6e 65 45 6d 70 74  ..*main.noneEmpt
	0x0010 79 49                                            yI
type:*main.noneEmptyI SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 b6 fe 8f 30 08 08 08 36 00 00 00 00 00 00 00 00  ...0...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.noneEmptyI-+0
	rel 48+8 t=1 type:main.noneEmptyI+0
runtime.gcbits.0200000000000000 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
type:.importpath.main. SRODATA dupok size=6
	0x0000 00 04 6d 61 69 6e                                ..main
type:.namedata.Method. SRODATA dupok size=8
	0x0000 01 06 4d 65 74 68 6f 64                          ..Method
type:main.noneEmptyI SRODATA size=104
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 b9 4f e1 c2 07 08 08 14 00 00 00 00 00 00 00 00  .O..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.interequal·f+0
	rel 32+8 t=1 runtime.gcbits.0200000000000000+0
	rel 40+4 t=5 type:.namedata.*main.noneEmptyI-+0
	rel 44+4 t=5 type:*main.noneEmptyI+0
	rel 48+8 t=1 type:.importpath.main.+0
	rel 56+8 t=1 type:main.noneEmptyI+96
	rel 80+4 t=5 type:.importpath.main.+0
	rel 96+4 t=5 type:.namedata.Method.+0
	rel 100+4 t=5 type:func(string)+0
type:.eqfunc.main.pointerImpl SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type:.eq.main.pointerImpl+0
type:.namedata.*main.pointerImpl- SRODATA dupok size=19
	0x0000 00 11 2a 6d 61 69 6e 2e 70 6f 69 6e 74 65 72 49  ..*main.pointerI
	0x0010 6d 70 6c                                         mpl
type:.namedata.X.json:"x,omitempty" SRODATA dupok size=22
	0x0000 03 01 58 12 6a 73 6f 6e 3a 22 78 2c 6f 6d 69 74  ..X.json:"x,omit
	0x0010 65 6d 70 74 79 22                                empty"
type:.namedata.Y.json:"y,omitempty" SRODATA dupok size=22
	0x0000 03 01 59 12 6a 73 6f 6e 3a 22 79 2c 6f 6d 69 74  ..Y.json:"y,omit
	0x0010 65 6d 70 74 79 22                                empty"
type:main.pointerImpl SRODATA size=144
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 03 39 64 65 07 08 08 19 00 00 00 00 00 00 00 00  .9de............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 type:.eqfunc.main.pointerImpl+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.pointerImpl-+0
	rel 44+4 t=5 type:*main.pointerImpl+0
	rel 56+8 t=1 type:main.pointerImpl+96
	rel 80+4 t=5 type:.importpath.main.+0
	rel 96+8 t=1 type:.namedata.X.json:"x,omitempty"+0
	rel 104+8 t=1 type:string+0
	rel 120+8 t=1 type:.namedata.Y.json:"y,omitempty"+0
	rel 128+8 t=1 type:int+0
type:.namedata.*func(*main.pointerImpl, string)- SRODATA dupok size=34
	0x0000 00 20 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 70 6f  . *func(*main.po
	0x0010 69 6e 74 65 72 49 6d 70 6c 2c 20 73 74 72 69 6e  interImpl, strin
	0x0020 67 29                                            g)
type:*func(*main.pointerImpl, string) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c4 e9 8e ed 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*main.pointerImpl, string)-+0
	rel 48+8 t=1 type:func(*main.pointerImpl, string)+0
type:func(*main.pointerImpl, string) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 0a 7d e5 0d 02 08 08 33 00 00 00 00 00 00 00 00  .}.....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*main.pointerImpl, string)-+0
	rel 44+4 t=-32763 type:*func(*main.pointerImpl, string)+0
	rel 56+8 t=1 type:*main.pointerImpl+0
	rel 64+8 t=1 type:string+0
type:*main.pointerImpl SRODATA size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9f c2 b2 e0 09 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 01 00 01 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.pointerImpl-+0
	rel 48+8 t=1 type:main.pointerImpl+0
	rel 56+4 t=5 type:.importpath.main.+0
	rel 72+4 t=5 type:.namedata.Method.+0
	rel 76+4 t=26 type:func(string)+0
	rel 80+4 t=26 main.(*pointerImpl).Method+0
	rel 84+4 t=26 main.(*pointerImpl).Method+0
go:itab.*main.pointerImpl,main.noneEmptyI SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 9f c2 b2 e0 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type:main.noneEmptyI+0
	rel 8+8 t=1 type:*main.pointerImpl+0
	rel 24+8 t=-32767 main.(*pointerImpl).Method+0
type:.eqfunc.main.valueImpl SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type:.eq.main.valueImpl+0
type:.namedata.*main.valueImpl- SRODATA dupok size=17
	0x0000 00 0f 2a 6d 61 69 6e 2e 76 61 6c 75 65 49 6d 70  ..*main.valueImp
	0x0010 6c                                               l
type:.namedata.*func(*main.valueImpl, string)- SRODATA dupok size=32
	0x0000 00 1e 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 76 61  ..*func(*main.va
	0x0010 6c 75 65 49 6d 70 6c 2c 20 73 74 72 69 6e 67 29  lueImpl, string)
type:*func(*main.valueImpl, string) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fb 6e 6c d7 08 08 08 36 00 00 00 00 00 00 00 00  .nl....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*main.valueImpl, string)-+0
	rel 48+8 t=1 type:func(*main.valueImpl, string)+0
type:func(*main.valueImpl, string) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 33 18 81 65 02 08 08 33 00 00 00 00 00 00 00 00  3..e...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(*main.valueImpl, string)-+0
	rel 44+4 t=-32763 type:*func(*main.valueImpl, string)+0
	rel 56+8 t=1 type:*main.valueImpl+0
	rel 64+8 t=1 type:string+0
type:*main.valueImpl SRODATA size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 25 b4 23 e1 09 08 08 36 00 00 00 00 00 00 00 00  %.#....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 01 00 01 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.valueImpl-+0
	rel 48+8 t=1 type:main.valueImpl+0
	rel 56+4 t=5 type:.importpath.main.+0
	rel 72+4 t=5 type:.namedata.Method.+0
	rel 76+4 t=26 type:func(string)+0
	rel 80+4 t=26 main.(*valueImpl).Method+0
	rel 84+4 t=26 main.(*valueImpl).Method+0
type:.namedata.*func(main.valueImpl, string)- SRODATA dupok size=31
	0x0000 00 1d 2a 66 75 6e 63 28 6d 61 69 6e 2e 76 61 6c  ..*func(main.val
	0x0010 75 65 49 6d 70 6c 2c 20 73 74 72 69 6e 67 29     ueImpl, string)
type:*func(main.valueImpl, string) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 10 85 a3 75 08 08 08 36 00 00 00 00 00 00 00 00  ...u...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(main.valueImpl, string)-+0
	rel 48+8 t=1 type:func(main.valueImpl, string)+0
type:func(main.valueImpl, string) SRODATA dupok size=72
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 48 8b b7 d2 02 08 08 33 00 00 00 00 00 00 00 00  H......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*func(main.valueImpl, string)-+0
	rel 44+4 t=-32763 type:*func(main.valueImpl, string)+0
	rel 56+8 t=1 type:main.valueImpl+0
	rel 64+8 t=1 type:string+0
type:main.valueImpl SRODATA size=160
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fe 17 ef 47 07 08 08 19 00 00 00 00 00 00 00 00  ...G............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 01 00 01 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 type:.eqfunc.main.valueImpl+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.valueImpl-+0
	rel 44+4 t=5 type:*main.valueImpl+0
	rel 56+8 t=1 type:main.valueImpl+96
	rel 80+4 t=5 type:.importpath.main.+0
	rel 96+8 t=1 type:.namedata.X.json:"x,omitempty"+0
	rel 104+8 t=1 type:string+0
	rel 120+8 t=1 type:.namedata.Y.json:"y,omitempty"+0
	rel 128+8 t=1 type:int+0
	rel 144+4 t=5 type:.namedata.Method.+0
	rel 148+4 t=26 type:func(string)+0
	rel 152+4 t=26 main.(*valueImpl).Method+0
	rel 156+4 t=26 main.valueImpl.Method+0
go:itab.main.valueImpl,main.noneEmptyI SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 fe 17 ef 47 00 00 00 00 00 00 00 00 00 00 00 00  ...G............
	rel 0+8 t=1 type:main.noneEmptyI+0
	rel 8+8 t=1 type:main.valueImpl+0
	rel 24+8 t=-32767 main.(*valueImpl).Method+0
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go:string."NoneEmpty.Method Args: %s | NoneEmpty.X: %s | NoneEmpty.Y: %d \n" SRODATA dupok size=63
	0x0000 4e 6f 6e 65 45 6d 70 74 79 2e 4d 65 74 68 6f 64  NoneEmpty.Method
	0x0010 20 41 72 67 73 3a 20 25 73 20 7c 20 4e 6f 6e 65   Args: %s | None
	0x0020 45 6d 70 74 79 2e 58 3a 20 25 73 20 7c 20 4e 6f  Empty.X: %s | No
	0x0030 6e 65 45 6d 70 74 79 2e 59 3a 20 25 64 20 0a     neEmpty.Y: %d .
go:string."pointerImplIns" SRODATA dupok size=14
	0x0000 70 6f 69 6e 74 65 72 49 6d 70 6c 49 6e 73        pointerImplIns
go:string."valueImplIns" SRODATA dupok size=12
	0x0000 76 61 6c 75 65 49 6d 70 6c 49 6e 73              valueImplIns
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
type:.namedata.*main.emptyI- SRODATA dupok size=14
	0x0000 00 0c 2a 6d 61 69 6e 2e 65 6d 70 74 79 49        ..*main.emptyI
type:*main.emptyI SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c5 4c 1e 66 08 08 08 36 00 00 00 00 00 00 00 00  .L.f...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*main.emptyI-+0
	rel 48+8 t=1 type:main.emptyI+0
type:main.emptyI SRODATA size=96
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 03 3f 98 1f 07 08 08 14 00 00 00 00 00 00 00 00  .?..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.0200000000000000+0
	rel 40+4 t=5 type:.namedata.*main.emptyI-+0
	rel 44+4 t=5 type:*main.emptyI+0
	rel 48+8 t=1 type:.importpath.main.+0
	rel 56+8 t=1 type:main.emptyI+96
	rel 80+4 t=5 type:.importpath.main.+0
type:.eqfunc.[3]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type:.eq.[3]interface {}+0
runtime.gcbits.2a00000000000000 SRODATA dupok size=8
	0x0000 2a 00 00 00 00 00 00 00                          *.......
type:.namedata.*[3]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 33 5d 69 6e 74 65 72 66 61 63 65 20  ..*[3]interface 
	0x0010 7b 7d                                            {}
type:[3]interface {} SRODATA dupok size=72
	0x0000 30 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00  0.......0.......
	0x0010 83 2e 45 51 02 08 08 11 00 00 00 00 00 00 00 00  ..EQ............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 03 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type:.eqfunc.[3]interface {}+0
	rel 32+8 t=1 runtime.gcbits.2a00000000000000+0
	rel 40+4 t=5 type:.namedata.*[3]interface {}-+0
	rel 44+4 t=-32763 type:*[3]interface {}+0
	rel 48+8 t=1 type:interface {}+0
	rel 56+8 t=1 type:[]interface {}+0
type:*[3]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7f 88 4d c8 08 08 08 36 00 00 00 00 00 00 00 00  ..M....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[3]interface {}-+0
	rel 48+8 t=1 type:[3]interface {}+0
type:.importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals·jMEwbs2xlC8jTxDFNygHZw== SRODATA dupok size=12
	0x0000 04 00 00 00 02 00 00 00 03 01 00 00              ............
gclocals·YGcQKK9uXyy26D4rQDYqfg== SRODATA dupok size=16
	0x0000 04 00 00 00 0f 00 00 00 00 00 08 00 08 00 00 00  ................
main.(*pointerImpl).Method.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 d0 ff ff ff 30 00 00 00  ............0...
	0x0010 30 00 00 00 00 00 00 00                          0.......
	rel 20+4 t=5 runtime.gcbits.2a00000000000000+0
main.(*pointerImpl).Method.arginfo1 SRODATA static dupok size=9
	0x0000 00 08 fe 08 08 10 08 fd ff                       .........
gclocals·u/KqUuBtPVCZ8St2+IV9zQ== SRODATA dupok size=12
	0x0000 04 00 00 00 04 00 00 00 09 01 00 00              ............
gclocals·6Bpg6/3yM0XlU+cD70xNlA== SRODATA dupok size=16
	0x0000 04 00 00 00 0d 00 00 00 00 00 08 00 08 00 00 00  ................
main.valueImpl.Method.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 d0 ff ff ff 30 00 00 00  ............0...
	0x0010 30 00 00 00 00 00 00 00                          0.......
	rel 20+4 t=5 runtime.gcbits.2a00000000000000+0
main.valueImpl.Method.arginfo1 SRODATA static dupok size=17
	0x0000 fe fe 00 08 08 08 fd 10 08 fd fe 18 08 20 08 fd  ............. ..
	0x0010 ff                                               .
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·gsTd5b1infv8BfI5pCO9Hw== SRODATA dupok size=14
	0x0000 02 00 00 00 12 00 00 00 00 00 00 10 00 00        ..............
main.main.stkobj SRODATA static size=40
	0x0000 02 00 00 00 00 00 00 00 b8 ff ff ff 18 00 00 00  ................
	0x0010 08 00 00 00 00 00 00 00 d0 ff ff ff 18 00 00 00  ................
	0x0020 08 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0100000000000000+0
	rel 36+4 t=5 runtime.gcbits.0100000000000000+0
gclocals·TjPuuCwdlCpTaRQGRKTrYw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·AzW08EQV0LVfnDEAZer1Nw== SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 00                    ..........
type:.eq.main.pointerImpl.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
type:.eq.main.valueImpl.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
gclocals·jGrZsD7lYjdYP8VEa+BSQQ== SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 06 00                    ..........
main.noneEmptyI.Method.arginfo1 SRODATA static dupok size=13
	0x0000 fe 00 08 08 08 fd fe 10 08 18 08 fd ff           .............
gclocals·odYzRIjT7IX9pYG9TnNVzw== SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 00 00                    ..........
main.(*valueImpl).Method.arginfo1 SRODATA static dupok size=9
	0x0000 00 08 fe 08 08 10 08 fd ff                       .........
gclocals·EXTrhv4b3ahawRWAszmcVw== SRODATA dupok size=10
	0x0000 02 00 00 00 04 00 00 00 00 00                    ..........
type:.eq.[3]interface {}.arginfo1 SRODATA static dupok size=3
	0x0000 08 08 ff                                         ...
