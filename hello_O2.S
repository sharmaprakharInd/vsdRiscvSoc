
hello_O2.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	7c2000ef          	jal	10880 <__call_exitprocs>
   100c2:	d481a783          	lw	a5,-696(gp) # 139c0 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	1bc020ef          	jal	12288 <_exit>

000100d0 <main>:
   100d0:	6549                	lui	a0,0x12
   100d2:	1141                	addi	sp,sp,-16
   100d4:	45050513          	addi	a0,a0,1104 # 12450 <__errno+0x8>
   100d8:	c606                	sw	ra,12(sp)
   100da:	2edd                	jal	104d0 <puts>
   100dc:	a001                	j	100dc <main+0xc>

000100de <register_fini>:
   100de:	00000793          	li	a5,0
   100e2:	c791                	beqz	a5,100ee <register_fini+0x10>
   100e4:	6549                	lui	a0,0x12
   100e6:	a0050513          	addi	a0,a0,-1536 # 11a00 <__libc_fini_array>
   100ea:	0650006f          	j	1094e <atexit>
   100ee:	8082                	ret

000100f0 <_start>:
   100f0:	00004197          	auipc	gp,0x4
   100f4:	b8818193          	addi	gp,gp,-1144 # 13c78 <__global_pointer$>
   100f8:	d4818513          	addi	a0,gp,-696 # 139c0 <__stdio_exit_handler>
   100fc:	07018613          	addi	a2,gp,112 # 13ce8 <__BSS_END__>
   10100:	8e09                	sub	a2,a2,a0
   10102:	4581                	li	a1,0
   10104:	2d85                	jal	10774 <memset>
   10106:	00001517          	auipc	a0,0x1
   1010a:	84850513          	addi	a0,a0,-1976 # 1094e <atexit>
   1010e:	c519                	beqz	a0,1011c <_start+0x2c>
   10110:	00002517          	auipc	a0,0x2
   10114:	8f050513          	addi	a0,a0,-1808 # 11a00 <__libc_fini_array>
   10118:	037000ef          	jal	1094e <atexit>
   1011c:	23fd                	jal	1070a <__libc_init_array>
   1011e:	4502                	lw	a0,0(sp)
   10120:	004c                	addi	a1,sp,4
   10122:	4601                	li	a2,0
   10124:	3775                	jal	100d0 <main>
   10126:	b779                	j	100b4 <exit>

00010128 <__do_global_dtors_aux>:
   10128:	1141                	addi	sp,sp,-16
   1012a:	c422                	sw	s0,8(sp)
   1012c:	d641c783          	lbu	a5,-668(gp) # 139dc <completed.1>
   10130:	c606                	sw	ra,12(sp)
   10132:	ef91                	bnez	a5,1014e <__do_global_dtors_aux+0x26>
   10134:	00000793          	li	a5,0
   10138:	cb81                	beqz	a5,10148 <__do_global_dtors_aux+0x20>
   1013a:	6549                	lui	a0,0x12
   1013c:	46450513          	addi	a0,a0,1124 # 12464 <__EH_FRAME_BEGIN__>
   10140:	00000097          	auipc	ra,0x0
   10144:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   10148:	4785                	li	a5,1
   1014a:	d6f18223          	sb	a5,-668(gp) # 139dc <completed.1>
   1014e:	40b2                	lw	ra,12(sp)
   10150:	4422                	lw	s0,8(sp)
   10152:	0141                	addi	sp,sp,16
   10154:	8082                	ret

00010156 <frame_dummy>:
   10156:	00000793          	li	a5,0
   1015a:	cb91                	beqz	a5,1016e <frame_dummy+0x18>
   1015c:	6549                	lui	a0,0x12
   1015e:	d6818593          	addi	a1,gp,-664 # 139e0 <object.0>
   10162:	46450513          	addi	a0,a0,1124 # 12464 <__EH_FRAME_BEGIN__>
   10166:	00000317          	auipc	t1,0x0
   1016a:	00000067          	jr	zero # 0 <exit-0x100b4>
   1016e:	8082                	ret

00010170 <__fp_lock>:
   10170:	4501                	li	a0,0
   10172:	8082                	ret

00010174 <stdio_exit_handler>:
   10174:	664d                	lui	a2,0x13
   10176:	65c5                	lui	a1,0x11
   10178:	654d                	lui	a0,0x13
   1017a:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   1017e:	21058593          	addi	a1,a1,528 # 11210 <_fclose_r>
   10182:	48850513          	addi	a0,a0,1160 # 13488 <_impure_data>
   10186:	aca9                	j	103e0 <_fwalk_sglue>

00010188 <cleanup_stdio>:
   10188:	414c                	lw	a1,4(a0)
   1018a:	1141                	addi	sp,sp,-16
   1018c:	c422                	sw	s0,8(sp)
   1018e:	c606                	sw	ra,12(sp)
   10190:	d8018793          	addi	a5,gp,-640 # 139f8 <__sf>
   10194:	842a                	mv	s0,a0
   10196:	00f58463          	beq	a1,a5,1019e <cleanup_stdio+0x16>
   1019a:	076010ef          	jal	11210 <_fclose_r>
   1019e:	440c                	lw	a1,8(s0)
   101a0:	de818793          	addi	a5,gp,-536 # 13a60 <__sf+0x68>
   101a4:	00f58563          	beq	a1,a5,101ae <cleanup_stdio+0x26>
   101a8:	8522                	mv	a0,s0
   101aa:	066010ef          	jal	11210 <_fclose_r>
   101ae:	444c                	lw	a1,12(s0)
   101b0:	e5018793          	addi	a5,gp,-432 # 13ac8 <__sf+0xd0>
   101b4:	00f58863          	beq	a1,a5,101c4 <cleanup_stdio+0x3c>
   101b8:	8522                	mv	a0,s0
   101ba:	4422                	lw	s0,8(sp)
   101bc:	40b2                	lw	ra,12(sp)
   101be:	0141                	addi	sp,sp,16
   101c0:	0500106f          	j	11210 <_fclose_r>
   101c4:	40b2                	lw	ra,12(sp)
   101c6:	4422                	lw	s0,8(sp)
   101c8:	0141                	addi	sp,sp,16
   101ca:	8082                	ret

000101cc <__fp_unlock>:
   101cc:	4501                	li	a0,0
   101ce:	8082                	ret

000101d0 <global_stdio_init.part.0>:
   101d0:	1101                	addi	sp,sp,-32
   101d2:	cc22                	sw	s0,24(sp)
   101d4:	67c1                	lui	a5,0x10
   101d6:	d8018413          	addi	s0,gp,-640 # 139f8 <__sf>
   101da:	ce06                	sw	ra,28(sp)
   101dc:	ca26                	sw	s1,20(sp)
   101de:	c84a                	sw	s2,16(sp)
   101e0:	c64e                	sw	s3,12(sp)
   101e2:	c452                	sw	s4,8(sp)
   101e4:	4711                	li	a4,4
   101e6:	17478793          	addi	a5,a5,372 # 10174 <stdio_exit_handler>
   101ea:	4621                	li	a2,8
   101ec:	4581                	li	a1,0
   101ee:	ddc18513          	addi	a0,gp,-548 # 13a54 <__sf+0x5c>
   101f2:	d4f1a423          	sw	a5,-696(gp) # 139c0 <__stdio_exit_handler>
   101f6:	c458                	sw	a4,12(s0)
   101f8:	00042023          	sw	zero,0(s0)
   101fc:	00042223          	sw	zero,4(s0)
   10200:	00042423          	sw	zero,8(s0)
   10204:	06042223          	sw	zero,100(s0)
   10208:	00042823          	sw	zero,16(s0)
   1020c:	00042a23          	sw	zero,20(s0)
   10210:	00042c23          	sw	zero,24(s0)
   10214:	2385                	jal	10774 <memset>
   10216:	67c1                	lui	a5,0x10
   10218:	6a41                	lui	s4,0x10
   1021a:	69c1                	lui	s3,0x10
   1021c:	6941                	lui	s2,0x10
   1021e:	64c1                	lui	s1,0x10
   10220:	4d8a0a13          	addi	s4,s4,1240 # 104d8 <__sread>
   10224:	51298993          	addi	s3,s3,1298 # 10512 <__swrite>
   10228:	56290913          	addi	s2,s2,1378 # 10562 <__sseek>
   1022c:	59e48493          	addi	s1,s1,1438 # 1059e <__sclose>
   10230:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   10232:	4621                	li	a2,8
   10234:	4581                	li	a1,0
   10236:	e4418513          	addi	a0,gp,-444 # 13abc <__sf+0xc4>
   1023a:	d87c                	sw	a5,116(s0)
   1023c:	03442023          	sw	s4,32(s0)
   10240:	03342223          	sw	s3,36(s0)
   10244:	03242423          	sw	s2,40(s0)
   10248:	d444                	sw	s1,44(s0)
   1024a:	cc40                	sw	s0,28(s0)
   1024c:	06042423          	sw	zero,104(s0)
   10250:	06042623          	sw	zero,108(s0)
   10254:	06042823          	sw	zero,112(s0)
   10258:	0c042623          	sw	zero,204(s0)
   1025c:	06042c23          	sw	zero,120(s0)
   10260:	06042e23          	sw	zero,124(s0)
   10264:	08042023          	sw	zero,128(s0)
   10268:	2331                	jal	10774 <memset>
   1026a:	000207b7          	lui	a5,0x20
   1026e:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xc32a>
   10270:	de818713          	addi	a4,gp,-536 # 13a60 <__sf+0x68>
   10274:	eac18513          	addi	a0,gp,-340 # 13b24 <__sf+0x12c>
   10278:	4621                	li	a2,8
   1027a:	4581                	li	a1,0
   1027c:	09442423          	sw	s4,136(s0)
   10280:	09342623          	sw	s3,140(s0)
   10284:	09242823          	sw	s2,144(s0)
   10288:	08942a23          	sw	s1,148(s0)
   1028c:	0cf42e23          	sw	a5,220(s0)
   10290:	0c042823          	sw	zero,208(s0)
   10294:	0c042a23          	sw	zero,212(s0)
   10298:	0c042c23          	sw	zero,216(s0)
   1029c:	12042a23          	sw	zero,308(s0)
   102a0:	0e042023          	sw	zero,224(s0)
   102a4:	0e042223          	sw	zero,228(s0)
   102a8:	0e042423          	sw	zero,232(s0)
   102ac:	08e42223          	sw	a4,132(s0)
   102b0:	21d1                	jal	10774 <memset>
   102b2:	e5018793          	addi	a5,gp,-432 # 13ac8 <__sf+0xd0>
   102b6:	0f442823          	sw	s4,240(s0)
   102ba:	0f342a23          	sw	s3,244(s0)
   102be:	0f242c23          	sw	s2,248(s0)
   102c2:	0e942e23          	sw	s1,252(s0)
   102c6:	40f2                	lw	ra,28(sp)
   102c8:	0ef42623          	sw	a5,236(s0)
   102cc:	4462                	lw	s0,24(sp)
   102ce:	44d2                	lw	s1,20(sp)
   102d0:	4942                	lw	s2,16(sp)
   102d2:	49b2                	lw	s3,12(sp)
   102d4:	4a22                	lw	s4,8(sp)
   102d6:	6105                	addi	sp,sp,32
   102d8:	8082                	ret

000102da <__sfp>:
   102da:	d481a783          	lw	a5,-696(gp) # 139c0 <__stdio_exit_handler>
   102de:	1101                	addi	sp,sp,-32
   102e0:	c64e                	sw	s3,12(sp)
   102e2:	ce06                	sw	ra,28(sp)
   102e4:	cc22                	sw	s0,24(sp)
   102e6:	ca26                	sw	s1,20(sp)
   102e8:	c84a                	sw	s2,16(sp)
   102ea:	89aa                	mv	s3,a0
   102ec:	c7cd                	beqz	a5,10396 <__sfp+0xbc>
   102ee:	694d                	lui	s2,0x13
   102f0:	47890913          	addi	s2,s2,1144 # 13478 <__sglue>
   102f4:	54fd                	li	s1,-1
   102f6:	00492783          	lw	a5,4(s2)
   102fa:	00892403          	lw	s0,8(s2)
   102fe:	17fd                	addi	a5,a5,-1
   10300:	0007d763          	bgez	a5,1030e <__sfp+0x34>
   10304:	a8b9                	j	10362 <__sfp+0x88>
   10306:	06840413          	addi	s0,s0,104
   1030a:	04978c63          	beq	a5,s1,10362 <__sfp+0x88>
   1030e:	00c41703          	lh	a4,12(s0)
   10312:	17fd                	addi	a5,a5,-1
   10314:	fb6d                	bnez	a4,10306 <__sfp+0x2c>
   10316:	77c1                	lui	a5,0xffff0
   10318:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc319>
   1031a:	06042223          	sw	zero,100(s0)
   1031e:	00042023          	sw	zero,0(s0)
   10322:	00042423          	sw	zero,8(s0)
   10326:	00042223          	sw	zero,4(s0)
   1032a:	00042823          	sw	zero,16(s0)
   1032e:	00042a23          	sw	zero,20(s0)
   10332:	00042c23          	sw	zero,24(s0)
   10336:	c45c                	sw	a5,12(s0)
   10338:	4621                	li	a2,8
   1033a:	4581                	li	a1,0
   1033c:	05c40513          	addi	a0,s0,92
   10340:	2915                	jal	10774 <memset>
   10342:	02042823          	sw	zero,48(s0)
   10346:	02042a23          	sw	zero,52(s0)
   1034a:	04042223          	sw	zero,68(s0)
   1034e:	04042423          	sw	zero,72(s0)
   10352:	40f2                	lw	ra,28(sp)
   10354:	8522                	mv	a0,s0
   10356:	4462                	lw	s0,24(sp)
   10358:	44d2                	lw	s1,20(sp)
   1035a:	4942                	lw	s2,16(sp)
   1035c:	49b2                	lw	s3,12(sp)
   1035e:	6105                	addi	sp,sp,32
   10360:	8082                	ret
   10362:	00092403          	lw	s0,0(s2)
   10366:	c019                	beqz	s0,1036c <__sfp+0x92>
   10368:	8922                	mv	s2,s0
   1036a:	b771                	j	102f6 <__sfp+0x1c>
   1036c:	1ac00593          	li	a1,428
   10370:	854e                	mv	a0,s3
   10372:	0cf000ef          	jal	10c40 <_malloc_r>
   10376:	842a                	mv	s0,a0
   10378:	c10d                	beqz	a0,1039a <__sfp+0xc0>
   1037a:	4791                	li	a5,4
   1037c:	0531                	addi	a0,a0,12
   1037e:	00042023          	sw	zero,0(s0)
   10382:	c05c                	sw	a5,4(s0)
   10384:	c408                	sw	a0,8(s0)
   10386:	1a000613          	li	a2,416
   1038a:	4581                	li	a1,0
   1038c:	26e5                	jal	10774 <memset>
   1038e:	00892023          	sw	s0,0(s2)
   10392:	8922                	mv	s2,s0
   10394:	b78d                	j	102f6 <__sfp+0x1c>
   10396:	3d2d                	jal	101d0 <global_stdio_init.part.0>
   10398:	bf99                	j	102ee <__sfp+0x14>
   1039a:	00092023          	sw	zero,0(s2)
   1039e:	47b1                	li	a5,12
   103a0:	00f9a023          	sw	a5,0(s3)
   103a4:	b77d                	j	10352 <__sfp+0x78>

000103a6 <__sinit>:
   103a6:	595c                	lw	a5,52(a0)
   103a8:	c391                	beqz	a5,103ac <__sinit+0x6>
   103aa:	8082                	ret
   103ac:	67c1                	lui	a5,0x10
   103ae:	d481a703          	lw	a4,-696(gp) # 139c0 <__stdio_exit_handler>
   103b2:	18878793          	addi	a5,a5,392 # 10188 <cleanup_stdio>
   103b6:	d95c                	sw	a5,52(a0)
   103b8:	fb6d                	bnez	a4,103aa <__sinit+0x4>
   103ba:	bd19                	j	101d0 <global_stdio_init.part.0>

000103bc <__sfp_lock_acquire>:
   103bc:	8082                	ret

000103be <__sfp_lock_release>:
   103be:	8082                	ret

000103c0 <__fp_lock_all>:
   103c0:	664d                	lui	a2,0x13
   103c2:	65c1                	lui	a1,0x10
   103c4:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   103c8:	17058593          	addi	a1,a1,368 # 10170 <__fp_lock>
   103cc:	4501                	li	a0,0
   103ce:	a809                	j	103e0 <_fwalk_sglue>

000103d0 <__fp_unlock_all>:
   103d0:	664d                	lui	a2,0x13
   103d2:	65c1                	lui	a1,0x10
   103d4:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   103d8:	1cc58593          	addi	a1,a1,460 # 101cc <__fp_unlock>
   103dc:	4501                	li	a0,0
   103de:	a009                	j	103e0 <_fwalk_sglue>

000103e0 <_fwalk_sglue>:
   103e0:	7179                	addi	sp,sp,-48
   103e2:	d04a                	sw	s2,32(sp)
   103e4:	ce4e                	sw	s3,28(sp)
   103e6:	cc52                	sw	s4,24(sp)
   103e8:	ca56                	sw	s5,20(sp)
   103ea:	c85a                	sw	s6,16(sp)
   103ec:	c65e                	sw	s7,12(sp)
   103ee:	d606                	sw	ra,44(sp)
   103f0:	d422                	sw	s0,40(sp)
   103f2:	d226                	sw	s1,36(sp)
   103f4:	8b2a                	mv	s6,a0
   103f6:	8bae                	mv	s7,a1
   103f8:	8ab2                	mv	s5,a2
   103fa:	4a01                	li	s4,0
   103fc:	4985                	li	s3,1
   103fe:	597d                	li	s2,-1
   10400:	004aa483          	lw	s1,4(s5)
   10404:	008aa403          	lw	s0,8(s5)
   10408:	14fd                	addi	s1,s1,-1
   1040a:	0204c463          	bltz	s1,10432 <_fwalk_sglue+0x52>
   1040e:	00c45783          	lhu	a5,12(s0)
   10412:	00f9fb63          	bgeu	s3,a5,10428 <_fwalk_sglue+0x48>
   10416:	00e41783          	lh	a5,14(s0)
   1041a:	85a2                	mv	a1,s0
   1041c:	855a                	mv	a0,s6
   1041e:	01278563          	beq	a5,s2,10428 <_fwalk_sglue+0x48>
   10422:	9b82                	jalr	s7
   10424:	00aa6a33          	or	s4,s4,a0
   10428:	14fd                	addi	s1,s1,-1
   1042a:	06840413          	addi	s0,s0,104
   1042e:	ff2490e3          	bne	s1,s2,1040e <_fwalk_sglue+0x2e>
   10432:	000aaa83          	lw	s5,0(s5)
   10436:	fc0a95e3          	bnez	s5,10400 <_fwalk_sglue+0x20>
   1043a:	50b2                	lw	ra,44(sp)
   1043c:	5422                	lw	s0,40(sp)
   1043e:	5492                	lw	s1,36(sp)
   10440:	5902                	lw	s2,32(sp)
   10442:	49f2                	lw	s3,28(sp)
   10444:	4ad2                	lw	s5,20(sp)
   10446:	4b42                	lw	s6,16(sp)
   10448:	4bb2                	lw	s7,12(sp)
   1044a:	8552                	mv	a0,s4
   1044c:	4a62                	lw	s4,24(sp)
   1044e:	6145                	addi	sp,sp,48
   10450:	8082                	ret

00010452 <_puts_r>:
   10452:	7139                	addi	sp,sp,-64
   10454:	dc22                	sw	s0,56(sp)
   10456:	842a                	mv	s0,a0
   10458:	852e                	mv	a0,a1
   1045a:	da26                	sw	s1,52(sp)
   1045c:	de06                	sw	ra,60(sp)
   1045e:	84ae                	mv	s1,a1
   10460:	2e75                	jal	1081c <strlen>
   10462:	67c9                	lui	a5,0x12
   10464:	5858                	lw	a4,52(s0)
   10466:	4585                	li	a1,1
   10468:	00150813          	addi	a6,a0,1
   1046c:	46078793          	addi	a5,a5,1120 # 12460 <__errno+0x18>
   10470:	1010                	addi	a2,sp,32
   10472:	4689                	li	a3,2
   10474:	d62e                	sw	a1,44(sp)
   10476:	d026                	sw	s1,32(sp)
   10478:	d22a                	sw	a0,36(sp)
   1047a:	ce42                	sw	a6,28(sp)
   1047c:	d43e                	sw	a5,40(sp)
   1047e:	ca32                	sw	a2,20(sp)
   10480:	cc36                	sw	a3,24(sp)
   10482:	440c                	lw	a1,8(s0)
   10484:	c329                	beqz	a4,104c6 <_puts_r+0x74>
   10486:	00c59783          	lh	a5,12(a1)
   1048a:	51f8                	lw	a4,100(a1)
   1048c:	6609                	lui	a2,0x2
   1048e:	01279693          	slli	a3,a5,0x12
   10492:	0206c463          	bltz	a3,104ba <_puts_r+0x68>
   10496:	76f9                	lui	a3,0xffffe
   10498:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffea317>
   1049a:	8fd1                	or	a5,a5,a2
   1049c:	8f75                	and	a4,a4,a3
   1049e:	00f59623          	sh	a5,12(a1)
   104a2:	d1f8                	sw	a4,100(a1)
   104a4:	8522                	mv	a0,s0
   104a6:	0850                	addi	a2,sp,20
   104a8:	034010ef          	jal	114dc <__sfvwrite_r>
   104ac:	e919                	bnez	a0,104c2 <_puts_r+0x70>
   104ae:	4529                	li	a0,10
   104b0:	50f2                	lw	ra,60(sp)
   104b2:	5462                	lw	s0,56(sp)
   104b4:	54d2                	lw	s1,52(sp)
   104b6:	6121                	addi	sp,sp,64
   104b8:	8082                	ret
   104ba:	01271793          	slli	a5,a4,0x12
   104be:	fe07d3e3          	bgez	a5,104a4 <_puts_r+0x52>
   104c2:	557d                	li	a0,-1
   104c4:	b7f5                	j	104b0 <_puts_r+0x5e>
   104c6:	8522                	mv	a0,s0
   104c8:	c62e                	sw	a1,12(sp)
   104ca:	3df1                	jal	103a6 <__sinit>
   104cc:	45b2                	lw	a1,12(sp)
   104ce:	bf65                	j	10486 <_puts_r+0x34>

000104d0 <puts>:
   104d0:	85aa                	mv	a1,a0
   104d2:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   104d6:	bfb5                	j	10452 <_puts_r>

000104d8 <__sread>:
   104d8:	1141                	addi	sp,sp,-16
   104da:	c422                	sw	s0,8(sp)
   104dc:	842e                	mv	s0,a1
   104de:	00e59583          	lh	a1,14(a1)
   104e2:	c606                	sw	ra,12(sp)
   104e4:	227d                	jal	10692 <_read_r>
   104e6:	00054963          	bltz	a0,104f8 <__sread+0x20>
   104ea:	483c                	lw	a5,80(s0)
   104ec:	40b2                	lw	ra,12(sp)
   104ee:	97aa                	add	a5,a5,a0
   104f0:	c83c                	sw	a5,80(s0)
   104f2:	4422                	lw	s0,8(sp)
   104f4:	0141                	addi	sp,sp,16
   104f6:	8082                	ret
   104f8:	00c45783          	lhu	a5,12(s0)
   104fc:	777d                	lui	a4,0xfffff
   104fe:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb317>
   10500:	8ff9                	and	a5,a5,a4
   10502:	40b2                	lw	ra,12(sp)
   10504:	00f41623          	sh	a5,12(s0)
   10508:	4422                	lw	s0,8(sp)
   1050a:	0141                	addi	sp,sp,16
   1050c:	8082                	ret

0001050e <__seofread>:
   1050e:	4501                	li	a0,0
   10510:	8082                	ret

00010512 <__swrite>:
   10512:	00c59783          	lh	a5,12(a1)
   10516:	1101                	addi	sp,sp,-32
   10518:	cc22                	sw	s0,24(sp)
   1051a:	ca26                	sw	s1,20(sp)
   1051c:	c84a                	sw	s2,16(sp)
   1051e:	c64e                	sw	s3,12(sp)
   10520:	ce06                	sw	ra,28(sp)
   10522:	1007f713          	andi	a4,a5,256
   10526:	842e                	mv	s0,a1
   10528:	8932                	mv	s2,a2
   1052a:	89b6                	mv	s3,a3
   1052c:	84aa                	mv	s1,a0
   1052e:	e315                	bnez	a4,10552 <__swrite+0x40>
   10530:	777d                	lui	a4,0xfffff
   10532:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb317>
   10534:	8ff9                	and	a5,a5,a4
   10536:	00e41583          	lh	a1,14(s0)
   1053a:	00f41623          	sh	a5,12(s0)
   1053e:	4462                	lw	s0,24(sp)
   10540:	40f2                	lw	ra,28(sp)
   10542:	86ce                	mv	a3,s3
   10544:	864a                	mv	a2,s2
   10546:	49b2                	lw	s3,12(sp)
   10548:	4942                	lw	s2,16(sp)
   1054a:	8526                	mv	a0,s1
   1054c:	44d2                	lw	s1,20(sp)
   1054e:	6105                	addi	sp,sp,32
   10550:	aabd                	j	106ce <_write_r>
   10552:	00e59583          	lh	a1,14(a1)
   10556:	4689                	li	a3,2
   10558:	4601                	li	a2,0
   1055a:	28f5                	jal	10656 <_lseek_r>
   1055c:	00c41783          	lh	a5,12(s0)
   10560:	bfc1                	j	10530 <__swrite+0x1e>

00010562 <__sseek>:
   10562:	1141                	addi	sp,sp,-16
   10564:	c422                	sw	s0,8(sp)
   10566:	842e                	mv	s0,a1
   10568:	00e59583          	lh	a1,14(a1)
   1056c:	c606                	sw	ra,12(sp)
   1056e:	20e5                	jal	10656 <_lseek_r>
   10570:	577d                	li	a4,-1
   10572:	00c41783          	lh	a5,12(s0)
   10576:	00e50b63          	beq	a0,a4,1058c <__sseek+0x2a>
   1057a:	6705                	lui	a4,0x1
   1057c:	8fd9                	or	a5,a5,a4
   1057e:	40b2                	lw	ra,12(sp)
   10580:	c828                	sw	a0,80(s0)
   10582:	00f41623          	sh	a5,12(s0)
   10586:	4422                	lw	s0,8(sp)
   10588:	0141                	addi	sp,sp,16
   1058a:	8082                	ret
   1058c:	777d                	lui	a4,0xfffff
   1058e:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb317>
   10590:	8ff9                	and	a5,a5,a4
   10592:	40b2                	lw	ra,12(sp)
   10594:	00f41623          	sh	a5,12(s0)
   10598:	4422                	lw	s0,8(sp)
   1059a:	0141                	addi	sp,sp,16
   1059c:	8082                	ret

0001059e <__sclose>:
   1059e:	00e59583          	lh	a1,14(a1)
   105a2:	a009                	j	105a4 <_close_r>

000105a4 <_close_r>:
   105a4:	1141                	addi	sp,sp,-16
   105a6:	c422                	sw	s0,8(sp)
   105a8:	c226                	sw	s1,4(sp)
   105aa:	842a                	mv	s0,a0
   105ac:	852e                	mv	a0,a1
   105ae:	c606                	sw	ra,12(sp)
   105b0:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   105b4:	4ab010ef          	jal	1225e <_close>
   105b8:	57fd                	li	a5,-1
   105ba:	00f50763          	beq	a0,a5,105c8 <_close_r+0x24>
   105be:	40b2                	lw	ra,12(sp)
   105c0:	4422                	lw	s0,8(sp)
   105c2:	4492                	lw	s1,4(sp)
   105c4:	0141                	addi	sp,sp,16
   105c6:	8082                	ret
   105c8:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   105cc:	dbed                	beqz	a5,105be <_close_r+0x1a>
   105ce:	40b2                	lw	ra,12(sp)
   105d0:	c01c                	sw	a5,0(s0)
   105d2:	4422                	lw	s0,8(sp)
   105d4:	4492                	lw	s1,4(sp)
   105d6:	0141                	addi	sp,sp,16
   105d8:	8082                	ret

000105da <_reclaim_reent>:
   105da:	d3c1a783          	lw	a5,-708(gp) # 139b4 <_impure_ptr>
   105de:	06a78b63          	beq	a5,a0,10654 <_reclaim_reent+0x7a>
   105e2:	416c                	lw	a1,68(a0)
   105e4:	1101                	addi	sp,sp,-32
   105e6:	ca26                	sw	s1,20(sp)
   105e8:	ce06                	sw	ra,28(sp)
   105ea:	cc22                	sw	s0,24(sp)
   105ec:	84aa                	mv	s1,a0
   105ee:	c59d                	beqz	a1,1061c <_reclaim_reent+0x42>
   105f0:	c84a                	sw	s2,16(sp)
   105f2:	c64e                	sw	s3,12(sp)
   105f4:	4901                	li	s2,0
   105f6:	08000993          	li	s3,128
   105fa:	012587b3          	add	a5,a1,s2
   105fe:	4380                	lw	s0,0(a5)
   10600:	c419                	beqz	s0,1060e <_reclaim_reent+0x34>
   10602:	85a2                	mv	a1,s0
   10604:	4000                	lw	s0,0(s0)
   10606:	8526                	mv	a0,s1
   10608:	2931                	jal	10a24 <_free_r>
   1060a:	fc65                	bnez	s0,10602 <_reclaim_reent+0x28>
   1060c:	40ec                	lw	a1,68(s1)
   1060e:	0911                	addi	s2,s2,4
   10610:	ff3915e3          	bne	s2,s3,105fa <_reclaim_reent+0x20>
   10614:	8526                	mv	a0,s1
   10616:	2139                	jal	10a24 <_free_r>
   10618:	4942                	lw	s2,16(sp)
   1061a:	49b2                	lw	s3,12(sp)
   1061c:	5c8c                	lw	a1,56(s1)
   1061e:	c199                	beqz	a1,10624 <_reclaim_reent+0x4a>
   10620:	8526                	mv	a0,s1
   10622:	2109                	jal	10a24 <_free_r>
   10624:	40a0                	lw	s0,64(s1)
   10626:	c411                	beqz	s0,10632 <_reclaim_reent+0x58>
   10628:	85a2                	mv	a1,s0
   1062a:	4000                	lw	s0,0(s0)
   1062c:	8526                	mv	a0,s1
   1062e:	2edd                	jal	10a24 <_free_r>
   10630:	fc65                	bnez	s0,10628 <_reclaim_reent+0x4e>
   10632:	44ec                	lw	a1,76(s1)
   10634:	c199                	beqz	a1,1063a <_reclaim_reent+0x60>
   10636:	8526                	mv	a0,s1
   10638:	26f5                	jal	10a24 <_free_r>
   1063a:	58dc                	lw	a5,52(s1)
   1063c:	c799                	beqz	a5,1064a <_reclaim_reent+0x70>
   1063e:	4462                	lw	s0,24(sp)
   10640:	40f2                	lw	ra,28(sp)
   10642:	8526                	mv	a0,s1
   10644:	44d2                	lw	s1,20(sp)
   10646:	6105                	addi	sp,sp,32
   10648:	8782                	jr	a5
   1064a:	40f2                	lw	ra,28(sp)
   1064c:	4462                	lw	s0,24(sp)
   1064e:	44d2                	lw	s1,20(sp)
   10650:	6105                	addi	sp,sp,32
   10652:	8082                	ret
   10654:	8082                	ret

00010656 <_lseek_r>:
   10656:	1141                	addi	sp,sp,-16
   10658:	872e                	mv	a4,a1
   1065a:	c422                	sw	s0,8(sp)
   1065c:	c226                	sw	s1,4(sp)
   1065e:	85b2                	mv	a1,a2
   10660:	842a                	mv	s0,a0
   10662:	8636                	mv	a2,a3
   10664:	853a                	mv	a0,a4
   10666:	c606                	sw	ra,12(sp)
   10668:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   1066c:	497010ef          	jal	12302 <_lseek>
   10670:	57fd                	li	a5,-1
   10672:	00f50763          	beq	a0,a5,10680 <_lseek_r+0x2a>
   10676:	40b2                	lw	ra,12(sp)
   10678:	4422                	lw	s0,8(sp)
   1067a:	4492                	lw	s1,4(sp)
   1067c:	0141                	addi	sp,sp,16
   1067e:	8082                	ret
   10680:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   10684:	dbed                	beqz	a5,10676 <_lseek_r+0x20>
   10686:	40b2                	lw	ra,12(sp)
   10688:	c01c                	sw	a5,0(s0)
   1068a:	4422                	lw	s0,8(sp)
   1068c:	4492                	lw	s1,4(sp)
   1068e:	0141                	addi	sp,sp,16
   10690:	8082                	ret

00010692 <_read_r>:
   10692:	1141                	addi	sp,sp,-16
   10694:	872e                	mv	a4,a1
   10696:	c422                	sw	s0,8(sp)
   10698:	c226                	sw	s1,4(sp)
   1069a:	85b2                	mv	a1,a2
   1069c:	842a                	mv	s0,a0
   1069e:	8636                	mv	a2,a3
   106a0:	853a                	mv	a0,a4
   106a2:	c606                	sw	ra,12(sp)
   106a4:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   106a8:	485010ef          	jal	1232c <_read>
   106ac:	57fd                	li	a5,-1
   106ae:	00f50763          	beq	a0,a5,106bc <_read_r+0x2a>
   106b2:	40b2                	lw	ra,12(sp)
   106b4:	4422                	lw	s0,8(sp)
   106b6:	4492                	lw	s1,4(sp)
   106b8:	0141                	addi	sp,sp,16
   106ba:	8082                	ret
   106bc:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   106c0:	dbed                	beqz	a5,106b2 <_read_r+0x20>
   106c2:	40b2                	lw	ra,12(sp)
   106c4:	c01c                	sw	a5,0(s0)
   106c6:	4422                	lw	s0,8(sp)
   106c8:	4492                	lw	s1,4(sp)
   106ca:	0141                	addi	sp,sp,16
   106cc:	8082                	ret

000106ce <_write_r>:
   106ce:	1141                	addi	sp,sp,-16
   106d0:	872e                	mv	a4,a1
   106d2:	c422                	sw	s0,8(sp)
   106d4:	c226                	sw	s1,4(sp)
   106d6:	85b2                	mv	a1,a2
   106d8:	842a                	mv	s0,a0
   106da:	8636                	mv	a2,a3
   106dc:	853a                	mv	a0,a4
   106de:	c606                	sw	ra,12(sp)
   106e0:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   106e4:	4c5010ef          	jal	123a8 <_write>
   106e8:	57fd                	li	a5,-1
   106ea:	00f50763          	beq	a0,a5,106f8 <_write_r+0x2a>
   106ee:	40b2                	lw	ra,12(sp)
   106f0:	4422                	lw	s0,8(sp)
   106f2:	4492                	lw	s1,4(sp)
   106f4:	0141                	addi	sp,sp,16
   106f6:	8082                	ret
   106f8:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   106fc:	dbed                	beqz	a5,106ee <_write_r+0x20>
   106fe:	40b2                	lw	ra,12(sp)
   10700:	c01c                	sw	a5,0(s0)
   10702:	4422                	lw	s0,8(sp)
   10704:	4492                	lw	s1,4(sp)
   10706:	0141                	addi	sp,sp,16
   10708:	8082                	ret

0001070a <__libc_init_array>:
   1070a:	1141                	addi	sp,sp,-16
   1070c:	c422                	sw	s0,8(sp)
   1070e:	67cd                	lui	a5,0x13
   10710:	644d                	lui	s0,0x13
   10712:	c04a                	sw	s2,0(sp)
   10714:	46878793          	addi	a5,a5,1128 # 13468 <__init_array_start>
   10718:	46840713          	addi	a4,s0,1128 # 13468 <__init_array_start>
   1071c:	c606                	sw	ra,12(sp)
   1071e:	c226                	sw	s1,4(sp)
   10720:	40e78933          	sub	s2,a5,a4
   10724:	00e78d63          	beq	a5,a4,1073e <__libc_init_array+0x34>
   10728:	40295913          	srai	s2,s2,0x2
   1072c:	46840413          	addi	s0,s0,1128
   10730:	4481                	li	s1,0
   10732:	401c                	lw	a5,0(s0)
   10734:	0485                	addi	s1,s1,1
   10736:	0411                	addi	s0,s0,4
   10738:	9782                	jalr	a5
   1073a:	ff24ece3          	bltu	s1,s2,10732 <__libc_init_array+0x28>
   1073e:	67cd                	lui	a5,0x13
   10740:	644d                	lui	s0,0x13
   10742:	47078793          	addi	a5,a5,1136 # 13470 <__do_global_dtors_aux_fini_array_entry>
   10746:	46840713          	addi	a4,s0,1128 # 13468 <__init_array_start>
   1074a:	40e78933          	sub	s2,a5,a4
   1074e:	40295913          	srai	s2,s2,0x2
   10752:	00e78b63          	beq	a5,a4,10768 <__libc_init_array+0x5e>
   10756:	46840413          	addi	s0,s0,1128
   1075a:	4481                	li	s1,0
   1075c:	401c                	lw	a5,0(s0)
   1075e:	0485                	addi	s1,s1,1
   10760:	0411                	addi	s0,s0,4
   10762:	9782                	jalr	a5
   10764:	ff24ece3          	bltu	s1,s2,1075c <__libc_init_array+0x52>
   10768:	40b2                	lw	ra,12(sp)
   1076a:	4422                	lw	s0,8(sp)
   1076c:	4492                	lw	s1,4(sp)
   1076e:	4902                	lw	s2,0(sp)
   10770:	0141                	addi	sp,sp,16
   10772:	8082                	ret

00010774 <memset>:
   10774:	433d                	li	t1,15
   10776:	872a                	mv	a4,a0
   10778:	02c37363          	bgeu	t1,a2,1079e <memset+0x2a>
   1077c:	00f77793          	andi	a5,a4,15
   10780:	efbd                	bnez	a5,107fe <memset+0x8a>
   10782:	e5ad                	bnez	a1,107ec <memset+0x78>
   10784:	ff067693          	andi	a3,a2,-16
   10788:	8a3d                	andi	a2,a2,15
   1078a:	96ba                	add	a3,a3,a4
   1078c:	c30c                	sw	a1,0(a4)
   1078e:	c34c                	sw	a1,4(a4)
   10790:	c70c                	sw	a1,8(a4)
   10792:	c74c                	sw	a1,12(a4)
   10794:	0741                	addi	a4,a4,16
   10796:	fed76be3          	bltu	a4,a3,1078c <memset+0x18>
   1079a:	e211                	bnez	a2,1079e <memset+0x2a>
   1079c:	8082                	ret
   1079e:	40c306b3          	sub	a3,t1,a2
   107a2:	068a                	slli	a3,a3,0x2
   107a4:	00000297          	auipc	t0,0x0
   107a8:	9696                	add	a3,a3,t0
   107aa:	00a68067          	jr	10(a3)
   107ae:	00b70723          	sb	a1,14(a4)
   107b2:	00b706a3          	sb	a1,13(a4)
   107b6:	00b70623          	sb	a1,12(a4)
   107ba:	00b705a3          	sb	a1,11(a4)
   107be:	00b70523          	sb	a1,10(a4)
   107c2:	00b704a3          	sb	a1,9(a4)
   107c6:	00b70423          	sb	a1,8(a4)
   107ca:	00b703a3          	sb	a1,7(a4)
   107ce:	00b70323          	sb	a1,6(a4)
   107d2:	00b702a3          	sb	a1,5(a4)
   107d6:	00b70223          	sb	a1,4(a4)
   107da:	00b701a3          	sb	a1,3(a4)
   107de:	00b70123          	sb	a1,2(a4)
   107e2:	00b700a3          	sb	a1,1(a4)
   107e6:	00b70023          	sb	a1,0(a4)
   107ea:	8082                	ret
   107ec:	0ff5f593          	zext.b	a1,a1
   107f0:	00859693          	slli	a3,a1,0x8
   107f4:	8dd5                	or	a1,a1,a3
   107f6:	01059693          	slli	a3,a1,0x10
   107fa:	8dd5                	or	a1,a1,a3
   107fc:	b761                	j	10784 <memset+0x10>
   107fe:	00279693          	slli	a3,a5,0x2
   10802:	00000297          	auipc	t0,0x0
   10806:	9696                	add	a3,a3,t0
   10808:	8286                	mv	t0,ra
   1080a:	fa8680e7          	jalr	-88(a3)
   1080e:	8096                	mv	ra,t0
   10810:	17c1                	addi	a5,a5,-16
   10812:	8f1d                	sub	a4,a4,a5
   10814:	963e                	add	a2,a2,a5
   10816:	f8c374e3          	bgeu	t1,a2,1079e <memset+0x2a>
   1081a:	b7a5                	j	10782 <memset+0xe>

0001081c <strlen>:
   1081c:	00357793          	andi	a5,a0,3
   10820:	872a                	mv	a4,a0
   10822:	ef9d                	bnez	a5,10860 <strlen+0x44>
   10824:	7f7f86b7          	lui	a3,0x7f7f8
   10828:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4297>
   1082c:	55fd                	li	a1,-1
   1082e:	4310                	lw	a2,0(a4)
   10830:	0711                	addi	a4,a4,4
   10832:	00d677b3          	and	a5,a2,a3
   10836:	97b6                	add	a5,a5,a3
   10838:	8fd1                	or	a5,a5,a2
   1083a:	8fd5                	or	a5,a5,a3
   1083c:	feb789e3          	beq	a5,a1,1082e <strlen+0x12>
   10840:	ffc74683          	lbu	a3,-4(a4)
   10844:	40a707b3          	sub	a5,a4,a0
   10848:	ca8d                	beqz	a3,1087a <strlen+0x5e>
   1084a:	ffd74683          	lbu	a3,-3(a4)
   1084e:	c29d                	beqz	a3,10874 <strlen+0x58>
   10850:	ffe74503          	lbu	a0,-2(a4)
   10854:	00a03533          	snez	a0,a0
   10858:	953e                	add	a0,a0,a5
   1085a:	1579                	addi	a0,a0,-2
   1085c:	8082                	ret
   1085e:	d2f9                	beqz	a3,10824 <strlen+0x8>
   10860:	00074783          	lbu	a5,0(a4)
   10864:	0705                	addi	a4,a4,1
   10866:	00377693          	andi	a3,a4,3
   1086a:	fbf5                	bnez	a5,1085e <strlen+0x42>
   1086c:	8f09                	sub	a4,a4,a0
   1086e:	fff70513          	addi	a0,a4,-1
   10872:	8082                	ret
   10874:	ffd78513          	addi	a0,a5,-3
   10878:	8082                	ret
   1087a:	ffc78513          	addi	a0,a5,-4
   1087e:	8082                	ret

00010880 <__call_exitprocs>:
   10880:	7179                	addi	sp,sp,-48
   10882:	cc52                	sw	s4,24(sp)
   10884:	d04a                	sw	s2,32(sp)
   10886:	d501a903          	lw	s2,-688(gp) # 139c8 <__atexit>
   1088a:	d606                	sw	ra,44(sp)
   1088c:	04090663          	beqz	s2,108d8 <__call_exitprocs+0x58>
   10890:	ce4e                	sw	s3,28(sp)
   10892:	ca56                	sw	s5,20(sp)
   10894:	c85a                	sw	s6,16(sp)
   10896:	c65e                	sw	s7,12(sp)
   10898:	d422                	sw	s0,40(sp)
   1089a:	d226                	sw	s1,36(sp)
   1089c:	c462                	sw	s8,8(sp)
   1089e:	8b2a                	mv	s6,a0
   108a0:	8bae                	mv	s7,a1
   108a2:	59fd                	li	s3,-1
   108a4:	4a85                	li	s5,1
   108a6:	00492483          	lw	s1,4(s2)
   108aa:	fff48413          	addi	s0,s1,-1
   108ae:	00044e63          	bltz	s0,108ca <__call_exitprocs+0x4a>
   108b2:	048a                	slli	s1,s1,0x2
   108b4:	94ca                	add	s1,s1,s2
   108b6:	020b8663          	beqz	s7,108e2 <__call_exitprocs+0x62>
   108ba:	1044a783          	lw	a5,260(s1)
   108be:	03778263          	beq	a5,s7,108e2 <__call_exitprocs+0x62>
   108c2:	147d                	addi	s0,s0,-1
   108c4:	14f1                	addi	s1,s1,-4
   108c6:	ff341ae3          	bne	s0,s3,108ba <__call_exitprocs+0x3a>
   108ca:	5422                	lw	s0,40(sp)
   108cc:	5492                	lw	s1,36(sp)
   108ce:	49f2                	lw	s3,28(sp)
   108d0:	4ad2                	lw	s5,20(sp)
   108d2:	4b42                	lw	s6,16(sp)
   108d4:	4bb2                	lw	s7,12(sp)
   108d6:	4c22                	lw	s8,8(sp)
   108d8:	50b2                	lw	ra,44(sp)
   108da:	5902                	lw	s2,32(sp)
   108dc:	4a62                	lw	s4,24(sp)
   108de:	6145                	addi	sp,sp,48
   108e0:	8082                	ret
   108e2:	00492783          	lw	a5,4(s2)
   108e6:	40d4                	lw	a3,4(s1)
   108e8:	17fd                	addi	a5,a5,-1
   108ea:	04878c63          	beq	a5,s0,10942 <__call_exitprocs+0xc2>
   108ee:	0004a223          	sw	zero,4(s1)
   108f2:	c295                	beqz	a3,10916 <__call_exitprocs+0x96>
   108f4:	18892783          	lw	a5,392(s2)
   108f8:	008a9733          	sll	a4,s5,s0
   108fc:	00492c03          	lw	s8,4(s2)
   10900:	8ff9                	and	a5,a5,a4
   10902:	ef99                	bnez	a5,10920 <__call_exitprocs+0xa0>
   10904:	9682                	jalr	a3
   10906:	00492703          	lw	a4,4(s2)
   1090a:	d501a783          	lw	a5,-688(gp) # 139c8 <__atexit>
   1090e:	03871763          	bne	a4,s8,1093c <__call_exitprocs+0xbc>
   10912:	03279563          	bne	a5,s2,1093c <__call_exitprocs+0xbc>
   10916:	147d                	addi	s0,s0,-1
   10918:	14f1                	addi	s1,s1,-4
   1091a:	f9341ee3          	bne	s0,s3,108b6 <__call_exitprocs+0x36>
   1091e:	b775                	j	108ca <__call_exitprocs+0x4a>
   10920:	18c92783          	lw	a5,396(s2)
   10924:	0844a583          	lw	a1,132(s1)
   10928:	8f7d                	and	a4,a4,a5
   1092a:	ef19                	bnez	a4,10948 <__call_exitprocs+0xc8>
   1092c:	855a                	mv	a0,s6
   1092e:	9682                	jalr	a3
   10930:	00492703          	lw	a4,4(s2)
   10934:	d501a783          	lw	a5,-688(gp) # 139c8 <__atexit>
   10938:	fd870de3          	beq	a4,s8,10912 <__call_exitprocs+0x92>
   1093c:	d7d9                	beqz	a5,108ca <__call_exitprocs+0x4a>
   1093e:	893e                	mv	s2,a5
   10940:	b79d                	j	108a6 <__call_exitprocs+0x26>
   10942:	00892223          	sw	s0,4(s2)
   10946:	b775                	j	108f2 <__call_exitprocs+0x72>
   10948:	852e                	mv	a0,a1
   1094a:	9682                	jalr	a3
   1094c:	bf6d                	j	10906 <__call_exitprocs+0x86>

0001094e <atexit>:
   1094e:	85aa                	mv	a1,a0
   10950:	4681                	li	a3,0
   10952:	4601                	li	a2,0
   10954:	4501                	li	a0,0
   10956:	2a60106f          	j	11bfc <__register_exitproc>

0001095a <_malloc_trim_r>:
   1095a:	1101                	addi	sp,sp,-32
   1095c:	c64e                	sw	s3,12(sp)
   1095e:	69cd                	lui	s3,0x13
   10960:	cc22                	sw	s0,24(sp)
   10962:	ca26                	sw	s1,20(sp)
   10964:	c84a                	sw	s2,16(sp)
   10966:	c452                	sw	s4,8(sp)
   10968:	ce06                	sw	ra,28(sp)
   1096a:	8a2e                	mv	s4,a1
   1096c:	892a                	mv	s2,a0
   1096e:	5a898993          	addi	s3,s3,1448 # 135a8 <__malloc_av_>
   10972:	09b000ef          	jal	1120c <__malloc_lock>
   10976:	0089a783          	lw	a5,8(s3)
   1097a:	6405                	lui	s0,0x1
   1097c:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   1097e:	43c4                	lw	s1,4(a5)
   10980:	6785                	lui	a5,0x1
   10982:	98f1                	andi	s1,s1,-4
   10984:	9426                	add	s0,s0,s1
   10986:	41440433          	sub	s0,s0,s4
   1098a:	8031                	srli	s0,s0,0xc
   1098c:	147d                	addi	s0,s0,-1
   1098e:	0432                	slli	s0,s0,0xc
   10990:	00f44b63          	blt	s0,a5,109a6 <_malloc_trim_r+0x4c>
   10994:	4581                	li	a1,0
   10996:	854a                	mv	a0,s2
   10998:	032010ef          	jal	119ca <_sbrk_r>
   1099c:	0089a783          	lw	a5,8(s3)
   109a0:	97a6                	add	a5,a5,s1
   109a2:	00f50e63          	beq	a0,a5,109be <_malloc_trim_r+0x64>
   109a6:	854a                	mv	a0,s2
   109a8:	067000ef          	jal	1120e <__malloc_unlock>
   109ac:	40f2                	lw	ra,28(sp)
   109ae:	4462                	lw	s0,24(sp)
   109b0:	44d2                	lw	s1,20(sp)
   109b2:	4942                	lw	s2,16(sp)
   109b4:	49b2                	lw	s3,12(sp)
   109b6:	4a22                	lw	s4,8(sp)
   109b8:	4501                	li	a0,0
   109ba:	6105                	addi	sp,sp,32
   109bc:	8082                	ret
   109be:	408005b3          	neg	a1,s0
   109c2:	854a                	mv	a0,s2
   109c4:	006010ef          	jal	119ca <_sbrk_r>
   109c8:	57fd                	li	a5,-1
   109ca:	02f50963          	beq	a0,a5,109fc <_malloc_trim_r+0xa2>
   109ce:	eb818793          	addi	a5,gp,-328 # 13b30 <__malloc_current_mallinfo>
   109d2:	0089a683          	lw	a3,8(s3)
   109d6:	4398                	lw	a4,0(a5)
   109d8:	8c81                	sub	s1,s1,s0
   109da:	0014e493          	ori	s1,s1,1
   109de:	854a                	mv	a0,s2
   109e0:	8f01                	sub	a4,a4,s0
   109e2:	c2c4                	sw	s1,4(a3)
   109e4:	c398                	sw	a4,0(a5)
   109e6:	029000ef          	jal	1120e <__malloc_unlock>
   109ea:	40f2                	lw	ra,28(sp)
   109ec:	4462                	lw	s0,24(sp)
   109ee:	44d2                	lw	s1,20(sp)
   109f0:	4942                	lw	s2,16(sp)
   109f2:	49b2                	lw	s3,12(sp)
   109f4:	4a22                	lw	s4,8(sp)
   109f6:	4505                	li	a0,1
   109f8:	6105                	addi	sp,sp,32
   109fa:	8082                	ret
   109fc:	4581                	li	a1,0
   109fe:	854a                	mv	a0,s2
   10a00:	7cb000ef          	jal	119ca <_sbrk_r>
   10a04:	0089a703          	lw	a4,8(s3)
   10a08:	46bd                	li	a3,15
   10a0a:	40e507b3          	sub	a5,a0,a4
   10a0e:	f8f6dce3          	bge	a3,a5,109a6 <_malloc_trim_r+0x4c>
   10a12:	d401a603          	lw	a2,-704(gp) # 139b8 <__malloc_sbrk_base>
   10a16:	0017e793          	ori	a5,a5,1
   10a1a:	8d11                	sub	a0,a0,a2
   10a1c:	c35c                	sw	a5,4(a4)
   10a1e:	eaa1ac23          	sw	a0,-328(gp) # 13b30 <__malloc_current_mallinfo>
   10a22:	b751                	j	109a6 <_malloc_trim_r+0x4c>

00010a24 <_free_r>:
   10a24:	cdf9                	beqz	a1,10b02 <_free_r+0xde>
   10a26:	1141                	addi	sp,sp,-16
   10a28:	c422                	sw	s0,8(sp)
   10a2a:	c226                	sw	s1,4(sp)
   10a2c:	842e                	mv	s0,a1
   10a2e:	84aa                	mv	s1,a0
   10a30:	c606                	sw	ra,12(sp)
   10a32:	7da000ef          	jal	1120c <__malloc_lock>
   10a36:	ffc42503          	lw	a0,-4(s0)
   10a3a:	ff840713          	addi	a4,s0,-8
   10a3e:	65cd                	lui	a1,0x13
   10a40:	ffe57793          	andi	a5,a0,-2
   10a44:	00f70633          	add	a2,a4,a5
   10a48:	5a858593          	addi	a1,a1,1448 # 135a8 <__malloc_av_>
   10a4c:	4254                	lw	a3,4(a2)
   10a4e:	0085a803          	lw	a6,8(a1)
   10a52:	00157893          	andi	a7,a0,1
   10a56:	9af1                	andi	a3,a3,-4
   10a58:	12c80063          	beq	a6,a2,10b78 <_free_r+0x154>
   10a5c:	c254                	sw	a3,4(a2)
   10a5e:	00d60833          	add	a6,a2,a3
   10a62:	00482803          	lw	a6,4(a6)
   10a66:	00187813          	andi	a6,a6,1
   10a6a:	06089763          	bnez	a7,10ad8 <_free_r+0xb4>
   10a6e:	ff842303          	lw	t1,-8(s0)
   10a72:	654d                	lui	a0,0x13
   10a74:	5b050513          	addi	a0,a0,1456 # 135b0 <__malloc_av_+0x8>
   10a78:	40670733          	sub	a4,a4,t1
   10a7c:	00872883          	lw	a7,8(a4)
   10a80:	979a                	add	a5,a5,t1
   10a82:	0ca88e63          	beq	a7,a0,10b5e <_free_r+0x13a>
   10a86:	00c72303          	lw	t1,12(a4)
   10a8a:	0068a623          	sw	t1,12(a7)
   10a8e:	01132423          	sw	a7,8(t1) # 1016e <frame_dummy+0x18>
   10a92:	10080b63          	beqz	a6,10ba8 <_free_r+0x184>
   10a96:	0017e693          	ori	a3,a5,1
   10a9a:	c354                	sw	a3,4(a4)
   10a9c:	c21c                	sw	a5,0(a2)
   10a9e:	1ff00693          	li	a3,511
   10aa2:	06f6ea63          	bltu	a3,a5,10b16 <_free_r+0xf2>
   10aa6:	ff87f693          	andi	a3,a5,-8
   10aaa:	06a1                	addi	a3,a3,8
   10aac:	41c8                	lw	a0,4(a1)
   10aae:	96ae                	add	a3,a3,a1
   10ab0:	4290                	lw	a2,0(a3)
   10ab2:	0057d813          	srli	a6,a5,0x5
   10ab6:	4785                	li	a5,1
   10ab8:	010797b3          	sll	a5,a5,a6
   10abc:	8fc9                	or	a5,a5,a0
   10abe:	ff868513          	addi	a0,a3,-8
   10ac2:	c710                	sw	a2,8(a4)
   10ac4:	c748                	sw	a0,12(a4)
   10ac6:	c1dc                	sw	a5,4(a1)
   10ac8:	c298                	sw	a4,0(a3)
   10aca:	c658                	sw	a4,12(a2)
   10acc:	4422                	lw	s0,8(sp)
   10ace:	40b2                	lw	ra,12(sp)
   10ad0:	8526                	mv	a0,s1
   10ad2:	4492                	lw	s1,4(sp)
   10ad4:	0141                	addi	sp,sp,16
   10ad6:	af25                	j	1120e <__malloc_unlock>
   10ad8:	02081663          	bnez	a6,10b04 <_free_r+0xe0>
   10adc:	654d                	lui	a0,0x13
   10ade:	97b6                	add	a5,a5,a3
   10ae0:	5b050513          	addi	a0,a0,1456 # 135b0 <__malloc_av_+0x8>
   10ae4:	4614                	lw	a3,8(a2)
   10ae6:	0017e893          	ori	a7,a5,1
   10aea:	00f70833          	add	a6,a4,a5
   10aee:	0ea68963          	beq	a3,a0,10be0 <_free_r+0x1bc>
   10af2:	4650                	lw	a2,12(a2)
   10af4:	c6d0                	sw	a2,12(a3)
   10af6:	c614                	sw	a3,8(a2)
   10af8:	01172223          	sw	a7,4(a4)
   10afc:	00f82023          	sw	a5,0(a6)
   10b00:	bf79                	j	10a9e <_free_r+0x7a>
   10b02:	8082                	ret
   10b04:	00156513          	ori	a0,a0,1
   10b08:	fea42e23          	sw	a0,-4(s0)
   10b0c:	c21c                	sw	a5,0(a2)
   10b0e:	1ff00693          	li	a3,511
   10b12:	f8f6fae3          	bgeu	a3,a5,10aa6 <_free_r+0x82>
   10b16:	0097d693          	srli	a3,a5,0x9
   10b1a:	4611                	li	a2,4
   10b1c:	08d66863          	bltu	a2,a3,10bac <_free_r+0x188>
   10b20:	0067d693          	srli	a3,a5,0x6
   10b24:	03968513          	addi	a0,a3,57
   10b28:	050e                	slli	a0,a0,0x3
   10b2a:	03868613          	addi	a2,a3,56
   10b2e:	952e                	add	a0,a0,a1
   10b30:	4114                	lw	a3,0(a0)
   10b32:	1561                	addi	a0,a0,-8
   10b34:	00d51663          	bne	a0,a3,10b40 <_free_r+0x11c>
   10b38:	a86d                	j	10bf2 <_free_r+0x1ce>
   10b3a:	4694                	lw	a3,8(a3)
   10b3c:	00d50663          	beq	a0,a3,10b48 <_free_r+0x124>
   10b40:	42d0                	lw	a2,4(a3)
   10b42:	9a71                	andi	a2,a2,-4
   10b44:	fec7ebe3          	bltu	a5,a2,10b3a <_free_r+0x116>
   10b48:	46c8                	lw	a0,12(a3)
   10b4a:	c748                	sw	a0,12(a4)
   10b4c:	c714                	sw	a3,8(a4)
   10b4e:	4422                	lw	s0,8(sp)
   10b50:	c518                	sw	a4,8(a0)
   10b52:	40b2                	lw	ra,12(sp)
   10b54:	8526                	mv	a0,s1
   10b56:	4492                	lw	s1,4(sp)
   10b58:	c6d8                	sw	a4,12(a3)
   10b5a:	0141                	addi	sp,sp,16
   10b5c:	ad4d                	j	1120e <__malloc_unlock>
   10b5e:	06081663          	bnez	a6,10bca <_free_r+0x1a6>
   10b62:	464c                	lw	a1,12(a2)
   10b64:	4610                	lw	a2,8(a2)
   10b66:	96be                	add	a3,a3,a5
   10b68:	0016e793          	ori	a5,a3,1
   10b6c:	c64c                	sw	a1,12(a2)
   10b6e:	c590                	sw	a2,8(a1)
   10b70:	c35c                	sw	a5,4(a4)
   10b72:	9736                	add	a4,a4,a3
   10b74:	c314                	sw	a3,0(a4)
   10b76:	bf99                	j	10acc <_free_r+0xa8>
   10b78:	96be                	add	a3,a3,a5
   10b7a:	00089a63          	bnez	a7,10b8e <_free_r+0x16a>
   10b7e:	ff842503          	lw	a0,-8(s0)
   10b82:	8f09                	sub	a4,a4,a0
   10b84:	475c                	lw	a5,12(a4)
   10b86:	4710                	lw	a2,8(a4)
   10b88:	96aa                	add	a3,a3,a0
   10b8a:	c65c                	sw	a5,12(a2)
   10b8c:	c790                	sw	a2,8(a5)
   10b8e:	0016e613          	ori	a2,a3,1
   10b92:	d441a783          	lw	a5,-700(gp) # 139bc <__malloc_trim_threshold>
   10b96:	c350                	sw	a2,4(a4)
   10b98:	c598                	sw	a4,8(a1)
   10b9a:	f2f6e9e3          	bltu	a3,a5,10acc <_free_r+0xa8>
   10b9e:	d5c1a583          	lw	a1,-676(gp) # 139d4 <__malloc_top_pad>
   10ba2:	8526                	mv	a0,s1
   10ba4:	3b5d                	jal	1095a <_malloc_trim_r>
   10ba6:	b71d                	j	10acc <_free_r+0xa8>
   10ba8:	97b6                	add	a5,a5,a3
   10baa:	bf2d                	j	10ae4 <_free_r+0xc0>
   10bac:	4651                	li	a2,20
   10bae:	02d67363          	bgeu	a2,a3,10bd4 <_free_r+0x1b0>
   10bb2:	05400613          	li	a2,84
   10bb6:	04d66863          	bltu	a2,a3,10c06 <_free_r+0x1e2>
   10bba:	00c7d693          	srli	a3,a5,0xc
   10bbe:	06f68513          	addi	a0,a3,111
   10bc2:	050e                	slli	a0,a0,0x3
   10bc4:	06e68613          	addi	a2,a3,110
   10bc8:	b79d                	j	10b2e <_free_r+0x10a>
   10bca:	0017e693          	ori	a3,a5,1
   10bce:	c354                	sw	a3,4(a4)
   10bd0:	c21c                	sw	a5,0(a2)
   10bd2:	bded                	j	10acc <_free_r+0xa8>
   10bd4:	05c68513          	addi	a0,a3,92
   10bd8:	050e                	slli	a0,a0,0x3
   10bda:	05b68613          	addi	a2,a3,91
   10bde:	bf81                	j	10b2e <_free_r+0x10a>
   10be0:	c9d8                	sw	a4,20(a1)
   10be2:	c998                	sw	a4,16(a1)
   10be4:	c748                	sw	a0,12(a4)
   10be6:	c708                	sw	a0,8(a4)
   10be8:	01172223          	sw	a7,4(a4)
   10bec:	00f82023          	sw	a5,0(a6)
   10bf0:	bdf1                	j	10acc <_free_r+0xa8>
   10bf2:	0045a803          	lw	a6,4(a1)
   10bf6:	8609                	srai	a2,a2,0x2
   10bf8:	4785                	li	a5,1
   10bfa:	00c797b3          	sll	a5,a5,a2
   10bfe:	0107e7b3          	or	a5,a5,a6
   10c02:	c1dc                	sw	a5,4(a1)
   10c04:	b799                	j	10b4a <_free_r+0x126>
   10c06:	15400613          	li	a2,340
   10c0a:	00d66a63          	bltu	a2,a3,10c1e <_free_r+0x1fa>
   10c0e:	00f7d693          	srli	a3,a5,0xf
   10c12:	07868513          	addi	a0,a3,120
   10c16:	050e                	slli	a0,a0,0x3
   10c18:	07768613          	addi	a2,a3,119
   10c1c:	bf09                	j	10b2e <_free_r+0x10a>
   10c1e:	55400613          	li	a2,1364
   10c22:	00d66a63          	bltu	a2,a3,10c36 <_free_r+0x212>
   10c26:	0127d693          	srli	a3,a5,0x12
   10c2a:	07d68513          	addi	a0,a3,125
   10c2e:	050e                	slli	a0,a0,0x3
   10c30:	07c68613          	addi	a2,a3,124
   10c34:	bded                	j	10b2e <_free_r+0x10a>
   10c36:	3f800513          	li	a0,1016
   10c3a:	07e00613          	li	a2,126
   10c3e:	bdc5                	j	10b2e <_free_r+0x10a>

00010c40 <_malloc_r>:
   10c40:	7179                	addi	sp,sp,-48
   10c42:	ce4e                	sw	s3,28(sp)
   10c44:	d606                	sw	ra,44(sp)
   10c46:	d422                	sw	s0,40(sp)
   10c48:	d226                	sw	s1,36(sp)
   10c4a:	d04a                	sw	s2,32(sp)
   10c4c:	00b58793          	addi	a5,a1,11
   10c50:	4759                	li	a4,22
   10c52:	89aa                	mv	s3,a0
   10c54:	04f76763          	bltu	a4,a5,10ca2 <_malloc_r+0x62>
   10c58:	44c1                	li	s1,16
   10c5a:	16b4e763          	bltu	s1,a1,10dc8 <_malloc_r+0x188>
   10c5e:	237d                	jal	1120c <__malloc_lock>
   10c60:	47e1                	li	a5,24
   10c62:	4589                	li	a1,2
   10c64:	694d                	lui	s2,0x13
   10c66:	5a890913          	addi	s2,s2,1448 # 135a8 <__malloc_av_>
   10c6a:	97ca                	add	a5,a5,s2
   10c6c:	43c0                	lw	s0,4(a5)
   10c6e:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   10c72:	30e40663          	beq	s0,a4,10f7e <_malloc_r+0x33e>
   10c76:	405c                	lw	a5,4(s0)
   10c78:	4454                	lw	a3,12(s0)
   10c7a:	4410                	lw	a2,8(s0)
   10c7c:	9bf1                	andi	a5,a5,-4
   10c7e:	97a2                	add	a5,a5,s0
   10c80:	43d8                	lw	a4,4(a5)
   10c82:	c654                	sw	a3,12(a2)
   10c84:	c690                	sw	a2,8(a3)
   10c86:	00176713          	ori	a4,a4,1
   10c8a:	854e                	mv	a0,s3
   10c8c:	c3d8                	sw	a4,4(a5)
   10c8e:	2341                	jal	1120e <__malloc_unlock>
   10c90:	50b2                	lw	ra,44(sp)
   10c92:	00840513          	addi	a0,s0,8
   10c96:	5422                	lw	s0,40(sp)
   10c98:	5492                	lw	s1,36(sp)
   10c9a:	5902                	lw	s2,32(sp)
   10c9c:	49f2                	lw	s3,28(sp)
   10c9e:	6145                	addi	sp,sp,48
   10ca0:	8082                	ret
   10ca2:	ff87f493          	andi	s1,a5,-8
   10ca6:	1207c163          	bltz	a5,10dc8 <_malloc_r+0x188>
   10caa:	10b4ef63          	bltu	s1,a1,10dc8 <_malloc_r+0x188>
   10cae:	2bb9                	jal	1120c <__malloc_lock>
   10cb0:	1f700793          	li	a5,503
   10cb4:	3897f463          	bgeu	a5,s1,1103c <_malloc_r+0x3fc>
   10cb8:	0094d793          	srli	a5,s1,0x9
   10cbc:	12078163          	beqz	a5,10dde <_malloc_r+0x19e>
   10cc0:	4711                	li	a4,4
   10cc2:	30f76363          	bltu	a4,a5,10fc8 <_malloc_r+0x388>
   10cc6:	0064d793          	srli	a5,s1,0x6
   10cca:	03978593          	addi	a1,a5,57
   10cce:	03878813          	addi	a6,a5,56
   10cd2:	00359613          	slli	a2,a1,0x3
   10cd6:	694d                	lui	s2,0x13
   10cd8:	5a890913          	addi	s2,s2,1448 # 135a8 <__malloc_av_>
   10cdc:	964a                	add	a2,a2,s2
   10cde:	4240                	lw	s0,4(a2)
   10ce0:	1661                	addi	a2,a2,-8 # 1ff8 <exit-0xe0bc>
   10ce2:	02860163          	beq	a2,s0,10d04 <_malloc_r+0xc4>
   10ce6:	453d                	li	a0,15
   10ce8:	a039                	j	10cf6 <_malloc_r+0xb6>
   10cea:	4454                	lw	a3,12(s0)
   10cec:	26075663          	bgez	a4,10f58 <_malloc_r+0x318>
   10cf0:	00d60a63          	beq	a2,a3,10d04 <_malloc_r+0xc4>
   10cf4:	8436                	mv	s0,a3
   10cf6:	405c                	lw	a5,4(s0)
   10cf8:	9bf1                	andi	a5,a5,-4
   10cfa:	40978733          	sub	a4,a5,s1
   10cfe:	fee556e3          	bge	a0,a4,10cea <_malloc_r+0xaa>
   10d02:	85c2                	mv	a1,a6
   10d04:	01092403          	lw	s0,16(s2)
   10d08:	684d                	lui	a6,0x13
   10d0a:	5b080813          	addi	a6,a6,1456 # 135b0 <__malloc_av_+0x8>
   10d0e:	1f040b63          	beq	s0,a6,10f04 <_malloc_r+0x2c4>
   10d12:	405c                	lw	a5,4(s0)
   10d14:	46bd                	li	a3,15
   10d16:	9bf1                	andi	a5,a5,-4
   10d18:	40978733          	sub	a4,a5,s1
   10d1c:	32e6c563          	blt	a3,a4,11046 <_malloc_r+0x406>
   10d20:	01092a23          	sw	a6,20(s2)
   10d24:	01092823          	sw	a6,16(s2)
   10d28:	30075063          	bgez	a4,11028 <_malloc_r+0x3e8>
   10d2c:	1ff00713          	li	a4,511
   10d30:	00492503          	lw	a0,4(s2)
   10d34:	24f76a63          	bltu	a4,a5,10f88 <_malloc_r+0x348>
   10d38:	ff87f713          	andi	a4,a5,-8
   10d3c:	0721                	addi	a4,a4,8
   10d3e:	974a                	add	a4,a4,s2
   10d40:	4314                	lw	a3,0(a4)
   10d42:	0057d613          	srli	a2,a5,0x5
   10d46:	4785                	li	a5,1
   10d48:	00c797b3          	sll	a5,a5,a2
   10d4c:	8d5d                	or	a0,a0,a5
   10d4e:	ff870793          	addi	a5,a4,-8
   10d52:	c414                	sw	a3,8(s0)
   10d54:	c45c                	sw	a5,12(s0)
   10d56:	00a92223          	sw	a0,4(s2)
   10d5a:	c300                	sw	s0,0(a4)
   10d5c:	c6c0                	sw	s0,12(a3)
   10d5e:	4025d793          	srai	a5,a1,0x2
   10d62:	4605                	li	a2,1
   10d64:	00f61633          	sll	a2,a2,a5
   10d68:	08c56263          	bltu	a0,a2,10dec <_malloc_r+0x1ac>
   10d6c:	00a677b3          	and	a5,a2,a0
   10d70:	ef81                	bnez	a5,10d88 <_malloc_r+0x148>
   10d72:	0606                	slli	a2,a2,0x1
   10d74:	99f1                	andi	a1,a1,-4
   10d76:	00a677b3          	and	a5,a2,a0
   10d7a:	0591                	addi	a1,a1,4
   10d7c:	e791                	bnez	a5,10d88 <_malloc_r+0x148>
   10d7e:	0606                	slli	a2,a2,0x1
   10d80:	00a677b3          	and	a5,a2,a0
   10d84:	0591                	addi	a1,a1,4
   10d86:	dfe5                	beqz	a5,10d7e <_malloc_r+0x13e>
   10d88:	48bd                	li	a7,15
   10d8a:	00359313          	slli	t1,a1,0x3
   10d8e:	934a                	add	t1,t1,s2
   10d90:	851a                	mv	a0,t1
   10d92:	455c                	lw	a5,12(a0)
   10d94:	8e2e                	mv	t3,a1
   10d96:	24f50963          	beq	a0,a5,10fe8 <_malloc_r+0x3a8>
   10d9a:	43d8                	lw	a4,4(a5)
   10d9c:	843e                	mv	s0,a5
   10d9e:	47dc                	lw	a5,12(a5)
   10da0:	9b71                	andi	a4,a4,-4
   10da2:	409706b3          	sub	a3,a4,s1
   10da6:	24d8c863          	blt	a7,a3,10ff6 <_malloc_r+0x3b6>
   10daa:	fe06c6e3          	bltz	a3,10d96 <_malloc_r+0x156>
   10dae:	9722                	add	a4,a4,s0
   10db0:	4354                	lw	a3,4(a4)
   10db2:	4410                	lw	a2,8(s0)
   10db4:	854e                	mv	a0,s3
   10db6:	0016e693          	ori	a3,a3,1
   10dba:	c354                	sw	a3,4(a4)
   10dbc:	c65c                	sw	a5,12(a2)
   10dbe:	c790                	sw	a2,8(a5)
   10dc0:	21b9                	jal	1120e <__malloc_unlock>
   10dc2:	00840513          	addi	a0,s0,8
   10dc6:	a029                	j	10dd0 <_malloc_r+0x190>
   10dc8:	47b1                	li	a5,12
   10dca:	00f9a023          	sw	a5,0(s3)
   10dce:	4501                	li	a0,0
   10dd0:	50b2                	lw	ra,44(sp)
   10dd2:	5422                	lw	s0,40(sp)
   10dd4:	5492                	lw	s1,36(sp)
   10dd6:	5902                	lw	s2,32(sp)
   10dd8:	49f2                	lw	s3,28(sp)
   10dda:	6145                	addi	sp,sp,48
   10ddc:	8082                	ret
   10dde:	20000613          	li	a2,512
   10de2:	04000593          	li	a1,64
   10de6:	03f00813          	li	a6,63
   10dea:	b5f5                	j	10cd6 <_malloc_r+0x96>
   10dec:	00892403          	lw	s0,8(s2)
   10df0:	c85a                	sw	s6,16(sp)
   10df2:	405c                	lw	a5,4(s0)
   10df4:	ffc7fb13          	andi	s6,a5,-4
   10df8:	009b6763          	bltu	s6,s1,10e06 <_malloc_r+0x1c6>
   10dfc:	409b0733          	sub	a4,s6,s1
   10e00:	47bd                	li	a5,15
   10e02:	12e7c663          	blt	a5,a4,10f2e <_malloc_r+0x2ee>
   10e06:	c266                	sw	s9,4(sp)
   10e08:	ca56                	sw	s5,20(sp)
   10e0a:	d401a703          	lw	a4,-704(gp) # 139b8 <__malloc_sbrk_base>
   10e0e:	d5c1aa83          	lw	s5,-676(gp) # 139d4 <__malloc_top_pad>
   10e12:	cc52                	sw	s4,24(sp)
   10e14:	c65e                	sw	s7,12(sp)
   10e16:	57fd                	li	a5,-1
   10e18:	9aa6                	add	s5,s5,s1
   10e1a:	01640a33          	add	s4,s0,s6
   10e1e:	2cf70263          	beq	a4,a5,110e2 <_malloc_r+0x4a2>
   10e22:	6785                	lui	a5,0x1
   10e24:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   10e26:	9abe                	add	s5,s5,a5
   10e28:	77fd                	lui	a5,0xfffff
   10e2a:	00fafab3          	and	s5,s5,a5
   10e2e:	85d6                	mv	a1,s5
   10e30:	854e                	mv	a0,s3
   10e32:	399000ef          	jal	119ca <_sbrk_r>
   10e36:	57fd                	li	a5,-1
   10e38:	8baa                	mv	s7,a0
   10e3a:	32f50b63          	beq	a0,a5,11170 <_malloc_r+0x530>
   10e3e:	c462                	sw	s8,8(sp)
   10e40:	0d456563          	bltu	a0,s4,10f0a <_malloc_r+0x2ca>
   10e44:	eb818c13          	addi	s8,gp,-328 # 13b30 <__malloc_current_mallinfo>
   10e48:	000c2583          	lw	a1,0(s8)
   10e4c:	95d6                	add	a1,a1,s5
   10e4e:	00bc2023          	sw	a1,0(s8)
   10e52:	872e                	mv	a4,a1
   10e54:	32aa0263          	beq	s4,a0,11178 <_malloc_r+0x538>
   10e58:	d401a683          	lw	a3,-704(gp) # 139b8 <__malloc_sbrk_base>
   10e5c:	57fd                	li	a5,-1
   10e5e:	32f68a63          	beq	a3,a5,11192 <_malloc_r+0x552>
   10e62:	414b87b3          	sub	a5,s7,s4
   10e66:	97ba                	add	a5,a5,a4
   10e68:	00fc2023          	sw	a5,0(s8)
   10e6c:	007bfc93          	andi	s9,s7,7
   10e70:	280c8363          	beqz	s9,110f6 <_malloc_r+0x4b6>
   10e74:	419b8bb3          	sub	s7,s7,s9
   10e78:	6585                	lui	a1,0x1
   10e7a:	0ba1                	addi	s7,s7,8
   10e7c:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   10e7e:	9ade                	add	s5,s5,s7
   10e80:	419585b3          	sub	a1,a1,s9
   10e84:	415585b3          	sub	a1,a1,s5
   10e88:	05d2                	slli	a1,a1,0x14
   10e8a:	0145da13          	srli	s4,a1,0x14
   10e8e:	85d2                	mv	a1,s4
   10e90:	854e                	mv	a0,s3
   10e92:	339000ef          	jal	119ca <_sbrk_r>
   10e96:	57fd                	li	a5,-1
   10e98:	32f50963          	beq	a0,a5,111ca <_malloc_r+0x58a>
   10e9c:	41750533          	sub	a0,a0,s7
   10ea0:	01450ab3          	add	s5,a0,s4
   10ea4:	000c2703          	lw	a4,0(s8)
   10ea8:	01792423          	sw	s7,8(s2)
   10eac:	001ae793          	ori	a5,s5,1
   10eb0:	00ea05b3          	add	a1,s4,a4
   10eb4:	00fba223          	sw	a5,4(s7)
   10eb8:	00bc2023          	sw	a1,0(s8)
   10ebc:	03240563          	beq	s0,s2,10ee6 <_malloc_r+0x2a6>
   10ec0:	46bd                	li	a3,15
   10ec2:	2566fa63          	bgeu	a3,s6,11116 <_malloc_r+0x4d6>
   10ec6:	4058                	lw	a4,4(s0)
   10ec8:	ff4b0793          	addi	a5,s6,-12
   10ecc:	9be1                	andi	a5,a5,-8
   10ece:	8b05                	andi	a4,a4,1
   10ed0:	8f5d                	or	a4,a4,a5
   10ed2:	c058                	sw	a4,4(s0)
   10ed4:	4615                	li	a2,5
   10ed6:	00f40733          	add	a4,s0,a5
   10eda:	c350                	sw	a2,4(a4)
   10edc:	c710                	sw	a2,8(a4)
   10ede:	1ef6e863          	bltu	a3,a5,110ce <_malloc_r+0x48e>
   10ee2:	004ba783          	lw	a5,4(s7)
   10ee6:	d581a683          	lw	a3,-680(gp) # 139d0 <__malloc_max_sbrked_mem>
   10eea:	00b6f463          	bgeu	a3,a1,10ef2 <_malloc_r+0x2b2>
   10eee:	d4b1ac23          	sw	a1,-680(gp) # 139d0 <__malloc_max_sbrked_mem>
   10ef2:	d541a683          	lw	a3,-684(gp) # 139cc <__malloc_max_total_mem>
   10ef6:	00b6f463          	bgeu	a3,a1,10efe <_malloc_r+0x2be>
   10efa:	d4b1aa23          	sw	a1,-684(gp) # 139cc <__malloc_max_total_mem>
   10efe:	4c22                	lw	s8,8(sp)
   10f00:	845e                	mv	s0,s7
   10f02:	a811                	j	10f16 <_malloc_r+0x2d6>
   10f04:	00492503          	lw	a0,4(s2)
   10f08:	bd99                	j	10d5e <_malloc_r+0x11e>
   10f0a:	25240b63          	beq	s0,s2,11160 <_malloc_r+0x520>
   10f0e:	00892403          	lw	s0,8(s2)
   10f12:	4c22                	lw	s8,8(sp)
   10f14:	405c                	lw	a5,4(s0)
   10f16:	9bf1                	andi	a5,a5,-4
   10f18:	40978733          	sub	a4,a5,s1
   10f1c:	2097e163          	bltu	a5,s1,1111e <_malloc_r+0x4de>
   10f20:	47bd                	li	a5,15
   10f22:	1ee7de63          	bge	a5,a4,1111e <_malloc_r+0x4de>
   10f26:	4a62                	lw	s4,24(sp)
   10f28:	4ad2                	lw	s5,20(sp)
   10f2a:	4bb2                	lw	s7,12(sp)
   10f2c:	4c92                	lw	s9,4(sp)
   10f2e:	0014e793          	ori	a5,s1,1
   10f32:	c05c                	sw	a5,4(s0)
   10f34:	94a2                	add	s1,s1,s0
   10f36:	00992423          	sw	s1,8(s2)
   10f3a:	00176713          	ori	a4,a4,1
   10f3e:	854e                	mv	a0,s3
   10f40:	c0d8                	sw	a4,4(s1)
   10f42:	24f1                	jal	1120e <__malloc_unlock>
   10f44:	50b2                	lw	ra,44(sp)
   10f46:	00840513          	addi	a0,s0,8
   10f4a:	5422                	lw	s0,40(sp)
   10f4c:	4b42                	lw	s6,16(sp)
   10f4e:	5492                	lw	s1,36(sp)
   10f50:	5902                	lw	s2,32(sp)
   10f52:	49f2                	lw	s3,28(sp)
   10f54:	6145                	addi	sp,sp,48
   10f56:	8082                	ret
   10f58:	4410                	lw	a2,8(s0)
   10f5a:	97a2                	add	a5,a5,s0
   10f5c:	43d8                	lw	a4,4(a5)
   10f5e:	c654                	sw	a3,12(a2)
   10f60:	c690                	sw	a2,8(a3)
   10f62:	00176713          	ori	a4,a4,1
   10f66:	854e                	mv	a0,s3
   10f68:	c3d8                	sw	a4,4(a5)
   10f6a:	2455                	jal	1120e <__malloc_unlock>
   10f6c:	50b2                	lw	ra,44(sp)
   10f6e:	00840513          	addi	a0,s0,8
   10f72:	5422                	lw	s0,40(sp)
   10f74:	5492                	lw	s1,36(sp)
   10f76:	5902                	lw	s2,32(sp)
   10f78:	49f2                	lw	s3,28(sp)
   10f7a:	6145                	addi	sp,sp,48
   10f7c:	8082                	ret
   10f7e:	47c0                	lw	s0,12(a5)
   10f80:	0589                	addi	a1,a1,2
   10f82:	d88781e3          	beq	a5,s0,10d04 <_malloc_r+0xc4>
   10f86:	b9c5                	j	10c76 <_malloc_r+0x36>
   10f88:	0097d713          	srli	a4,a5,0x9
   10f8c:	4691                	li	a3,4
   10f8e:	0ee6f263          	bgeu	a3,a4,11072 <_malloc_r+0x432>
   10f92:	46d1                	li	a3,20
   10f94:	18e6ed63          	bltu	a3,a4,1112e <_malloc_r+0x4ee>
   10f98:	05c70613          	addi	a2,a4,92
   10f9c:	060e                	slli	a2,a2,0x3
   10f9e:	05b70693          	addi	a3,a4,91
   10fa2:	964a                	add	a2,a2,s2
   10fa4:	4218                	lw	a4,0(a2)
   10fa6:	1661                	addi	a2,a2,-8
   10fa8:	00e61663          	bne	a2,a4,10fb4 <_malloc_r+0x374>
   10fac:	aa2d                	j	110e6 <_malloc_r+0x4a6>
   10fae:	4718                	lw	a4,8(a4)
   10fb0:	00e60663          	beq	a2,a4,10fbc <_malloc_r+0x37c>
   10fb4:	4354                	lw	a3,4(a4)
   10fb6:	9af1                	andi	a3,a3,-4
   10fb8:	fed7ebe3          	bltu	a5,a3,10fae <_malloc_r+0x36e>
   10fbc:	4750                	lw	a2,12(a4)
   10fbe:	c450                	sw	a2,12(s0)
   10fc0:	c418                	sw	a4,8(s0)
   10fc2:	c600                	sw	s0,8(a2)
   10fc4:	c740                	sw	s0,12(a4)
   10fc6:	bb61                	j	10d5e <_malloc_r+0x11e>
   10fc8:	4751                	li	a4,20
   10fca:	0af77c63          	bgeu	a4,a5,11082 <_malloc_r+0x442>
   10fce:	05400713          	li	a4,84
   10fd2:	16f76a63          	bltu	a4,a5,11146 <_malloc_r+0x506>
   10fd6:	00c4d793          	srli	a5,s1,0xc
   10fda:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffeb387>
   10fde:	06e78813          	addi	a6,a5,110
   10fe2:	00359613          	slli	a2,a1,0x3
   10fe6:	b9c5                	j	10cd6 <_malloc_r+0x96>
   10fe8:	0e05                	addi	t3,t3,1
   10fea:	003e7793          	andi	a5,t3,3
   10fee:	0521                	addi	a0,a0,8
   10ff0:	c7cd                	beqz	a5,1109a <_malloc_r+0x45a>
   10ff2:	455c                	lw	a5,12(a0)
   10ff4:	b34d                	j	10d96 <_malloc_r+0x156>
   10ff6:	4410                	lw	a2,8(s0)
   10ff8:	0014e593          	ori	a1,s1,1
   10ffc:	c04c                	sw	a1,4(s0)
   10ffe:	c65c                	sw	a5,12(a2)
   11000:	c790                	sw	a2,8(a5)
   11002:	94a2                	add	s1,s1,s0
   11004:	00992a23          	sw	s1,20(s2)
   11008:	00992823          	sw	s1,16(s2)
   1100c:	0016e793          	ori	a5,a3,1
   11010:	9722                	add	a4,a4,s0
   11012:	0104a623          	sw	a6,12(s1)
   11016:	0104a423          	sw	a6,8(s1)
   1101a:	c0dc                	sw	a5,4(s1)
   1101c:	854e                	mv	a0,s3
   1101e:	c314                	sw	a3,0(a4)
   11020:	22fd                	jal	1120e <__malloc_unlock>
   11022:	00840513          	addi	a0,s0,8
   11026:	b36d                	j	10dd0 <_malloc_r+0x190>
   11028:	97a2                	add	a5,a5,s0
   1102a:	43d8                	lw	a4,4(a5)
   1102c:	854e                	mv	a0,s3
   1102e:	00176713          	ori	a4,a4,1
   11032:	c3d8                	sw	a4,4(a5)
   11034:	2ae9                	jal	1120e <__malloc_unlock>
   11036:	00840513          	addi	a0,s0,8
   1103a:	bb59                	j	10dd0 <_malloc_r+0x190>
   1103c:	0034d593          	srli	a1,s1,0x3
   11040:	00848793          	addi	a5,s1,8
   11044:	b105                	j	10c64 <_malloc_r+0x24>
   11046:	0014e693          	ori	a3,s1,1
   1104a:	c054                	sw	a3,4(s0)
   1104c:	94a2                	add	s1,s1,s0
   1104e:	00992a23          	sw	s1,20(s2)
   11052:	00992823          	sw	s1,16(s2)
   11056:	00176693          	ori	a3,a4,1
   1105a:	97a2                	add	a5,a5,s0
   1105c:	0104a623          	sw	a6,12(s1)
   11060:	0104a423          	sw	a6,8(s1)
   11064:	c0d4                	sw	a3,4(s1)
   11066:	854e                	mv	a0,s3
   11068:	c398                	sw	a4,0(a5)
   1106a:	2255                	jal	1120e <__malloc_unlock>
   1106c:	00840513          	addi	a0,s0,8
   11070:	b385                	j	10dd0 <_malloc_r+0x190>
   11072:	0067d713          	srli	a4,a5,0x6
   11076:	03970613          	addi	a2,a4,57
   1107a:	060e                	slli	a2,a2,0x3
   1107c:	03870693          	addi	a3,a4,56
   11080:	b70d                	j	10fa2 <_malloc_r+0x362>
   11082:	05c78593          	addi	a1,a5,92
   11086:	05b78813          	addi	a6,a5,91
   1108a:	00359613          	slli	a2,a1,0x3
   1108e:	b1a1                	j	10cd6 <_malloc_r+0x96>
   11090:	00832783          	lw	a5,8(t1)
   11094:	15fd                	addi	a1,a1,-1
   11096:	16679863          	bne	a5,t1,11206 <_malloc_r+0x5c6>
   1109a:	0035f793          	andi	a5,a1,3
   1109e:	1361                	addi	t1,t1,-8
   110a0:	fbe5                	bnez	a5,11090 <_malloc_r+0x450>
   110a2:	00492703          	lw	a4,4(s2)
   110a6:	fff64793          	not	a5,a2
   110aa:	8ff9                	and	a5,a5,a4
   110ac:	00f92223          	sw	a5,4(s2)
   110b0:	0606                	slli	a2,a2,0x1
   110b2:	d2c7ede3          	bltu	a5,a2,10dec <_malloc_r+0x1ac>
   110b6:	d2060be3          	beqz	a2,10dec <_malloc_r+0x1ac>
   110ba:	00f67733          	and	a4,a2,a5
   110be:	e711                	bnez	a4,110ca <_malloc_r+0x48a>
   110c0:	0606                	slli	a2,a2,0x1
   110c2:	00f67733          	and	a4,a2,a5
   110c6:	0e11                	addi	t3,t3,4
   110c8:	df65                	beqz	a4,110c0 <_malloc_r+0x480>
   110ca:	85f2                	mv	a1,t3
   110cc:	b97d                	j	10d8a <_malloc_r+0x14a>
   110ce:	00840593          	addi	a1,s0,8
   110d2:	854e                	mv	a0,s3
   110d4:	951ff0ef          	jal	10a24 <_free_r>
   110d8:	000c2583          	lw	a1,0(s8)
   110dc:	00892b83          	lw	s7,8(s2)
   110e0:	b509                	j	10ee2 <_malloc_r+0x2a2>
   110e2:	0ac1                	addi	s5,s5,16
   110e4:	b3a9                	j	10e2e <_malloc_r+0x1ee>
   110e6:	8689                	srai	a3,a3,0x2
   110e8:	4785                	li	a5,1
   110ea:	00d797b3          	sll	a5,a5,a3
   110ee:	8d5d                	or	a0,a0,a5
   110f0:	00a92223          	sw	a0,4(s2)
   110f4:	b5e9                	j	10fbe <_malloc_r+0x37e>
   110f6:	015b85b3          	add	a1,s7,s5
   110fa:	40b005b3          	neg	a1,a1
   110fe:	05d2                	slli	a1,a1,0x14
   11100:	0145da13          	srli	s4,a1,0x14
   11104:	85d2                	mv	a1,s4
   11106:	854e                	mv	a0,s3
   11108:	0c3000ef          	jal	119ca <_sbrk_r>
   1110c:	57fd                	li	a5,-1
   1110e:	d8f517e3          	bne	a0,a5,10e9c <_malloc_r+0x25c>
   11112:	4a01                	li	s4,0
   11114:	bb41                	j	10ea4 <_malloc_r+0x264>
   11116:	4c22                	lw	s8,8(sp)
   11118:	4785                	li	a5,1
   1111a:	00fba223          	sw	a5,4(s7)
   1111e:	854e                	mv	a0,s3
   11120:	20fd                	jal	1120e <__malloc_unlock>
   11122:	4a62                	lw	s4,24(sp)
   11124:	4ad2                	lw	s5,20(sp)
   11126:	4b42                	lw	s6,16(sp)
   11128:	4bb2                	lw	s7,12(sp)
   1112a:	4c92                	lw	s9,4(sp)
   1112c:	b14d                	j	10dce <_malloc_r+0x18e>
   1112e:	05400693          	li	a3,84
   11132:	06e6e363          	bltu	a3,a4,11198 <_malloc_r+0x558>
   11136:	00c7d713          	srli	a4,a5,0xc
   1113a:	06f70613          	addi	a2,a4,111
   1113e:	060e                	slli	a2,a2,0x3
   11140:	06e70693          	addi	a3,a4,110
   11144:	bdb9                	j	10fa2 <_malloc_r+0x362>
   11146:	15400713          	li	a4,340
   1114a:	06f76363          	bltu	a4,a5,111b0 <_malloc_r+0x570>
   1114e:	00f4d793          	srli	a5,s1,0xf
   11152:	07878593          	addi	a1,a5,120
   11156:	07778813          	addi	a6,a5,119
   1115a:	00359613          	slli	a2,a1,0x3
   1115e:	bea5                	j	10cd6 <_malloc_r+0x96>
   11160:	eb818c13          	addi	s8,gp,-328 # 13b30 <__malloc_current_mallinfo>
   11164:	000c2703          	lw	a4,0(s8)
   11168:	9756                	add	a4,a4,s5
   1116a:	00ec2023          	sw	a4,0(s8)
   1116e:	b1ed                	j	10e58 <_malloc_r+0x218>
   11170:	00892403          	lw	s0,8(s2)
   11174:	405c                	lw	a5,4(s0)
   11176:	b345                	j	10f16 <_malloc_r+0x2d6>
   11178:	01451793          	slli	a5,a0,0x14
   1117c:	cc079ee3          	bnez	a5,10e58 <_malloc_r+0x218>
   11180:	00892b83          	lw	s7,8(s2)
   11184:	015b07b3          	add	a5,s6,s5
   11188:	0017e793          	ori	a5,a5,1
   1118c:	00fba223          	sw	a5,4(s7)
   11190:	bb99                	j	10ee6 <_malloc_r+0x2a6>
   11192:	d571a023          	sw	s7,-704(gp) # 139b8 <__malloc_sbrk_base>
   11196:	b9d9                	j	10e6c <_malloc_r+0x22c>
   11198:	15400693          	li	a3,340
   1119c:	02e6ed63          	bltu	a3,a4,111d6 <_malloc_r+0x596>
   111a0:	00f7d713          	srli	a4,a5,0xf
   111a4:	07870613          	addi	a2,a4,120
   111a8:	060e                	slli	a2,a2,0x3
   111aa:	07770693          	addi	a3,a4,119
   111ae:	bbd5                	j	10fa2 <_malloc_r+0x362>
   111b0:	55400713          	li	a4,1364
   111b4:	02f76d63          	bltu	a4,a5,111ee <_malloc_r+0x5ae>
   111b8:	0124d793          	srli	a5,s1,0x12
   111bc:	07d78593          	addi	a1,a5,125
   111c0:	07c78813          	addi	a6,a5,124
   111c4:	00359613          	slli	a2,a1,0x3
   111c8:	b639                	j	10cd6 <_malloc_r+0x96>
   111ca:	1ce1                	addi	s9,s9,-8
   111cc:	9ae6                	add	s5,s5,s9
   111ce:	417a8ab3          	sub	s5,s5,s7
   111d2:	4a01                	li	s4,0
   111d4:	b9c1                	j	10ea4 <_malloc_r+0x264>
   111d6:	55400693          	li	a3,1364
   111da:	02e6e163          	bltu	a3,a4,111fc <_malloc_r+0x5bc>
   111de:	0127d713          	srli	a4,a5,0x12
   111e2:	07d70613          	addi	a2,a4,125
   111e6:	060e                	slli	a2,a2,0x3
   111e8:	07c70693          	addi	a3,a4,124
   111ec:	bb5d                	j	10fa2 <_malloc_r+0x362>
   111ee:	3f800613          	li	a2,1016
   111f2:	07f00593          	li	a1,127
   111f6:	07e00813          	li	a6,126
   111fa:	bcf1                	j	10cd6 <_malloc_r+0x96>
   111fc:	3f800613          	li	a2,1016
   11200:	07e00693          	li	a3,126
   11204:	bb79                	j	10fa2 <_malloc_r+0x362>
   11206:	00492783          	lw	a5,4(s2)
   1120a:	b55d                	j	110b0 <_malloc_r+0x470>

0001120c <__malloc_lock>:
   1120c:	8082                	ret

0001120e <__malloc_unlock>:
   1120e:	8082                	ret

00011210 <_fclose_r>:
   11210:	1141                	addi	sp,sp,-16
   11212:	c606                	sw	ra,12(sp)
   11214:	c04a                	sw	s2,0(sp)
   11216:	cd89                	beqz	a1,11230 <_fclose_r+0x20>
   11218:	c422                	sw	s0,8(sp)
   1121a:	c226                	sw	s1,4(sp)
   1121c:	842e                	mv	s0,a1
   1121e:	84aa                	mv	s1,a0
   11220:	c119                	beqz	a0,11226 <_fclose_r+0x16>
   11222:	595c                	lw	a5,52(a0)
   11224:	c7d1                	beqz	a5,112b0 <_fclose_r+0xa0>
   11226:	00c41783          	lh	a5,12(s0)
   1122a:	eb89                	bnez	a5,1123c <_fclose_r+0x2c>
   1122c:	4422                	lw	s0,8(sp)
   1122e:	4492                	lw	s1,4(sp)
   11230:	40b2                	lw	ra,12(sp)
   11232:	4901                	li	s2,0
   11234:	854a                	mv	a0,s2
   11236:	4902                	lw	s2,0(sp)
   11238:	0141                	addi	sp,sp,16
   1123a:	8082                	ret
   1123c:	85a2                	mv	a1,s0
   1123e:	8526                	mv	a0,s1
   11240:	28bd                	jal	112be <__sflush_r>
   11242:	545c                	lw	a5,44(s0)
   11244:	892a                	mv	s2,a0
   11246:	c791                	beqz	a5,11252 <_fclose_r+0x42>
   11248:	4c4c                	lw	a1,28(s0)
   1124a:	8526                	mv	a0,s1
   1124c:	9782                	jalr	a5
   1124e:	04054663          	bltz	a0,1129a <_fclose_r+0x8a>
   11252:	00c45783          	lhu	a5,12(s0)
   11256:	0807f793          	andi	a5,a5,128
   1125a:	e7b1                	bnez	a5,112a6 <_fclose_r+0x96>
   1125c:	580c                	lw	a1,48(s0)
   1125e:	c991                	beqz	a1,11272 <_fclose_r+0x62>
   11260:	04040793          	addi	a5,s0,64
   11264:	00f58563          	beq	a1,a5,1126e <_fclose_r+0x5e>
   11268:	8526                	mv	a0,s1
   1126a:	fbaff0ef          	jal	10a24 <_free_r>
   1126e:	02042823          	sw	zero,48(s0)
   11272:	406c                	lw	a1,68(s0)
   11274:	c591                	beqz	a1,11280 <_fclose_r+0x70>
   11276:	8526                	mv	a0,s1
   11278:	facff0ef          	jal	10a24 <_free_r>
   1127c:	04042223          	sw	zero,68(s0)
   11280:	93cff0ef          	jal	103bc <__sfp_lock_acquire>
   11284:	00041623          	sh	zero,12(s0)
   11288:	936ff0ef          	jal	103be <__sfp_lock_release>
   1128c:	40b2                	lw	ra,12(sp)
   1128e:	4422                	lw	s0,8(sp)
   11290:	4492                	lw	s1,4(sp)
   11292:	854a                	mv	a0,s2
   11294:	4902                	lw	s2,0(sp)
   11296:	0141                	addi	sp,sp,16
   11298:	8082                	ret
   1129a:	00c45783          	lhu	a5,12(s0)
   1129e:	597d                	li	s2,-1
   112a0:	0807f793          	andi	a5,a5,128
   112a4:	dfc5                	beqz	a5,1125c <_fclose_r+0x4c>
   112a6:	480c                	lw	a1,16(s0)
   112a8:	8526                	mv	a0,s1
   112aa:	f7aff0ef          	jal	10a24 <_free_r>
   112ae:	b77d                	j	1125c <_fclose_r+0x4c>
   112b0:	8f6ff0ef          	jal	103a6 <__sinit>
   112b4:	bf8d                	j	11226 <_fclose_r+0x16>

000112b6 <fclose>:
   112b6:	85aa                	mv	a1,a0
   112b8:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   112bc:	bf91                	j	11210 <_fclose_r>

000112be <__sflush_r>:
   112be:	00c59703          	lh	a4,12(a1)
   112c2:	1101                	addi	sp,sp,-32
   112c4:	cc22                	sw	s0,24(sp)
   112c6:	c64e                	sw	s3,12(sp)
   112c8:	ce06                	sw	ra,28(sp)
   112ca:	00877793          	andi	a5,a4,8
   112ce:	842e                	mv	s0,a1
   112d0:	89aa                	mv	s3,a0
   112d2:	e7e1                	bnez	a5,1139a <__sflush_r+0xdc>
   112d4:	6785                	lui	a5,0x1
   112d6:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   112da:	41d4                	lw	a3,4(a1)
   112dc:	8fd9                	or	a5,a5,a4
   112de:	00f59623          	sh	a5,12(a1)
   112e2:	10d05963          	blez	a3,113f4 <__sflush_r+0x136>
   112e6:	02842803          	lw	a6,40(s0)
   112ea:	0a080263          	beqz	a6,1138e <__sflush_r+0xd0>
   112ee:	ca26                	sw	s1,20(sp)
   112f0:	01371693          	slli	a3,a4,0x13
   112f4:	0009a483          	lw	s1,0(s3)
   112f8:	0009a023          	sw	zero,0(s3)
   112fc:	1006c363          	bltz	a3,11402 <__sflush_r+0x144>
   11300:	4c4c                	lw	a1,28(s0)
   11302:	4601                	li	a2,0
   11304:	4685                	li	a3,1
   11306:	854e                	mv	a0,s3
   11308:	9802                	jalr	a6
   1130a:	57fd                	li	a5,-1
   1130c:	862a                	mv	a2,a0
   1130e:	12f50163          	beq	a0,a5,11430 <__sflush_r+0x172>
   11312:	00c41783          	lh	a5,12(s0)
   11316:	02842803          	lw	a6,40(s0)
   1131a:	8b91                	andi	a5,a5,4
   1131c:	c799                	beqz	a5,1132a <__sflush_r+0x6c>
   1131e:	4058                	lw	a4,4(s0)
   11320:	581c                	lw	a5,48(s0)
   11322:	8e19                	sub	a2,a2,a4
   11324:	c399                	beqz	a5,1132a <__sflush_r+0x6c>
   11326:	5c5c                	lw	a5,60(s0)
   11328:	8e1d                	sub	a2,a2,a5
   1132a:	4c4c                	lw	a1,28(s0)
   1132c:	4681                	li	a3,0
   1132e:	854e                	mv	a0,s3
   11330:	9802                	jalr	a6
   11332:	577d                	li	a4,-1
   11334:	00c41783          	lh	a5,12(s0)
   11338:	0ce51763          	bne	a0,a4,11406 <__sflush_r+0x148>
   1133c:	0009a683          	lw	a3,0(s3)
   11340:	4775                	li	a4,29
   11342:	10d76363          	bltu	a4,a3,11448 <__sflush_r+0x18a>
   11346:	20400737          	lui	a4,0x20400
   1134a:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec319>
   1134c:	00d75733          	srl	a4,a4,a3
   11350:	8b05                	andi	a4,a4,1
   11352:	cb7d                	beqz	a4,11448 <__sflush_r+0x18a>
   11354:	4810                	lw	a2,16(s0)
   11356:	777d                	lui	a4,0xfffff
   11358:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebb17>
   1135c:	8f7d                	and	a4,a4,a5
   1135e:	00e41623          	sh	a4,12(s0)
   11362:	00042223          	sw	zero,4(s0)
   11366:	c010                	sw	a2,0(s0)
   11368:	01379713          	slli	a4,a5,0x13
   1136c:	00075363          	bgez	a4,11372 <__sflush_r+0xb4>
   11370:	cacd                	beqz	a3,11422 <__sflush_r+0x164>
   11372:	580c                	lw	a1,48(s0)
   11374:	0099a023          	sw	s1,0(s3)
   11378:	c9d5                	beqz	a1,1142c <__sflush_r+0x16e>
   1137a:	04040793          	addi	a5,s0,64
   1137e:	00f58563          	beq	a1,a5,11388 <__sflush_r+0xca>
   11382:	854e                	mv	a0,s3
   11384:	ea0ff0ef          	jal	10a24 <_free_r>
   11388:	44d2                	lw	s1,20(sp)
   1138a:	02042823          	sw	zero,48(s0)
   1138e:	40f2                	lw	ra,28(sp)
   11390:	4462                	lw	s0,24(sp)
   11392:	49b2                	lw	s3,12(sp)
   11394:	4501                	li	a0,0
   11396:	6105                	addi	sp,sp,32
   11398:	8082                	ret
   1139a:	c84a                	sw	s2,16(sp)
   1139c:	0105a903          	lw	s2,16(a1)
   113a0:	04090f63          	beqz	s2,113fe <__sflush_r+0x140>
   113a4:	ca26                	sw	s1,20(sp)
   113a6:	4184                	lw	s1,0(a1)
   113a8:	8b0d                	andi	a4,a4,3
   113aa:	0125a023          	sw	s2,0(a1)
   113ae:	412484b3          	sub	s1,s1,s2
   113b2:	4781                	li	a5,0
   113b4:	e311                	bnez	a4,113b8 <__sflush_r+0xfa>
   113b6:	49dc                	lw	a5,20(a1)
   113b8:	c41c                	sw	a5,8(s0)
   113ba:	00904663          	bgtz	s1,113c6 <__sflush_r+0x108>
   113be:	a83d                	j	113fc <__sflush_r+0x13e>
   113c0:	992a                	add	s2,s2,a0
   113c2:	02905d63          	blez	s1,113fc <__sflush_r+0x13e>
   113c6:	505c                	lw	a5,36(s0)
   113c8:	4c4c                	lw	a1,28(s0)
   113ca:	86a6                	mv	a3,s1
   113cc:	864a                	mv	a2,s2
   113ce:	854e                	mv	a0,s3
   113d0:	9782                	jalr	a5
   113d2:	8c89                	sub	s1,s1,a0
   113d4:	fea046e3          	bgtz	a0,113c0 <__sflush_r+0x102>
   113d8:	00c41783          	lh	a5,12(s0)
   113dc:	4942                	lw	s2,16(sp)
   113de:	0407e793          	ori	a5,a5,64
   113e2:	40f2                	lw	ra,28(sp)
   113e4:	00f41623          	sh	a5,12(s0)
   113e8:	4462                	lw	s0,24(sp)
   113ea:	44d2                	lw	s1,20(sp)
   113ec:	49b2                	lw	s3,12(sp)
   113ee:	557d                	li	a0,-1
   113f0:	6105                	addi	sp,sp,32
   113f2:	8082                	ret
   113f4:	5dd4                	lw	a3,60(a1)
   113f6:	eed048e3          	bgtz	a3,112e6 <__sflush_r+0x28>
   113fa:	bf51                	j	1138e <__sflush_r+0xd0>
   113fc:	44d2                	lw	s1,20(sp)
   113fe:	4942                	lw	s2,16(sp)
   11400:	b779                	j	1138e <__sflush_r+0xd0>
   11402:	4830                	lw	a2,80(s0)
   11404:	bf19                	j	1131a <__sflush_r+0x5c>
   11406:	4814                	lw	a3,16(s0)
   11408:	777d                	lui	a4,0xfffff
   1140a:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebb17>
   1140e:	8f7d                	and	a4,a4,a5
   11410:	00e41623          	sh	a4,12(s0)
   11414:	00042223          	sw	zero,4(s0)
   11418:	c014                	sw	a3,0(s0)
   1141a:	01379713          	slli	a4,a5,0x13
   1141e:	f4075ae3          	bgez	a4,11372 <__sflush_r+0xb4>
   11422:	580c                	lw	a1,48(s0)
   11424:	c828                	sw	a0,80(s0)
   11426:	0099a023          	sw	s1,0(s3)
   1142a:	f9a1                	bnez	a1,1137a <__sflush_r+0xbc>
   1142c:	44d2                	lw	s1,20(sp)
   1142e:	b785                	j	1138e <__sflush_r+0xd0>
   11430:	0009a783          	lw	a5,0(s3)
   11434:	ec078fe3          	beqz	a5,11312 <__sflush_r+0x54>
   11438:	4775                	li	a4,29
   1143a:	00e78a63          	beq	a5,a4,1144e <__sflush_r+0x190>
   1143e:	4759                	li	a4,22
   11440:	00e78763          	beq	a5,a4,1144e <__sflush_r+0x190>
   11444:	00c41783          	lh	a5,12(s0)
   11448:	0407e793          	ori	a5,a5,64
   1144c:	bf59                	j	113e2 <__sflush_r+0x124>
   1144e:	0099a023          	sw	s1,0(s3)
   11452:	44d2                	lw	s1,20(sp)
   11454:	bf2d                	j	1138e <__sflush_r+0xd0>

00011456 <_fflush_r>:
   11456:	1101                	addi	sp,sp,-32
   11458:	cc22                	sw	s0,24(sp)
   1145a:	ce06                	sw	ra,28(sp)
   1145c:	842a                	mv	s0,a0
   1145e:	c119                	beqz	a0,11464 <_fflush_r+0xe>
   11460:	595c                	lw	a5,52(a0)
   11462:	cf91                	beqz	a5,1147e <_fflush_r+0x28>
   11464:	00c59783          	lh	a5,12(a1)
   11468:	e791                	bnez	a5,11474 <_fflush_r+0x1e>
   1146a:	40f2                	lw	ra,28(sp)
   1146c:	4462                	lw	s0,24(sp)
   1146e:	4501                	li	a0,0
   11470:	6105                	addi	sp,sp,32
   11472:	8082                	ret
   11474:	8522                	mv	a0,s0
   11476:	4462                	lw	s0,24(sp)
   11478:	40f2                	lw	ra,28(sp)
   1147a:	6105                	addi	sp,sp,32
   1147c:	b589                	j	112be <__sflush_r>
   1147e:	c62e                	sw	a1,12(sp)
   11480:	f27fe0ef          	jal	103a6 <__sinit>
   11484:	45b2                	lw	a1,12(sp)
   11486:	bff9                	j	11464 <_fflush_r+0xe>

00011488 <fflush>:
   11488:	cd05                	beqz	a0,114c0 <fflush+0x38>
   1148a:	85aa                	mv	a1,a0
   1148c:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   11490:	c119                	beqz	a0,11496 <fflush+0xe>
   11492:	595c                	lw	a5,52(a0)
   11494:	c799                	beqz	a5,114a2 <fflush+0x1a>
   11496:	00c59783          	lh	a5,12(a1)
   1149a:	e399                	bnez	a5,114a0 <fflush+0x18>
   1149c:	4501                	li	a0,0
   1149e:	8082                	ret
   114a0:	bd39                	j	112be <__sflush_r>
   114a2:	1101                	addi	sp,sp,-32
   114a4:	c62e                	sw	a1,12(sp)
   114a6:	c42a                	sw	a0,8(sp)
   114a8:	ce06                	sw	ra,28(sp)
   114aa:	efdfe0ef          	jal	103a6 <__sinit>
   114ae:	45b2                	lw	a1,12(sp)
   114b0:	4522                	lw	a0,8(sp)
   114b2:	00c59783          	lh	a5,12(a1)
   114b6:	e385                	bnez	a5,114d6 <fflush+0x4e>
   114b8:	40f2                	lw	ra,28(sp)
   114ba:	4501                	li	a0,0
   114bc:	6105                	addi	sp,sp,32
   114be:	8082                	ret
   114c0:	664d                	lui	a2,0x13
   114c2:	65c5                	lui	a1,0x11
   114c4:	654d                	lui	a0,0x13
   114c6:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   114ca:	45658593          	addi	a1,a1,1110 # 11456 <_fflush_r>
   114ce:	48850513          	addi	a0,a0,1160 # 13488 <_impure_data>
   114d2:	f0ffe06f          	j	103e0 <_fwalk_sglue>
   114d6:	40f2                	lw	ra,28(sp)
   114d8:	6105                	addi	sp,sp,32
   114da:	b3d5                	j	112be <__sflush_r>

000114dc <__sfvwrite_r>:
   114dc:	461c                	lw	a5,8(a2)
   114de:	18078a63          	beqz	a5,11672 <__sfvwrite_r+0x196>
   114e2:	00c59703          	lh	a4,12(a1)
   114e6:	7179                	addi	sp,sp,-48
   114e8:	d422                	sw	s0,40(sp)
   114ea:	cc52                	sw	s4,24(sp)
   114ec:	ca56                	sw	s5,20(sp)
   114ee:	d606                	sw	ra,44(sp)
   114f0:	00877793          	andi	a5,a4,8
   114f4:	8a32                	mv	s4,a2
   114f6:	8aaa                	mv	s5,a0
   114f8:	842e                	mv	s0,a1
   114fa:	c7b5                	beqz	a5,11566 <__sfvwrite_r+0x8a>
   114fc:	499c                	lw	a5,16(a1)
   114fe:	c7a5                	beqz	a5,11566 <__sfvwrite_r+0x8a>
   11500:	d226                	sw	s1,36(sp)
   11502:	d04a                	sw	s2,32(sp)
   11504:	ce4e                	sw	s3,28(sp)
   11506:	c85a                	sw	s6,16(sp)
   11508:	00277793          	andi	a5,a4,2
   1150c:	000a2483          	lw	s1,0(s4)
   11510:	cbbd                	beqz	a5,11586 <__sfvwrite_r+0xaa>
   11512:	80000b37          	lui	s6,0x80000
   11516:	c00b0b13          	addi	s6,s6,-1024 # 7ffffc00 <__BSS_END__+0x7ffebf18>
   1151a:	4981                	li	s3,0
   1151c:	4901                	li	s2,0
   1151e:	864e                	mv	a2,s3
   11520:	8556                	mv	a0,s5
   11522:	14090263          	beqz	s2,11666 <__sfvwrite_r+0x18a>
   11526:	800007b7          	lui	a5,0x80000
   1152a:	86ca                	mv	a3,s2
   1152c:	012b7463          	bgeu	s6,s2,11534 <__sfvwrite_r+0x58>
   11530:	c0078693          	addi	a3,a5,-1024 # 7ffffc00 <__BSS_END__+0x7ffebf18>
   11534:	505c                	lw	a5,36(s0)
   11536:	4c4c                	lw	a1,28(s0)
   11538:	9782                	jalr	a5
   1153a:	2ca05463          	blez	a0,11802 <__sfvwrite_r+0x326>
   1153e:	008a2783          	lw	a5,8(s4)
   11542:	99aa                	add	s3,s3,a0
   11544:	40a90933          	sub	s2,s2,a0
   11548:	8f89                	sub	a5,a5,a0
   1154a:	00fa2423          	sw	a5,8(s4)
   1154e:	fbe1                	bnez	a5,1151e <__sfvwrite_r+0x42>
   11550:	5492                	lw	s1,36(sp)
   11552:	5902                	lw	s2,32(sp)
   11554:	49f2                	lw	s3,28(sp)
   11556:	4b42                	lw	s6,16(sp)
   11558:	4501                	li	a0,0
   1155a:	50b2                	lw	ra,44(sp)
   1155c:	5422                	lw	s0,40(sp)
   1155e:	4a62                	lw	s4,24(sp)
   11560:	4ad2                	lw	s5,20(sp)
   11562:	6145                	addi	sp,sp,48
   11564:	8082                	ret
   11566:	85a2                	mv	a1,s0
   11568:	8556                	mv	a0,s5
   1156a:	2c45                	jal	1181a <__swsetup_r>
   1156c:	1a051f63          	bnez	a0,1172a <__sfvwrite_r+0x24e>
   11570:	00c41703          	lh	a4,12(s0)
   11574:	d226                	sw	s1,36(sp)
   11576:	d04a                	sw	s2,32(sp)
   11578:	ce4e                	sw	s3,28(sp)
   1157a:	c85a                	sw	s6,16(sp)
   1157c:	00277793          	andi	a5,a4,2
   11580:	000a2483          	lw	s1,0(s4)
   11584:	f7d9                	bnez	a5,11512 <__sfvwrite_r+0x36>
   11586:	c65e                	sw	s7,12(sp)
   11588:	c462                	sw	s8,8(sp)
   1158a:	00177793          	andi	a5,a4,1
   1158e:	e7e5                	bnez	a5,11676 <__sfvwrite_r+0x19a>
   11590:	80000bb7          	lui	s7,0x80000
   11594:	c266                	sw	s9,4(sp)
   11596:	1bfd                	addi	s7,s7,-1 # 7fffffff <__BSS_END__+0x7ffec317>
   11598:	4b01                	li	s6,0
   1159a:	4901                	li	s2,0
   1159c:	0a090f63          	beqz	s2,1165a <__sfvwrite_r+0x17e>
   115a0:	20077793          	andi	a5,a4,512
   115a4:	4008                	lw	a0,0(s0)
   115a6:	00842c03          	lw	s8,8(s0)
   115aa:	18078263          	beqz	a5,1172e <__sfvwrite_r+0x252>
   115ae:	8ce2                	mv	s9,s8
   115b0:	1f896c63          	bltu	s2,s8,117a8 <__sfvwrite_r+0x2cc>
   115b4:	48077793          	andi	a5,a4,1152
   115b8:	cba5                	beqz	a5,11628 <__sfvwrite_r+0x14c>
   115ba:	4854                	lw	a3,20(s0)
   115bc:	480c                	lw	a1,16(s0)
   115be:	00169793          	slli	a5,a3,0x1
   115c2:	97b6                	add	a5,a5,a3
   115c4:	01f7d993          	srli	s3,a5,0x1f
   115c8:	40b50c33          	sub	s8,a0,a1
   115cc:	99be                	add	s3,s3,a5
   115ce:	001c0793          	addi	a5,s8,1
   115d2:	4019d993          	srai	s3,s3,0x1
   115d6:	97ca                	add	a5,a5,s2
   115d8:	864e                	mv	a2,s3
   115da:	00f9f463          	bgeu	s3,a5,115e2 <__sfvwrite_r+0x106>
   115de:	89be                	mv	s3,a5
   115e0:	863e                	mv	a2,a5
   115e2:	40077713          	andi	a4,a4,1024
   115e6:	1e070663          	beqz	a4,117d2 <__sfvwrite_r+0x2f6>
   115ea:	85b2                	mv	a1,a2
   115ec:	8556                	mv	a0,s5
   115ee:	e52ff0ef          	jal	10c40 <_malloc_r>
   115f2:	8caa                	mv	s9,a0
   115f4:	20050a63          	beqz	a0,11808 <__sfvwrite_r+0x32c>
   115f8:	480c                	lw	a1,16(s0)
   115fa:	8662                	mv	a2,s8
   115fc:	2b11                	jal	11b10 <memcpy>
   115fe:	00c45783          	lhu	a5,12(s0)
   11602:	b7f7f793          	andi	a5,a5,-1153
   11606:	0807e793          	ori	a5,a5,128
   1160a:	00f41623          	sh	a5,12(s0)
   1160e:	018c8533          	add	a0,s9,s8
   11612:	41898c33          	sub	s8,s3,s8
   11616:	01942823          	sw	s9,16(s0)
   1161a:	01842423          	sw	s8,8(s0)
   1161e:	c008                	sw	a0,0(s0)
   11620:	01342a23          	sw	s3,20(s0)
   11624:	8c4a                	mv	s8,s2
   11626:	8cca                	mv	s9,s2
   11628:	85da                	mv	a1,s6
   1162a:	8666                	mv	a2,s9
   1162c:	2121                	jal	11a34 <memmove>
   1162e:	401c                	lw	a5,0(s0)
   11630:	4418                	lw	a4,8(s0)
   11632:	89ca                	mv	s3,s2
   11634:	97e6                	add	a5,a5,s9
   11636:	c01c                	sw	a5,0(s0)
   11638:	008a2783          	lw	a5,8(s4)
   1163c:	41870733          	sub	a4,a4,s8
   11640:	c418                	sw	a4,8(s0)
   11642:	413787b3          	sub	a5,a5,s3
   11646:	00fa2423          	sw	a5,8(s4)
   1164a:	4901                	li	s2,0
   1164c:	9b4e                	add	s6,s6,s3
   1164e:	12078063          	beqz	a5,1176e <__sfvwrite_r+0x292>
   11652:	00c41703          	lh	a4,12(s0)
   11656:	f40915e3          	bnez	s2,115a0 <__sfvwrite_r+0xc4>
   1165a:	0004ab03          	lw	s6,0(s1)
   1165e:	0044a903          	lw	s2,4(s1)
   11662:	04a1                	addi	s1,s1,8
   11664:	bf25                	j	1159c <__sfvwrite_r+0xc0>
   11666:	0004a983          	lw	s3,0(s1)
   1166a:	0044a903          	lw	s2,4(s1)
   1166e:	04a1                	addi	s1,s1,8
   11670:	b57d                	j	1151e <__sfvwrite_r+0x42>
   11672:	4501                	li	a0,0
   11674:	8082                	ret
   11676:	4b01                	li	s6,0
   11678:	4501                	li	a0,0
   1167a:	4c01                	li	s8,0
   1167c:	4981                	li	s3,0
   1167e:	04098e63          	beqz	s3,116da <__sfvwrite_r+0x1fe>
   11682:	c525                	beqz	a0,116ea <__sfvwrite_r+0x20e>
   11684:	87da                	mv	a5,s6
   11686:	8bce                	mv	s7,s3
   11688:	0137f363          	bgeu	a5,s3,1168e <__sfvwrite_r+0x1b2>
   1168c:	8bbe                	mv	s7,a5
   1168e:	4008                	lw	a0,0(s0)
   11690:	481c                	lw	a5,16(s0)
   11692:	4854                	lw	a3,20(s0)
   11694:	00a7f763          	bgeu	a5,a0,116a2 <__sfvwrite_r+0x1c6>
   11698:	00842903          	lw	s2,8(s0)
   1169c:	9936                	add	s2,s2,a3
   1169e:	07794063          	blt	s2,s7,116fe <__sfvwrite_r+0x222>
   116a2:	10dbcc63          	blt	s7,a3,117ba <__sfvwrite_r+0x2de>
   116a6:	505c                	lw	a5,36(s0)
   116a8:	4c4c                	lw	a1,28(s0)
   116aa:	8662                	mv	a2,s8
   116ac:	8556                	mv	a0,s5
   116ae:	9782                	jalr	a5
   116b0:	892a                	mv	s2,a0
   116b2:	06a05063          	blez	a0,11712 <__sfvwrite_r+0x236>
   116b6:	412b0b33          	sub	s6,s6,s2
   116ba:	4505                	li	a0,1
   116bc:	0e0b0963          	beqz	s6,117ae <__sfvwrite_r+0x2d2>
   116c0:	008a2783          	lw	a5,8(s4)
   116c4:	9c4a                	add	s8,s8,s2
   116c6:	412989b3          	sub	s3,s3,s2
   116ca:	412787b3          	sub	a5,a5,s2
   116ce:	00fa2423          	sw	a5,8(s4)
   116d2:	f7d5                	bnez	a5,1167e <__sfvwrite_r+0x1a2>
   116d4:	4bb2                	lw	s7,12(sp)
   116d6:	4c22                	lw	s8,8(sp)
   116d8:	bda5                	j	11550 <__sfvwrite_r+0x74>
   116da:	0044a983          	lw	s3,4(s1)
   116de:	87a6                	mv	a5,s1
   116e0:	04a1                	addi	s1,s1,8
   116e2:	fe098ce3          	beqz	s3,116da <__sfvwrite_r+0x1fe>
   116e6:	0007ac03          	lw	s8,0(a5)
   116ea:	864e                	mv	a2,s3
   116ec:	45a9                	li	a1,10
   116ee:	8562                	mv	a0,s8
   116f0:	2499                	jal	11936 <memchr>
   116f2:	10050463          	beqz	a0,117fa <__sfvwrite_r+0x31e>
   116f6:	0505                	addi	a0,a0,1
   116f8:	41850b33          	sub	s6,a0,s8
   116fc:	b761                	j	11684 <__sfvwrite_r+0x1a8>
   116fe:	85e2                	mv	a1,s8
   11700:	864a                	mv	a2,s2
   11702:	2e0d                	jal	11a34 <memmove>
   11704:	401c                	lw	a5,0(s0)
   11706:	85a2                	mv	a1,s0
   11708:	8556                	mv	a0,s5
   1170a:	97ca                	add	a5,a5,s2
   1170c:	c01c                	sw	a5,0(s0)
   1170e:	33a1                	jal	11456 <_fflush_r>
   11710:	d15d                	beqz	a0,116b6 <__sfvwrite_r+0x1da>
   11712:	00c41783          	lh	a5,12(s0)
   11716:	4bb2                	lw	s7,12(sp)
   11718:	4c22                	lw	s8,8(sp)
   1171a:	5492                	lw	s1,36(sp)
   1171c:	5902                	lw	s2,32(sp)
   1171e:	49f2                	lw	s3,28(sp)
   11720:	4b42                	lw	s6,16(sp)
   11722:	0407e793          	ori	a5,a5,64
   11726:	00f41623          	sh	a5,12(s0)
   1172a:	557d                	li	a0,-1
   1172c:	b53d                	j	1155a <__sfvwrite_r+0x7e>
   1172e:	481c                	lw	a5,16(s0)
   11730:	04a7e363          	bltu	a5,a0,11776 <__sfvwrite_r+0x29a>
   11734:	485c                	lw	a5,20(s0)
   11736:	04f96063          	bltu	s2,a5,11776 <__sfvwrite_r+0x29a>
   1173a:	86ca                	mv	a3,s2
   1173c:	012bf363          	bgeu	s7,s2,11742 <__sfvwrite_r+0x266>
   11740:	86de                	mv	a3,s7
   11742:	02f6e7b3          	rem	a5,a3,a5
   11746:	5058                	lw	a4,36(s0)
   11748:	4c4c                	lw	a1,28(s0)
   1174a:	865a                	mv	a2,s6
   1174c:	8556                	mv	a0,s5
   1174e:	8e9d                	sub	a3,a3,a5
   11750:	9702                	jalr	a4
   11752:	89aa                	mv	s3,a0
   11754:	04a05463          	blez	a0,1179c <__sfvwrite_r+0x2c0>
   11758:	008a2783          	lw	a5,8(s4)
   1175c:	41390933          	sub	s2,s2,s3
   11760:	9b4e                	add	s6,s6,s3
   11762:	413787b3          	sub	a5,a5,s3
   11766:	00fa2423          	sw	a5,8(s4)
   1176a:	ee0794e3          	bnez	a5,11652 <__sfvwrite_r+0x176>
   1176e:	4bb2                	lw	s7,12(sp)
   11770:	4c22                	lw	s8,8(sp)
   11772:	4c92                	lw	s9,4(sp)
   11774:	bbf1                	j	11550 <__sfvwrite_r+0x74>
   11776:	89e2                	mv	s3,s8
   11778:	01897363          	bgeu	s2,s8,1177e <__sfvwrite_r+0x2a2>
   1177c:	89ca                	mv	s3,s2
   1177e:	864e                	mv	a2,s3
   11780:	85da                	mv	a1,s6
   11782:	2c4d                	jal	11a34 <memmove>
   11784:	4018                	lw	a4,0(s0)
   11786:	441c                	lw	a5,8(s0)
   11788:	974e                	add	a4,a4,s3
   1178a:	413787b3          	sub	a5,a5,s3
   1178e:	c018                	sw	a4,0(s0)
   11790:	c41c                	sw	a5,8(s0)
   11792:	f3f9                	bnez	a5,11758 <__sfvwrite_r+0x27c>
   11794:	85a2                	mv	a1,s0
   11796:	8556                	mv	a0,s5
   11798:	397d                	jal	11456 <_fflush_r>
   1179a:	dd5d                	beqz	a0,11758 <__sfvwrite_r+0x27c>
   1179c:	00c41783          	lh	a5,12(s0)
   117a0:	4bb2                	lw	s7,12(sp)
   117a2:	4c22                	lw	s8,8(sp)
   117a4:	4c92                	lw	s9,4(sp)
   117a6:	bf95                	j	1171a <__sfvwrite_r+0x23e>
   117a8:	8c4a                	mv	s8,s2
   117aa:	8cca                	mv	s9,s2
   117ac:	bdb5                	j	11628 <__sfvwrite_r+0x14c>
   117ae:	85a2                	mv	a1,s0
   117b0:	8556                	mv	a0,s5
   117b2:	3155                	jal	11456 <_fflush_r>
   117b4:	f00506e3          	beqz	a0,116c0 <__sfvwrite_r+0x1e4>
   117b8:	bfa9                	j	11712 <__sfvwrite_r+0x236>
   117ba:	865e                	mv	a2,s7
   117bc:	85e2                	mv	a1,s8
   117be:	2c9d                	jal	11a34 <memmove>
   117c0:	4418                	lw	a4,8(s0)
   117c2:	401c                	lw	a5,0(s0)
   117c4:	895e                	mv	s2,s7
   117c6:	41770733          	sub	a4,a4,s7
   117ca:	97de                	add	a5,a5,s7
   117cc:	c418                	sw	a4,8(s0)
   117ce:	c01c                	sw	a5,0(s0)
   117d0:	b5dd                	j	116b6 <__sfvwrite_r+0x1da>
   117d2:	8556                	mv	a0,s5
   117d4:	2951                	jal	11c68 <_realloc_r>
   117d6:	8caa                	mv	s9,a0
   117d8:	e2051be3          	bnez	a0,1160e <__sfvwrite_r+0x132>
   117dc:	480c                	lw	a1,16(s0)
   117de:	8556                	mv	a0,s5
   117e0:	a44ff0ef          	jal	10a24 <_free_r>
   117e4:	00c41783          	lh	a5,12(s0)
   117e8:	4731                	li	a4,12
   117ea:	4bb2                	lw	s7,12(sp)
   117ec:	4c22                	lw	s8,8(sp)
   117ee:	4c92                	lw	s9,4(sp)
   117f0:	00eaa023          	sw	a4,0(s5)
   117f4:	f7f7f793          	andi	a5,a5,-129
   117f8:	b70d                	j	1171a <__sfvwrite_r+0x23e>
   117fa:	00198793          	addi	a5,s3,1
   117fe:	8b3e                	mv	s6,a5
   11800:	b559                	j	11686 <__sfvwrite_r+0x1aa>
   11802:	00c41783          	lh	a5,12(s0)
   11806:	bf11                	j	1171a <__sfvwrite_r+0x23e>
   11808:	47b1                	li	a5,12
   1180a:	00faa023          	sw	a5,0(s5)
   1180e:	4bb2                	lw	s7,12(sp)
   11810:	00c41783          	lh	a5,12(s0)
   11814:	4c22                	lw	s8,8(sp)
   11816:	4c92                	lw	s9,4(sp)
   11818:	b709                	j	1171a <__sfvwrite_r+0x23e>

0001181a <__swsetup_r>:
   1181a:	d3c1a783          	lw	a5,-708(gp) # 139b4 <_impure_ptr>
   1181e:	1141                	addi	sp,sp,-16
   11820:	c422                	sw	s0,8(sp)
   11822:	c226                	sw	s1,4(sp)
   11824:	c606                	sw	ra,12(sp)
   11826:	84aa                	mv	s1,a0
   11828:	842e                	mv	s0,a1
   1182a:	c399                	beqz	a5,11830 <__swsetup_r+0x16>
   1182c:	5bd8                	lw	a4,52(a5)
   1182e:	cb61                	beqz	a4,118fe <__swsetup_r+0xe4>
   11830:	00c41783          	lh	a5,12(s0)
   11834:	0087f713          	andi	a4,a5,8
   11838:	c315                	beqz	a4,1185c <__swsetup_r+0x42>
   1183a:	4818                	lw	a4,16(s0)
   1183c:	cf05                	beqz	a4,11874 <__swsetup_r+0x5a>
   1183e:	0017f713          	andi	a4,a5,1
   11842:	c32d                	beqz	a4,118a4 <__swsetup_r+0x8a>
   11844:	485c                	lw	a5,20(s0)
   11846:	00042423          	sw	zero,8(s0)
   1184a:	40f007b3          	neg	a5,a5
   1184e:	cc1c                	sw	a5,24(s0)
   11850:	4501                	li	a0,0
   11852:	40b2                	lw	ra,12(sp)
   11854:	4422                	lw	s0,8(sp)
   11856:	4492                	lw	s1,4(sp)
   11858:	0141                	addi	sp,sp,16
   1185a:	8082                	ret
   1185c:	0107f713          	andi	a4,a5,16
   11860:	c379                	beqz	a4,11926 <__swsetup_r+0x10c>
   11862:	0047f713          	andi	a4,a5,4
   11866:	e721                	bnez	a4,118ae <__swsetup_r+0x94>
   11868:	4818                	lw	a4,16(s0)
   1186a:	0087e793          	ori	a5,a5,8
   1186e:	00f41623          	sh	a5,12(s0)
   11872:	f771                	bnez	a4,1183e <__swsetup_r+0x24>
   11874:	2807f693          	andi	a3,a5,640
   11878:	20000613          	li	a2,512
   1187c:	06c69063          	bne	a3,a2,118dc <__swsetup_r+0xc2>
   11880:	0017f693          	andi	a3,a5,1
   11884:	c2c9                	beqz	a3,11906 <__swsetup_r+0xec>
   11886:	4858                	lw	a4,20(s0)
   11888:	00042423          	sw	zero,8(s0)
   1188c:	40e00733          	neg	a4,a4
   11890:	cc18                	sw	a4,24(s0)
   11892:	0807f713          	andi	a4,a5,128
   11896:	df4d                	beqz	a4,11850 <__swsetup_r+0x36>
   11898:	0407e793          	ori	a5,a5,64
   1189c:	00f41623          	sh	a5,12(s0)
   118a0:	557d                	li	a0,-1
   118a2:	bf45                	j	11852 <__swsetup_r+0x38>
   118a4:	8b89                	andi	a5,a5,2
   118a6:	eb85                	bnez	a5,118d6 <__swsetup_r+0xbc>
   118a8:	485c                	lw	a5,20(s0)
   118aa:	c41c                	sw	a5,8(s0)
   118ac:	b755                	j	11850 <__swsetup_r+0x36>
   118ae:	580c                	lw	a1,48(s0)
   118b0:	cd81                	beqz	a1,118c8 <__swsetup_r+0xae>
   118b2:	04040713          	addi	a4,s0,64
   118b6:	00e58763          	beq	a1,a4,118c4 <__swsetup_r+0xaa>
   118ba:	8526                	mv	a0,s1
   118bc:	968ff0ef          	jal	10a24 <_free_r>
   118c0:	00c41783          	lh	a5,12(s0)
   118c4:	02042823          	sw	zero,48(s0)
   118c8:	4818                	lw	a4,16(s0)
   118ca:	fdb7f793          	andi	a5,a5,-37
   118ce:	00042223          	sw	zero,4(s0)
   118d2:	c018                	sw	a4,0(s0)
   118d4:	bf59                	j	1186a <__swsetup_r+0x50>
   118d6:	00042423          	sw	zero,8(s0)
   118da:	bf9d                	j	11850 <__swsetup_r+0x36>
   118dc:	8526                	mv	a0,s1
   118de:	85a2                	mv	a1,s0
   118e0:	2f49                	jal	12072 <__smakebuf_r>
   118e2:	00c41783          	lh	a5,12(s0)
   118e6:	4818                	lw	a4,16(s0)
   118e8:	0017f693          	andi	a3,a5,1
   118ec:	c685                	beqz	a3,11914 <__swsetup_r+0xfa>
   118ee:	4854                	lw	a3,20(s0)
   118f0:	00042423          	sw	zero,8(s0)
   118f4:	40d006b3          	neg	a3,a3
   118f8:	cc14                	sw	a3,24(s0)
   118fa:	df41                	beqz	a4,11892 <__swsetup_r+0x78>
   118fc:	bf91                	j	11850 <__swsetup_r+0x36>
   118fe:	853e                	mv	a0,a5
   11900:	aa7fe0ef          	jal	103a6 <__sinit>
   11904:	b735                	j	11830 <__swsetup_r+0x16>
   11906:	0027f693          	andi	a3,a5,2
   1190a:	ea99                	bnez	a3,11920 <__swsetup_r+0x106>
   1190c:	4850                	lw	a2,20(s0)
   1190e:	c410                	sw	a2,8(s0)
   11910:	d349                	beqz	a4,11892 <__swsetup_r+0x78>
   11912:	bf3d                	j	11850 <__swsetup_r+0x36>
   11914:	0027f693          	andi	a3,a5,2
   11918:	4601                	li	a2,0
   1191a:	faf5                	bnez	a3,1190e <__swsetup_r+0xf4>
   1191c:	4850                	lw	a2,20(s0)
   1191e:	bfc5                	j	1190e <__swsetup_r+0xf4>
   11920:	00042423          	sw	zero,8(s0)
   11924:	b7bd                	j	11892 <__swsetup_r+0x78>
   11926:	4725                	li	a4,9
   11928:	0407e793          	ori	a5,a5,64
   1192c:	c098                	sw	a4,0(s1)
   1192e:	00f41623          	sh	a5,12(s0)
   11932:	557d                	li	a0,-1
   11934:	bf39                	j	11852 <__swsetup_r+0x38>

00011936 <memchr>:
   11936:	00357713          	andi	a4,a0,3
   1193a:	87aa                	mv	a5,a0
   1193c:	0ff5f813          	zext.b	a6,a1
   11940:	832a                	mv	t1,a0
   11942:	c70d                	beqz	a4,1196c <memchr+0x36>
   11944:	00c508b3          	add	a7,a0,a2
   11948:	a039                	j	11956 <memchr+0x20>
   1194a:	0007c683          	lbu	a3,0(a5)
   1194e:	07068c63          	beq	a3,a6,119c6 <memchr+0x90>
   11952:	cb11                	beqz	a4,11966 <memchr+0x30>
   11954:	87aa                	mv	a5,a0
   11956:	00178513          	addi	a0,a5,1
   1195a:	00357713          	andi	a4,a0,3
   1195e:	ff1796e3          	bne	a5,a7,1194a <memchr+0x14>
   11962:	4501                	li	a0,0
   11964:	8082                	ret
   11966:	167d                	addi	a2,a2,-1
   11968:	961a                	add	a2,a2,t1
   1196a:	8e1d                	sub	a2,a2,a5
   1196c:	478d                	li	a5,3
   1196e:	04c7f163          	bgeu	a5,a2,119b0 <memchr+0x7a>
   11972:	0ff5f593          	zext.b	a1,a1
   11976:	00859693          	slli	a3,a1,0x8
   1197a:	96ae                	add	a3,a3,a1
   1197c:	01069713          	slli	a4,a3,0x10
   11980:	feff0337          	lui	t1,0xfeff0
   11984:	808088b7          	lui	a7,0x80808
   11988:	85be                	mv	a1,a5
   1198a:	96ba                	add	a3,a3,a4
   1198c:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefdc217>
   11990:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807f4398>
   11994:	411c                	lw	a5,0(a0)
   11996:	8fb5                	xor	a5,a5,a3
   11998:	00678733          	add	a4,a5,t1
   1199c:	fff7c793          	not	a5,a5
   119a0:	8ff9                	and	a5,a5,a4
   119a2:	0117f7b3          	and	a5,a5,a7
   119a6:	e791                	bnez	a5,119b2 <memchr+0x7c>
   119a8:	1671                	addi	a2,a2,-4
   119aa:	0511                	addi	a0,a0,4
   119ac:	fec5e4e3          	bltu	a1,a2,11994 <memchr+0x5e>
   119b0:	da4d                	beqz	a2,11962 <memchr+0x2c>
   119b2:	962a                	add	a2,a2,a0
   119b4:	a021                	j	119bc <memchr+0x86>
   119b6:	0505                	addi	a0,a0,1
   119b8:	fac505e3          	beq	a0,a2,11962 <memchr+0x2c>
   119bc:	00054783          	lbu	a5,0(a0)
   119c0:	ff079be3          	bne	a5,a6,119b6 <memchr+0x80>
   119c4:	8082                	ret
   119c6:	853e                	mv	a0,a5
   119c8:	8082                	ret

000119ca <_sbrk_r>:
   119ca:	1141                	addi	sp,sp,-16
   119cc:	c422                	sw	s0,8(sp)
   119ce:	c226                	sw	s1,4(sp)
   119d0:	842a                	mv	s0,a0
   119d2:	852e                	mv	a0,a1
   119d4:	c606                	sw	ra,12(sp)
   119d6:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   119da:	17d000ef          	jal	12356 <_sbrk>
   119de:	57fd                	li	a5,-1
   119e0:	00f50763          	beq	a0,a5,119ee <_sbrk_r+0x24>
   119e4:	40b2                	lw	ra,12(sp)
   119e6:	4422                	lw	s0,8(sp)
   119e8:	4492                	lw	s1,4(sp)
   119ea:	0141                	addi	sp,sp,16
   119ec:	8082                	ret
   119ee:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   119f2:	dbed                	beqz	a5,119e4 <_sbrk_r+0x1a>
   119f4:	40b2                	lw	ra,12(sp)
   119f6:	c01c                	sw	a5,0(s0)
   119f8:	4422                	lw	s0,8(sp)
   119fa:	4492                	lw	s1,4(sp)
   119fc:	0141                	addi	sp,sp,16
   119fe:	8082                	ret

00011a00 <__libc_fini_array>:
   11a00:	1141                	addi	sp,sp,-16
   11a02:	c422                	sw	s0,8(sp)
   11a04:	67cd                	lui	a5,0x13
   11a06:	644d                	lui	s0,0x13
   11a08:	47440413          	addi	s0,s0,1140 # 13474 <__fini_array_end>
   11a0c:	47078793          	addi	a5,a5,1136 # 13470 <__do_global_dtors_aux_fini_array_entry>
   11a10:	8c1d                	sub	s0,s0,a5
   11a12:	c226                	sw	s1,4(sp)
   11a14:	c606                	sw	ra,12(sp)
   11a16:	40245493          	srai	s1,s0,0x2
   11a1a:	c881                	beqz	s1,11a2a <__libc_fini_array+0x2a>
   11a1c:	1471                	addi	s0,s0,-4
   11a1e:	943e                	add	s0,s0,a5
   11a20:	401c                	lw	a5,0(s0)
   11a22:	14fd                	addi	s1,s1,-1
   11a24:	1471                	addi	s0,s0,-4
   11a26:	9782                	jalr	a5
   11a28:	fce5                	bnez	s1,11a20 <__libc_fini_array+0x20>
   11a2a:	40b2                	lw	ra,12(sp)
   11a2c:	4422                	lw	s0,8(sp)
   11a2e:	4492                	lw	s1,4(sp)
   11a30:	0141                	addi	sp,sp,16
   11a32:	8082                	ret

00011a34 <memmove>:
   11a34:	02a5f263          	bgeu	a1,a0,11a58 <memmove+0x24>
   11a38:	00c58733          	add	a4,a1,a2
   11a3c:	00e57e63          	bgeu	a0,a4,11a58 <memmove+0x24>
   11a40:	00c507b3          	add	a5,a0,a2
   11a44:	ca1d                	beqz	a2,11a7a <memmove+0x46>
   11a46:	fff74683          	lbu	a3,-1(a4)
   11a4a:	17fd                	addi	a5,a5,-1
   11a4c:	177d                	addi	a4,a4,-1
   11a4e:	00d78023          	sb	a3,0(a5)
   11a52:	fef51ae3          	bne	a0,a5,11a46 <memmove+0x12>
   11a56:	8082                	ret
   11a58:	47bd                	li	a5,15
   11a5a:	02c7e163          	bltu	a5,a2,11a7c <memmove+0x48>
   11a5e:	87aa                	mv	a5,a0
   11a60:	fff60693          	addi	a3,a2,-1
   11a64:	c25d                	beqz	a2,11b0a <memmove+0xd6>
   11a66:	0685                	addi	a3,a3,1
   11a68:	96be                	add	a3,a3,a5
   11a6a:	0005c703          	lbu	a4,0(a1)
   11a6e:	0785                	addi	a5,a5,1
   11a70:	0585                	addi	a1,a1,1
   11a72:	fee78fa3          	sb	a4,-1(a5)
   11a76:	fed79ae3          	bne	a5,a3,11a6a <memmove+0x36>
   11a7a:	8082                	ret
   11a7c:	00b567b3          	or	a5,a0,a1
   11a80:	8b8d                	andi	a5,a5,3
   11a82:	88ae                	mv	a7,a1
   11a84:	efbd                	bnez	a5,11b02 <memmove+0xce>
   11a86:	ff060793          	addi	a5,a2,-16
   11a8a:	ff07f813          	andi	a6,a5,-16
   11a8e:	0841                	addi	a6,a6,16
   11a90:	982a                	add	a6,a6,a0
   11a92:	872a                	mv	a4,a0
   11a94:	4194                	lw	a3,0(a1)
   11a96:	05c1                	addi	a1,a1,16
   11a98:	0741                	addi	a4,a4,16
   11a9a:	fed72823          	sw	a3,-16(a4)
   11a9e:	ff45a683          	lw	a3,-12(a1)
   11aa2:	fed72a23          	sw	a3,-12(a4)
   11aa6:	ff85a683          	lw	a3,-8(a1)
   11aaa:	fed72c23          	sw	a3,-8(a4)
   11aae:	ffc5a683          	lw	a3,-4(a1)
   11ab2:	fed72e23          	sw	a3,-4(a4)
   11ab6:	fd071fe3          	bne	a4,a6,11a94 <memmove+0x60>
   11aba:	9bc1                	andi	a5,a5,-16
   11abc:	01178733          	add	a4,a5,a7
   11ac0:	01070593          	addi	a1,a4,16
   11ac4:	97aa                	add	a5,a5,a0
   11ac6:	00c67813          	andi	a6,a2,12
   11aca:	07c1                	addi	a5,a5,16
   11acc:	8e2e                	mv	t3,a1
   11ace:	00f67693          	andi	a3,a2,15
   11ad2:	02080d63          	beqz	a6,11b0c <memmove+0xd8>
   11ad6:	16f1                	addi	a3,a3,-4
   11ad8:	9af1                	andi	a3,a3,-4
   11ada:	9736                	add	a4,a4,a3
   11adc:	0751                	addi	a4,a4,20
   11ade:	41150833          	sub	a6,a0,a7
   11ae2:	0005a303          	lw	t1,0(a1)
   11ae6:	010588b3          	add	a7,a1,a6
   11aea:	0591                	addi	a1,a1,4
   11aec:	0068a023          	sw	t1,0(a7)
   11af0:	fee599e3          	bne	a1,a4,11ae2 <memmove+0xae>
   11af4:	00468713          	addi	a4,a3,4
   11af8:	01c705b3          	add	a1,a4,t3
   11afc:	97ba                	add	a5,a5,a4
   11afe:	8a0d                	andi	a2,a2,3
   11b00:	b785                	j	11a60 <memmove+0x2c>
   11b02:	fff60693          	addi	a3,a2,-1
   11b06:	87aa                	mv	a5,a0
   11b08:	bfb9                	j	11a66 <memmove+0x32>
   11b0a:	8082                	ret
   11b0c:	8636                	mv	a2,a3
   11b0e:	bf89                	j	11a60 <memmove+0x2c>

00011b10 <memcpy>:
   11b10:	00a5c7b3          	xor	a5,a1,a0
   11b14:	8b8d                	andi	a5,a5,3
   11b16:	00c508b3          	add	a7,a0,a2
   11b1a:	e7b1                	bnez	a5,11b66 <memcpy+0x56>
   11b1c:	478d                	li	a5,3
   11b1e:	04c7f463          	bgeu	a5,a2,11b66 <memcpy+0x56>
   11b22:	00357793          	andi	a5,a0,3
   11b26:	872a                	mv	a4,a0
   11b28:	e7dd                	bnez	a5,11bd6 <memcpy+0xc6>
   11b2a:	ffc8f613          	andi	a2,a7,-4
   11b2e:	40e606b3          	sub	a3,a2,a4
   11b32:	02000793          	li	a5,32
   11b36:	04d7c463          	blt	a5,a3,11b7e <memcpy+0x6e>
   11b3a:	86ae                	mv	a3,a1
   11b3c:	87ba                	mv	a5,a4
   11b3e:	02c77163          	bgeu	a4,a2,11b60 <memcpy+0x50>
   11b42:	0006a803          	lw	a6,0(a3)
   11b46:	0791                	addi	a5,a5,4
   11b48:	0691                	addi	a3,a3,4
   11b4a:	ff07ae23          	sw	a6,-4(a5)
   11b4e:	fec7eae3          	bltu	a5,a2,11b42 <memcpy+0x32>
   11b52:	167d                	addi	a2,a2,-1
   11b54:	8e19                	sub	a2,a2,a4
   11b56:	9a71                	andi	a2,a2,-4
   11b58:	0591                	addi	a1,a1,4
   11b5a:	0711                	addi	a4,a4,4
   11b5c:	95b2                	add	a1,a1,a2
   11b5e:	9732                	add	a4,a4,a2
   11b60:	01176663          	bltu	a4,a7,11b6c <memcpy+0x5c>
   11b64:	8082                	ret
   11b66:	872a                	mv	a4,a0
   11b68:	ff157ee3          	bgeu	a0,a7,11b64 <memcpy+0x54>
   11b6c:	0005c783          	lbu	a5,0(a1)
   11b70:	0705                	addi	a4,a4,1
   11b72:	0585                	addi	a1,a1,1
   11b74:	fef70fa3          	sb	a5,-1(a4)
   11b78:	fee89ae3          	bne	a7,a4,11b6c <memcpy+0x5c>
   11b7c:	8082                	ret
   11b7e:	5194                	lw	a3,32(a1)
   11b80:	0005a383          	lw	t2,0(a1)
   11b84:	0045a283          	lw	t0,4(a1)
   11b88:	0085af83          	lw	t6,8(a1)
   11b8c:	00c5af03          	lw	t5,12(a1)
   11b90:	0105ae83          	lw	t4,16(a1)
   11b94:	0145ae03          	lw	t3,20(a1)
   11b98:	0185a303          	lw	t1,24(a1)
   11b9c:	01c5a803          	lw	a6,28(a1)
   11ba0:	02470713          	addi	a4,a4,36
   11ba4:	fed72e23          	sw	a3,-4(a4)
   11ba8:	fc772e23          	sw	t2,-36(a4)
   11bac:	40e606b3          	sub	a3,a2,a4
   11bb0:	fe572023          	sw	t0,-32(a4)
   11bb4:	fff72223          	sw	t6,-28(a4)
   11bb8:	ffe72423          	sw	t5,-24(a4)
   11bbc:	ffd72623          	sw	t4,-20(a4)
   11bc0:	ffc72823          	sw	t3,-16(a4)
   11bc4:	fe672a23          	sw	t1,-12(a4)
   11bc8:	ff072c23          	sw	a6,-8(a4)
   11bcc:	02458593          	addi	a1,a1,36
   11bd0:	fad7c7e3          	blt	a5,a3,11b7e <memcpy+0x6e>
   11bd4:	b79d                	j	11b3a <memcpy+0x2a>
   11bd6:	0005c683          	lbu	a3,0(a1)
   11bda:	0705                	addi	a4,a4,1
   11bdc:	00377793          	andi	a5,a4,3
   11be0:	fed70fa3          	sb	a3,-1(a4)
   11be4:	0585                	addi	a1,a1,1
   11be6:	d3b1                	beqz	a5,11b2a <memcpy+0x1a>
   11be8:	0005c683          	lbu	a3,0(a1)
   11bec:	0705                	addi	a4,a4,1
   11bee:	00377793          	andi	a5,a4,3
   11bf2:	fed70fa3          	sb	a3,-1(a4)
   11bf6:	0585                	addi	a1,a1,1
   11bf8:	fff9                	bnez	a5,11bd6 <memcpy+0xc6>
   11bfa:	bf05                	j	11b2a <memcpy+0x1a>

00011bfc <__register_exitproc>:
   11bfc:	d501a783          	lw	a5,-688(gp) # 139c8 <__atexit>
   11c00:	c3a1                	beqz	a5,11c40 <__register_exitproc+0x44>
   11c02:	43d8                	lw	a4,4(a5)
   11c04:	487d                	li	a6,31
   11c06:	04e84f63          	blt	a6,a4,11c64 <__register_exitproc+0x68>
   11c0a:	00271813          	slli	a6,a4,0x2
   11c0e:	c11d                	beqz	a0,11c34 <__register_exitproc+0x38>
   11c10:	01078333          	add	t1,a5,a6
   11c14:	08c32423          	sw	a2,136(t1)
   11c18:	1887a883          	lw	a7,392(a5)
   11c1c:	4605                	li	a2,1
   11c1e:	00e61633          	sll	a2,a2,a4
   11c22:	00c8e8b3          	or	a7,a7,a2
   11c26:	1917a423          	sw	a7,392(a5)
   11c2a:	10d32423          	sw	a3,264(t1)
   11c2e:	4689                	li	a3,2
   11c30:	00d50f63          	beq	a0,a3,11c4e <__register_exitproc+0x52>
   11c34:	0705                	addi	a4,a4,1
   11c36:	c3d8                	sw	a4,4(a5)
   11c38:	97c2                	add	a5,a5,a6
   11c3a:	c78c                	sw	a1,8(a5)
   11c3c:	4501                	li	a0,0
   11c3e:	8082                	ret
   11c40:	ee018813          	addi	a6,gp,-288 # 13b58 <__atexit0>
   11c44:	d501a823          	sw	a6,-688(gp) # 139c8 <__atexit>
   11c48:	ee018793          	addi	a5,gp,-288 # 13b58 <__atexit0>
   11c4c:	bf5d                	j	11c02 <__register_exitproc+0x6>
   11c4e:	18c7a683          	lw	a3,396(a5)
   11c52:	0705                	addi	a4,a4,1
   11c54:	c3d8                	sw	a4,4(a5)
   11c56:	8ed1                	or	a3,a3,a2
   11c58:	18d7a623          	sw	a3,396(a5)
   11c5c:	97c2                	add	a5,a5,a6
   11c5e:	c78c                	sw	a1,8(a5)
   11c60:	4501                	li	a0,0
   11c62:	8082                	ret
   11c64:	557d                	li	a0,-1
   11c66:	8082                	ret

00011c68 <_realloc_r>:
   11c68:	7179                	addi	sp,sp,-48
   11c6a:	d226                	sw	s1,36(sp)
   11c6c:	d606                	sw	ra,44(sp)
   11c6e:	84b2                	mv	s1,a2
   11c70:	14058d63          	beqz	a1,11dca <_realloc_r+0x162>
   11c74:	d422                	sw	s0,40(sp)
   11c76:	d04a                	sw	s2,32(sp)
   11c78:	842e                	mv	s0,a1
   11c7a:	ce4e                	sw	s3,28(sp)
   11c7c:	ca56                	sw	s5,20(sp)
   11c7e:	cc52                	sw	s4,24(sp)
   11c80:	892a                	mv	s2,a0
   11c82:	d8aff0ef          	jal	1120c <__malloc_lock>
   11c86:	ffc42703          	lw	a4,-4(s0)
   11c8a:	00b48793          	addi	a5,s1,11
   11c8e:	46d9                	li	a3,22
   11c90:	ffc77993          	andi	s3,a4,-4
   11c94:	ff840a93          	addi	s5,s0,-8
   11c98:	0af6ff63          	bgeu	a3,a5,11d56 <_realloc_r+0xee>
   11c9c:	ff87fa13          	andi	s4,a5,-8
   11ca0:	0a07ce63          	bltz	a5,11d5c <_realloc_r+0xf4>
   11ca4:	0a9a6c63          	bltu	s4,s1,11d5c <_realloc_r+0xf4>
   11ca8:	0d49d563          	bge	s3,s4,11d72 <_realloc_r+0x10a>
   11cac:	67cd                	lui	a5,0x13
   11cae:	c462                	sw	s8,8(sp)
   11cb0:	5a878c13          	addi	s8,a5,1448 # 135a8 <__malloc_av_>
   11cb4:	008c2603          	lw	a2,8(s8)
   11cb8:	013a86b3          	add	a3,s5,s3
   11cbc:	42dc                	lw	a5,4(a3)
   11cbe:	12d60e63          	beq	a2,a3,11dfa <_realloc_r+0x192>
   11cc2:	ffe7f613          	andi	a2,a5,-2
   11cc6:	9636                	add	a2,a2,a3
   11cc8:	4250                	lw	a2,4(a2)
   11cca:	8a05                	andi	a2,a2,1
   11ccc:	e27d                	bnez	a2,11db2 <_realloc_r+0x14a>
   11cce:	9bf1                	andi	a5,a5,-4
   11cd0:	00f98633          	add	a2,s3,a5
   11cd4:	09465963          	bge	a2,s4,11d66 <_realloc_r+0xfe>
   11cd8:	8b05                	andi	a4,a4,1
   11cda:	e70d                	bnez	a4,11d04 <_realloc_r+0x9c>
   11cdc:	c65e                	sw	s7,12(sp)
   11cde:	ff842b83          	lw	s7,-8(s0)
   11ce2:	c85a                	sw	s6,16(sp)
   11ce4:	417a8bb3          	sub	s7,s5,s7
   11ce8:	004ba703          	lw	a4,4(s7)
   11cec:	9b71                	andi	a4,a4,-4
   11cee:	97ba                	add	a5,a5,a4
   11cf0:	01378b33          	add	s6,a5,s3
   11cf4:	234b5663          	bge	s6,s4,11f20 <_realloc_r+0x2b8>
   11cf8:	00e98b33          	add	s6,s3,a4
   11cfc:	1d4b5463          	bge	s6,s4,11ec4 <_realloc_r+0x25c>
   11d00:	4b42                	lw	s6,16(sp)
   11d02:	4bb2                	lw	s7,12(sp)
   11d04:	85a6                	mv	a1,s1
   11d06:	854a                	mv	a0,s2
   11d08:	f39fe0ef          	jal	10c40 <_malloc_r>
   11d0c:	84aa                	mv	s1,a0
   11d0e:	2c050463          	beqz	a0,11fd6 <_realloc_r+0x36e>
   11d12:	ffc42783          	lw	a5,-4(s0)
   11d16:	ff850713          	addi	a4,a0,-8
   11d1a:	9bf9                	andi	a5,a5,-2
   11d1c:	97d6                	add	a5,a5,s5
   11d1e:	18e78d63          	beq	a5,a4,11eb8 <_realloc_r+0x250>
   11d22:	ffc98613          	addi	a2,s3,-4
   11d26:	02400793          	li	a5,36
   11d2a:	1ec7e863          	bltu	a5,a2,11f1a <_realloc_r+0x2b2>
   11d2e:	474d                	li	a4,19
   11d30:	16c76863          	bltu	a4,a2,11ea0 <_realloc_r+0x238>
   11d34:	87aa                	mv	a5,a0
   11d36:	8722                	mv	a4,s0
   11d38:	4314                	lw	a3,0(a4)
   11d3a:	c394                	sw	a3,0(a5)
   11d3c:	4354                	lw	a3,4(a4)
   11d3e:	c3d4                	sw	a3,4(a5)
   11d40:	4718                	lw	a4,8(a4)
   11d42:	c798                	sw	a4,8(a5)
   11d44:	85a2                	mv	a1,s0
   11d46:	854a                	mv	a0,s2
   11d48:	cddfe0ef          	jal	10a24 <_free_r>
   11d4c:	854a                	mv	a0,s2
   11d4e:	cc0ff0ef          	jal	1120e <__malloc_unlock>
   11d52:	4c22                	lw	s8,8(sp)
   11d54:	a0a9                	j	11d9e <_realloc_r+0x136>
   11d56:	4a41                	li	s4,16
   11d58:	f49a78e3          	bgeu	s4,s1,11ca8 <_realloc_r+0x40>
   11d5c:	47b1                	li	a5,12
   11d5e:	00f92023          	sw	a5,0(s2)
   11d62:	4481                	li	s1,0
   11d64:	a82d                	j	11d9e <_realloc_r+0x136>
   11d66:	46dc                	lw	a5,12(a3)
   11d68:	4698                	lw	a4,8(a3)
   11d6a:	4c22                	lw	s8,8(sp)
   11d6c:	89b2                	mv	s3,a2
   11d6e:	c75c                	sw	a5,12(a4)
   11d70:	c798                	sw	a4,8(a5)
   11d72:	004aa783          	lw	a5,4(s5)
   11d76:	414986b3          	sub	a3,s3,s4
   11d7a:	463d                	li	a2,15
   11d7c:	8b85                	andi	a5,a5,1
   11d7e:	013a8733          	add	a4,s5,s3
   11d82:	04d66a63          	bltu	a2,a3,11dd6 <_realloc_r+0x16e>
   11d86:	0137e7b3          	or	a5,a5,s3
   11d8a:	00faa223          	sw	a5,4(s5)
   11d8e:	435c                	lw	a5,4(a4)
   11d90:	0017e793          	ori	a5,a5,1
   11d94:	c35c                	sw	a5,4(a4)
   11d96:	854a                	mv	a0,s2
   11d98:	c76ff0ef          	jal	1120e <__malloc_unlock>
   11d9c:	84a2                	mv	s1,s0
   11d9e:	5422                	lw	s0,40(sp)
   11da0:	50b2                	lw	ra,44(sp)
   11da2:	5902                	lw	s2,32(sp)
   11da4:	49f2                	lw	s3,28(sp)
   11da6:	4a62                	lw	s4,24(sp)
   11da8:	4ad2                	lw	s5,20(sp)
   11daa:	8526                	mv	a0,s1
   11dac:	5492                	lw	s1,36(sp)
   11dae:	6145                	addi	sp,sp,48
   11db0:	8082                	ret
   11db2:	8b05                	andi	a4,a4,1
   11db4:	fb21                	bnez	a4,11d04 <_realloc_r+0x9c>
   11db6:	c65e                	sw	s7,12(sp)
   11db8:	ff842b83          	lw	s7,-8(s0)
   11dbc:	c85a                	sw	s6,16(sp)
   11dbe:	417a8bb3          	sub	s7,s5,s7
   11dc2:	004ba703          	lw	a4,4(s7)
   11dc6:	9b71                	andi	a4,a4,-4
   11dc8:	bf05                	j	11cf8 <_realloc_r+0x90>
   11dca:	50b2                	lw	ra,44(sp)
   11dcc:	5492                	lw	s1,36(sp)
   11dce:	85b2                	mv	a1,a2
   11dd0:	6145                	addi	sp,sp,48
   11dd2:	e6ffe06f          	j	10c40 <_malloc_r>
   11dd6:	0147e7b3          	or	a5,a5,s4
   11dda:	00faa223          	sw	a5,4(s5)
   11dde:	014a85b3          	add	a1,s5,s4
   11de2:	0016e693          	ori	a3,a3,1
   11de6:	c1d4                	sw	a3,4(a1)
   11de8:	435c                	lw	a5,4(a4)
   11dea:	05a1                	addi	a1,a1,8
   11dec:	854a                	mv	a0,s2
   11dee:	0017e793          	ori	a5,a5,1
   11df2:	c35c                	sw	a5,4(a4)
   11df4:	c31fe0ef          	jal	10a24 <_free_r>
   11df8:	bf79                	j	11d96 <_realloc_r+0x12e>
   11dfa:	9bf1                	andi	a5,a5,-4
   11dfc:	013786b3          	add	a3,a5,s3
   11e00:	010a0613          	addi	a2,s4,16
   11e04:	18c6d763          	bge	a3,a2,11f92 <_realloc_r+0x32a>
   11e08:	8b05                	andi	a4,a4,1
   11e0a:	ee071de3          	bnez	a4,11d04 <_realloc_r+0x9c>
   11e0e:	c65e                	sw	s7,12(sp)
   11e10:	ff842b83          	lw	s7,-8(s0)
   11e14:	c85a                	sw	s6,16(sp)
   11e16:	417a8bb3          	sub	s7,s5,s7
   11e1a:	004ba703          	lw	a4,4(s7)
   11e1e:	9b71                	andi	a4,a4,-4
   11e20:	97ba                	add	a5,a5,a4
   11e22:	01378b33          	add	s6,a5,s3
   11e26:	eccb49e3          	blt	s6,a2,11cf8 <_realloc_r+0x90>
   11e2a:	00cba783          	lw	a5,12(s7)
   11e2e:	008ba703          	lw	a4,8(s7)
   11e32:	ffc98613          	addi	a2,s3,-4
   11e36:	02400693          	li	a3,36
   11e3a:	c75c                	sw	a5,12(a4)
   11e3c:	c798                	sw	a4,8(a5)
   11e3e:	008b8493          	addi	s1,s7,8
   11e42:	1cc6e763          	bltu	a3,a2,12010 <_realloc_r+0x3a8>
   11e46:	474d                	li	a4,19
   11e48:	87a6                	mv	a5,s1
   11e4a:	00c77e63          	bgeu	a4,a2,11e66 <_realloc_r+0x1fe>
   11e4e:	4018                	lw	a4,0(s0)
   11e50:	47ed                	li	a5,27
   11e52:	00eba423          	sw	a4,8(s7)
   11e56:	4058                	lw	a4,4(s0)
   11e58:	00eba623          	sw	a4,12(s7)
   11e5c:	1cc7ea63          	bltu	a5,a2,12030 <_realloc_r+0x3c8>
   11e60:	0421                	addi	s0,s0,8
   11e62:	010b8793          	addi	a5,s7,16
   11e66:	4018                	lw	a4,0(s0)
   11e68:	c398                	sw	a4,0(a5)
   11e6a:	4058                	lw	a4,4(s0)
   11e6c:	c3d8                	sw	a4,4(a5)
   11e6e:	4418                	lw	a4,8(s0)
   11e70:	c798                	sw	a4,8(a5)
   11e72:	014b87b3          	add	a5,s7,s4
   11e76:	414b0733          	sub	a4,s6,s4
   11e7a:	00fc2423          	sw	a5,8(s8)
   11e7e:	00176713          	ori	a4,a4,1
   11e82:	c3d8                	sw	a4,4(a5)
   11e84:	004ba783          	lw	a5,4(s7)
   11e88:	854a                	mv	a0,s2
   11e8a:	8b85                	andi	a5,a5,1
   11e8c:	0147e7b3          	or	a5,a5,s4
   11e90:	00fba223          	sw	a5,4(s7)
   11e94:	b7aff0ef          	jal	1120e <__malloc_unlock>
   11e98:	4b42                	lw	s6,16(sp)
   11e9a:	4bb2                	lw	s7,12(sp)
   11e9c:	4c22                	lw	s8,8(sp)
   11e9e:	b701                	j	11d9e <_realloc_r+0x136>
   11ea0:	4014                	lw	a3,0(s0)
   11ea2:	476d                	li	a4,27
   11ea4:	c114                	sw	a3,0(a0)
   11ea6:	4054                	lw	a3,4(s0)
   11ea8:	c154                	sw	a3,4(a0)
   11eaa:	0cc76963          	bltu	a4,a2,11f7c <_realloc_r+0x314>
   11eae:	00840713          	addi	a4,s0,8
   11eb2:	00850793          	addi	a5,a0,8
   11eb6:	b549                	j	11d38 <_realloc_r+0xd0>
   11eb8:	ffc52783          	lw	a5,-4(a0)
   11ebc:	4c22                	lw	s8,8(sp)
   11ebe:	9bf1                	andi	a5,a5,-4
   11ec0:	99be                	add	s3,s3,a5
   11ec2:	bd45                	j	11d72 <_realloc_r+0x10a>
   11ec4:	00cba783          	lw	a5,12(s7)
   11ec8:	008ba683          	lw	a3,8(s7)
   11ecc:	ffc98613          	addi	a2,s3,-4
   11ed0:	02400593          	li	a1,36
   11ed4:	c6dc                	sw	a5,12(a3)
   11ed6:	c794                	sw	a3,8(a5)
   11ed8:	008b8493          	addi	s1,s7,8
   11edc:	08c5eb63          	bltu	a1,a2,11f72 <_realloc_r+0x30a>
   11ee0:	46cd                	li	a3,19
   11ee2:	87a6                	mv	a5,s1
   11ee4:	00c6fe63          	bgeu	a3,a2,11f00 <_realloc_r+0x298>
   11ee8:	4018                	lw	a4,0(s0)
   11eea:	47ed                	li	a5,27
   11eec:	00eba423          	sw	a4,8(s7)
   11ef0:	4058                	lw	a4,4(s0)
   11ef2:	00eba623          	sw	a4,12(s7)
   11ef6:	0cc7e463          	bltu	a5,a2,11fbe <_realloc_r+0x356>
   11efa:	0421                	addi	s0,s0,8
   11efc:	010b8793          	addi	a5,s7,16
   11f00:	4014                	lw	a3,0(s0)
   11f02:	c394                	sw	a3,0(a5)
   11f04:	4054                	lw	a3,4(s0)
   11f06:	c3d4                	sw	a3,4(a5)
   11f08:	4414                	lw	a3,8(s0)
   11f0a:	c794                	sw	a3,8(a5)
   11f0c:	89da                	mv	s3,s6
   11f0e:	8ade                	mv	s5,s7
   11f10:	4b42                	lw	s6,16(sp)
   11f12:	4bb2                	lw	s7,12(sp)
   11f14:	4c22                	lw	s8,8(sp)
   11f16:	8426                	mv	s0,s1
   11f18:	bda9                	j	11d72 <_realloc_r+0x10a>
   11f1a:	85a2                	mv	a1,s0
   11f1c:	3e21                	jal	11a34 <memmove>
   11f1e:	b51d                	j	11d44 <_realloc_r+0xdc>
   11f20:	46dc                	lw	a5,12(a3)
   11f22:	4698                	lw	a4,8(a3)
   11f24:	ffc98613          	addi	a2,s3,-4
   11f28:	02400693          	li	a3,36
   11f2c:	c75c                	sw	a5,12(a4)
   11f2e:	c798                	sw	a4,8(a5)
   11f30:	008ba703          	lw	a4,8(s7)
   11f34:	00cba783          	lw	a5,12(s7)
   11f38:	008b8493          	addi	s1,s7,8
   11f3c:	c75c                	sw	a5,12(a4)
   11f3e:	c798                	sw	a4,8(a5)
   11f40:	02c6e963          	bltu	a3,a2,11f72 <_realloc_r+0x30a>
   11f44:	474d                	li	a4,19
   11f46:	87a6                	mv	a5,s1
   11f48:	00c77e63          	bgeu	a4,a2,11f64 <_realloc_r+0x2fc>
   11f4c:	4018                	lw	a4,0(s0)
   11f4e:	47ed                	li	a5,27
   11f50:	00eba423          	sw	a4,8(s7)
   11f54:	4058                	lw	a4,4(s0)
   11f56:	00eba623          	sw	a4,12(s7)
   11f5a:	08c7ed63          	bltu	a5,a2,11ff4 <_realloc_r+0x38c>
   11f5e:	0421                	addi	s0,s0,8
   11f60:	010b8793          	addi	a5,s7,16
   11f64:	4018                	lw	a4,0(s0)
   11f66:	c398                	sw	a4,0(a5)
   11f68:	4058                	lw	a4,4(s0)
   11f6a:	c3d8                	sw	a4,4(a5)
   11f6c:	4418                	lw	a4,8(s0)
   11f6e:	c798                	sw	a4,8(a5)
   11f70:	bf71                	j	11f0c <_realloc_r+0x2a4>
   11f72:	85a2                	mv	a1,s0
   11f74:	8526                	mv	a0,s1
   11f76:	abfff0ef          	jal	11a34 <memmove>
   11f7a:	bf49                	j	11f0c <_realloc_r+0x2a4>
   11f7c:	4418                	lw	a4,8(s0)
   11f7e:	c518                	sw	a4,8(a0)
   11f80:	4458                	lw	a4,12(s0)
   11f82:	c558                	sw	a4,12(a0)
   11f84:	04f60f63          	beq	a2,a5,11fe2 <_realloc_r+0x37a>
   11f88:	01040713          	addi	a4,s0,16
   11f8c:	01050793          	addi	a5,a0,16
   11f90:	b365                	j	11d38 <_realloc_r+0xd0>
   11f92:	9ad2                	add	s5,s5,s4
   11f94:	414686b3          	sub	a3,a3,s4
   11f98:	015c2423          	sw	s5,8(s8)
   11f9c:	0016e793          	ori	a5,a3,1
   11fa0:	00faa223          	sw	a5,4(s5)
   11fa4:	ffc42783          	lw	a5,-4(s0)
   11fa8:	854a                	mv	a0,s2
   11faa:	84a2                	mv	s1,s0
   11fac:	8b85                	andi	a5,a5,1
   11fae:	0147e7b3          	or	a5,a5,s4
   11fb2:	fef42e23          	sw	a5,-4(s0)
   11fb6:	a58ff0ef          	jal	1120e <__malloc_unlock>
   11fba:	4c22                	lw	s8,8(sp)
   11fbc:	b3cd                	j	11d9e <_realloc_r+0x136>
   11fbe:	441c                	lw	a5,8(s0)
   11fc0:	00fba823          	sw	a5,16(s7)
   11fc4:	445c                	lw	a5,12(s0)
   11fc6:	00fbaa23          	sw	a5,20(s7)
   11fca:	04b60863          	beq	a2,a1,1201a <_realloc_r+0x3b2>
   11fce:	0441                	addi	s0,s0,16
   11fd0:	018b8793          	addi	a5,s7,24
   11fd4:	b735                	j	11f00 <_realloc_r+0x298>
   11fd6:	854a                	mv	a0,s2
   11fd8:	a36ff0ef          	jal	1120e <__malloc_unlock>
   11fdc:	4481                	li	s1,0
   11fde:	4c22                	lw	s8,8(sp)
   11fe0:	bb7d                	j	11d9e <_realloc_r+0x136>
   11fe2:	4814                	lw	a3,16(s0)
   11fe4:	01840713          	addi	a4,s0,24
   11fe8:	01850793          	addi	a5,a0,24
   11fec:	c914                	sw	a3,16(a0)
   11fee:	4854                	lw	a3,20(s0)
   11ff0:	c954                	sw	a3,20(a0)
   11ff2:	b399                	j	11d38 <_realloc_r+0xd0>
   11ff4:	4418                	lw	a4,8(s0)
   11ff6:	02400793          	li	a5,36
   11ffa:	00eba823          	sw	a4,16(s7)
   11ffe:	4458                	lw	a4,12(s0)
   12000:	00ebaa23          	sw	a4,20(s7)
   12004:	04f60263          	beq	a2,a5,12048 <_realloc_r+0x3e0>
   12008:	0441                	addi	s0,s0,16
   1200a:	018b8793          	addi	a5,s7,24
   1200e:	bf99                	j	11f64 <_realloc_r+0x2fc>
   12010:	85a2                	mv	a1,s0
   12012:	8526                	mv	a0,s1
   12014:	a21ff0ef          	jal	11a34 <memmove>
   12018:	bda9                	j	11e72 <_realloc_r+0x20a>
   1201a:	4818                	lw	a4,16(s0)
   1201c:	020b8793          	addi	a5,s7,32
   12020:	0461                	addi	s0,s0,24
   12022:	00ebac23          	sw	a4,24(s7)
   12026:	ffc42703          	lw	a4,-4(s0)
   1202a:	00ebae23          	sw	a4,28(s7)
   1202e:	bdc9                	j	11f00 <_realloc_r+0x298>
   12030:	441c                	lw	a5,8(s0)
   12032:	00fba823          	sw	a5,16(s7)
   12036:	445c                	lw	a5,12(s0)
   12038:	00fbaa23          	sw	a5,20(s7)
   1203c:	02d60163          	beq	a2,a3,1205e <_realloc_r+0x3f6>
   12040:	0441                	addi	s0,s0,16
   12042:	018b8793          	addi	a5,s7,24
   12046:	b505                	j	11e66 <_realloc_r+0x1fe>
   12048:	4818                	lw	a4,16(s0)
   1204a:	020b8793          	addi	a5,s7,32
   1204e:	0461                	addi	s0,s0,24
   12050:	00ebac23          	sw	a4,24(s7)
   12054:	ffc42703          	lw	a4,-4(s0)
   12058:	00ebae23          	sw	a4,28(s7)
   1205c:	b721                	j	11f64 <_realloc_r+0x2fc>
   1205e:	4818                	lw	a4,16(s0)
   12060:	020b8793          	addi	a5,s7,32
   12064:	00ebac23          	sw	a4,24(s7)
   12068:	4858                	lw	a4,20(s0)
   1206a:	0461                	addi	s0,s0,24
   1206c:	00ebae23          	sw	a4,28(s7)
   12070:	bbdd                	j	11e66 <_realloc_r+0x1fe>

00012072 <__smakebuf_r>:
   12072:	00c59783          	lh	a5,12(a1)
   12076:	7159                	addi	sp,sp,-112
   12078:	d4a2                	sw	s0,104(sp)
   1207a:	d686                	sw	ra,108(sp)
   1207c:	0027f713          	andi	a4,a5,2
   12080:	842e                	mv	s0,a1
   12082:	cb19                	beqz	a4,12098 <__smakebuf_r+0x26>
   12084:	04358793          	addi	a5,a1,67
   12088:	4705                	li	a4,1
   1208a:	c19c                	sw	a5,0(a1)
   1208c:	c99c                	sw	a5,16(a1)
   1208e:	c9d8                	sw	a4,20(a1)
   12090:	50b6                	lw	ra,108(sp)
   12092:	5426                	lw	s0,104(sp)
   12094:	6165                	addi	sp,sp,112
   12096:	8082                	ret
   12098:	00e59583          	lh	a1,14(a1)
   1209c:	d0ca                	sw	s2,96(sp)
   1209e:	d2a6                	sw	s1,100(sp)
   120a0:	892a                	mv	s2,a0
   120a2:	0405cd63          	bltz	a1,120fc <__smakebuf_r+0x8a>
   120a6:	0030                	addi	a2,sp,8
   120a8:	22a9                	jal	121f2 <_fstat_r>
   120aa:	04054763          	bltz	a0,120f8 <__smakebuf_r+0x86>
   120ae:	40000593          	li	a1,1024
   120b2:	854a                	mv	a0,s2
   120b4:	44b2                	lw	s1,12(sp)
   120b6:	b8bfe0ef          	jal	10c40 <_malloc_r>
   120ba:	00c41783          	lh	a5,12(s0)
   120be:	cd3d                	beqz	a0,1213c <__smakebuf_r+0xca>
   120c0:	673d                	lui	a4,0xf
   120c2:	0807e793          	ori	a5,a5,128
   120c6:	40000693          	li	a3,1024
   120ca:	8cf9                	and	s1,s1,a4
   120cc:	00f41623          	sh	a5,12(s0)
   120d0:	c008                	sw	a0,0(s0)
   120d2:	c808                	sw	a0,16(s0)
   120d4:	c854                	sw	a3,20(s0)
   120d6:	6709                	lui	a4,0x2
   120d8:	08e49663          	bne	s1,a4,12164 <__smakebuf_r+0xf2>
   120dc:	00e41583          	lh	a1,14(s0)
   120e0:	854a                	mv	a0,s2
   120e2:	22a1                	jal	1222a <_isatty_r>
   120e4:	6705                	lui	a4,0x1
   120e6:	00c41783          	lh	a5,12(s0)
   120ea:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   120ee:	cd15                	beqz	a0,1212a <__smakebuf_r+0xb8>
   120f0:	9bf1                	andi	a5,a5,-4
   120f2:	0017e793          	ori	a5,a5,1
   120f6:	a815                	j	1212a <__smakebuf_r+0xb8>
   120f8:	00c41783          	lh	a5,12(s0)
   120fc:	0807f493          	andi	s1,a5,128
   12100:	0014b493          	seqz	s1,s1
   12104:	409004b3          	neg	s1,s1
   12108:	3c04f493          	andi	s1,s1,960
   1210c:	04048493          	addi	s1,s1,64
   12110:	854a                	mv	a0,s2
   12112:	85a6                	mv	a1,s1
   12114:	b2dfe0ef          	jal	10c40 <_malloc_r>
   12118:	00c41783          	lh	a5,12(s0)
   1211c:	c105                	beqz	a0,1213c <__smakebuf_r+0xca>
   1211e:	0807e793          	ori	a5,a5,128
   12122:	c008                	sw	a0,0(s0)
   12124:	c808                	sw	a0,16(s0)
   12126:	c844                	sw	s1,20(s0)
   12128:	4701                	li	a4,0
   1212a:	8fd9                	or	a5,a5,a4
   1212c:	50b6                	lw	ra,108(sp)
   1212e:	00f41623          	sh	a5,12(s0)
   12132:	5426                	lw	s0,104(sp)
   12134:	5496                	lw	s1,100(sp)
   12136:	5906                	lw	s2,96(sp)
   12138:	6165                	addi	sp,sp,112
   1213a:	8082                	ret
   1213c:	2007f713          	andi	a4,a5,512
   12140:	ef19                	bnez	a4,1215e <__smakebuf_r+0xec>
   12142:	9bf1                	andi	a5,a5,-4
   12144:	04340713          	addi	a4,s0,67
   12148:	0027e793          	ori	a5,a5,2
   1214c:	4685                	li	a3,1
   1214e:	5496                	lw	s1,100(sp)
   12150:	5906                	lw	s2,96(sp)
   12152:	00f41623          	sh	a5,12(s0)
   12156:	c018                	sw	a4,0(s0)
   12158:	c818                	sw	a4,16(s0)
   1215a:	c854                	sw	a3,20(s0)
   1215c:	bf15                	j	12090 <__smakebuf_r+0x1e>
   1215e:	5496                	lw	s1,100(sp)
   12160:	5906                	lw	s2,96(sp)
   12162:	b73d                	j	12090 <__smakebuf_r+0x1e>
   12164:	6705                	lui	a4,0x1
   12166:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   1216a:	b7c1                	j	1212a <__smakebuf_r+0xb8>

0001216c <__swhatbuf_r>:
   1216c:	7159                	addi	sp,sp,-112
   1216e:	d4a2                	sw	s0,104(sp)
   12170:	842e                	mv	s0,a1
   12172:	00e59583          	lh	a1,14(a1)
   12176:	d2a6                	sw	s1,100(sp)
   12178:	d0ca                	sw	s2,96(sp)
   1217a:	d686                	sw	ra,108(sp)
   1217c:	84b2                	mv	s1,a2
   1217e:	8936                	mv	s2,a3
   12180:	0205cb63          	bltz	a1,121b6 <__swhatbuf_r+0x4a>
   12184:	0030                	addi	a2,sp,8
   12186:	20b5                	jal	121f2 <_fstat_r>
   12188:	02054763          	bltz	a0,121b6 <__swhatbuf_r+0x4a>
   1218c:	47b2                	lw	a5,12(sp)
   1218e:	66bd                	lui	a3,0xf
   12190:	7779                	lui	a4,0xffffe
   12192:	8ff5                	and	a5,a5,a3
   12194:	97ba                	add	a5,a5,a4
   12196:	50b6                	lw	ra,108(sp)
   12198:	5426                	lw	s0,104(sp)
   1219a:	0017b793          	seqz	a5,a5
   1219e:	00f92023          	sw	a5,0(s2)
   121a2:	40000713          	li	a4,1024
   121a6:	c098                	sw	a4,0(s1)
   121a8:	6505                	lui	a0,0x1
   121aa:	5496                	lw	s1,100(sp)
   121ac:	5906                	lw	s2,96(sp)
   121ae:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8b4>
   121b2:	6165                	addi	sp,sp,112
   121b4:	8082                	ret
   121b6:	00c45783          	lhu	a5,12(s0)
   121ba:	0807f793          	andi	a5,a5,128
   121be:	cf91                	beqz	a5,121da <__swhatbuf_r+0x6e>
   121c0:	50b6                	lw	ra,108(sp)
   121c2:	5426                	lw	s0,104(sp)
   121c4:	4781                	li	a5,0
   121c6:	00f92023          	sw	a5,0(s2)
   121ca:	04000713          	li	a4,64
   121ce:	c098                	sw	a4,0(s1)
   121d0:	5906                	lw	s2,96(sp)
   121d2:	5496                	lw	s1,100(sp)
   121d4:	4501                	li	a0,0
   121d6:	6165                	addi	sp,sp,112
   121d8:	8082                	ret
   121da:	50b6                	lw	ra,108(sp)
   121dc:	5426                	lw	s0,104(sp)
   121de:	00f92023          	sw	a5,0(s2)
   121e2:	40000713          	li	a4,1024
   121e6:	c098                	sw	a4,0(s1)
   121e8:	5906                	lw	s2,96(sp)
   121ea:	5496                	lw	s1,100(sp)
   121ec:	4501                	li	a0,0
   121ee:	6165                	addi	sp,sp,112
   121f0:	8082                	ret

000121f2 <_fstat_r>:
   121f2:	1141                	addi	sp,sp,-16
   121f4:	872e                	mv	a4,a1
   121f6:	c422                	sw	s0,8(sp)
   121f8:	c226                	sw	s1,4(sp)
   121fa:	85b2                	mv	a1,a2
   121fc:	842a                	mv	s0,a0
   121fe:	853a                	mv	a0,a4
   12200:	c606                	sw	ra,12(sp)
   12202:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   12206:	204d                	jal	122a8 <_fstat>
   12208:	57fd                	li	a5,-1
   1220a:	00f50763          	beq	a0,a5,12218 <_fstat_r+0x26>
   1220e:	40b2                	lw	ra,12(sp)
   12210:	4422                	lw	s0,8(sp)
   12212:	4492                	lw	s1,4(sp)
   12214:	0141                	addi	sp,sp,16
   12216:	8082                	ret
   12218:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   1221c:	dbed                	beqz	a5,1220e <_fstat_r+0x1c>
   1221e:	40b2                	lw	ra,12(sp)
   12220:	c01c                	sw	a5,0(s0)
   12222:	4422                	lw	s0,8(sp)
   12224:	4492                	lw	s1,4(sp)
   12226:	0141                	addi	sp,sp,16
   12228:	8082                	ret

0001222a <_isatty_r>:
   1222a:	1141                	addi	sp,sp,-16
   1222c:	c422                	sw	s0,8(sp)
   1222e:	c226                	sw	s1,4(sp)
   12230:	842a                	mv	s0,a0
   12232:	852e                	mv	a0,a1
   12234:	c606                	sw	ra,12(sp)
   12236:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   1223a:	205d                	jal	122e0 <_isatty>
   1223c:	57fd                	li	a5,-1
   1223e:	00f50763          	beq	a0,a5,1224c <_isatty_r+0x22>
   12242:	40b2                	lw	ra,12(sp)
   12244:	4422                	lw	s0,8(sp)
   12246:	4492                	lw	s1,4(sp)
   12248:	0141                	addi	sp,sp,16
   1224a:	8082                	ret
   1224c:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   12250:	dbed                	beqz	a5,12242 <_isatty_r+0x18>
   12252:	40b2                	lw	ra,12(sp)
   12254:	c01c                	sw	a5,0(s0)
   12256:	4422                	lw	s0,8(sp)
   12258:	4492                	lw	s1,4(sp)
   1225a:	0141                	addi	sp,sp,16
   1225c:	8082                	ret

0001225e <_close>:
   1225e:	1141                	addi	sp,sp,-16
   12260:	c606                	sw	ra,12(sp)
   12262:	c422                	sw	s0,8(sp)
   12264:	03900893          	li	a7,57
   12268:	00000073          	ecall
   1226c:	842a                	mv	s0,a0
   1226e:	00054763          	bltz	a0,1227c <_close+0x1e>
   12272:	40b2                	lw	ra,12(sp)
   12274:	8522                	mv	a0,s0
   12276:	4422                	lw	s0,8(sp)
   12278:	0141                	addi	sp,sp,16
   1227a:	8082                	ret
   1227c:	40800433          	neg	s0,s0
   12280:	22e1                	jal	12448 <__errno>
   12282:	c100                	sw	s0,0(a0)
   12284:	547d                	li	s0,-1
   12286:	b7f5                	j	12272 <_close+0x14>

00012288 <_exit>:
   12288:	05d00893          	li	a7,93
   1228c:	00000073          	ecall
   12290:	00054363          	bltz	a0,12296 <_exit+0xe>
   12294:	a001                	j	12294 <_exit+0xc>
   12296:	1141                	addi	sp,sp,-16
   12298:	c422                	sw	s0,8(sp)
   1229a:	842a                	mv	s0,a0
   1229c:	c606                	sw	ra,12(sp)
   1229e:	40800433          	neg	s0,s0
   122a2:	225d                	jal	12448 <__errno>
   122a4:	c100                	sw	s0,0(a0)
   122a6:	a001                	j	122a6 <_exit+0x1e>

000122a8 <_fstat>:
   122a8:	7175                	addi	sp,sp,-144
   122aa:	c326                	sw	s1,132(sp)
   122ac:	c706                	sw	ra,140(sp)
   122ae:	84ae                	mv	s1,a1
   122b0:	c522                	sw	s0,136(sp)
   122b2:	858a                	mv	a1,sp
   122b4:	05000893          	li	a7,80
   122b8:	00000073          	ecall
   122bc:	842a                	mv	s0,a0
   122be:	00054b63          	bltz	a0,122d4 <_fstat+0x2c>
   122c2:	8526                	mv	a0,s1
   122c4:	858a                	mv	a1,sp
   122c6:	2231                	jal	123d2 <_conv_stat>
   122c8:	40ba                	lw	ra,140(sp)
   122ca:	8522                	mv	a0,s0
   122cc:	442a                	lw	s0,136(sp)
   122ce:	449a                	lw	s1,132(sp)
   122d0:	6149                	addi	sp,sp,144
   122d2:	8082                	ret
   122d4:	40800433          	neg	s0,s0
   122d8:	2a85                	jal	12448 <__errno>
   122da:	c100                	sw	s0,0(a0)
   122dc:	547d                	li	s0,-1
   122de:	b7d5                	j	122c2 <_fstat+0x1a>

000122e0 <_isatty>:
   122e0:	7159                	addi	sp,sp,-112
   122e2:	002c                	addi	a1,sp,8
   122e4:	d686                	sw	ra,108(sp)
   122e6:	37c9                	jal	122a8 <_fstat>
   122e8:	57fd                	li	a5,-1
   122ea:	00f50863          	beq	a0,a5,122fa <_isatty+0x1a>
   122ee:	4532                	lw	a0,12(sp)
   122f0:	50b6                	lw	ra,108(sp)
   122f2:	8135                	srli	a0,a0,0xd
   122f4:	8905                	andi	a0,a0,1
   122f6:	6165                	addi	sp,sp,112
   122f8:	8082                	ret
   122fa:	50b6                	lw	ra,108(sp)
   122fc:	4501                	li	a0,0
   122fe:	6165                	addi	sp,sp,112
   12300:	8082                	ret

00012302 <_lseek>:
   12302:	1141                	addi	sp,sp,-16
   12304:	c606                	sw	ra,12(sp)
   12306:	c422                	sw	s0,8(sp)
   12308:	03e00893          	li	a7,62
   1230c:	00000073          	ecall
   12310:	842a                	mv	s0,a0
   12312:	00054763          	bltz	a0,12320 <_lseek+0x1e>
   12316:	40b2                	lw	ra,12(sp)
   12318:	8522                	mv	a0,s0
   1231a:	4422                	lw	s0,8(sp)
   1231c:	0141                	addi	sp,sp,16
   1231e:	8082                	ret
   12320:	40800433          	neg	s0,s0
   12324:	2215                	jal	12448 <__errno>
   12326:	c100                	sw	s0,0(a0)
   12328:	547d                	li	s0,-1
   1232a:	b7f5                	j	12316 <_lseek+0x14>

0001232c <_read>:
   1232c:	1141                	addi	sp,sp,-16
   1232e:	c606                	sw	ra,12(sp)
   12330:	c422                	sw	s0,8(sp)
   12332:	03f00893          	li	a7,63
   12336:	00000073          	ecall
   1233a:	842a                	mv	s0,a0
   1233c:	00054763          	bltz	a0,1234a <_read+0x1e>
   12340:	40b2                	lw	ra,12(sp)
   12342:	8522                	mv	a0,s0
   12344:	4422                	lw	s0,8(sp)
   12346:	0141                	addi	sp,sp,16
   12348:	8082                	ret
   1234a:	40800433          	neg	s0,s0
   1234e:	28ed                	jal	12448 <__errno>
   12350:	c100                	sw	s0,0(a0)
   12352:	547d                	li	s0,-1
   12354:	b7f5                	j	12340 <_read+0x14>

00012356 <_sbrk>:
   12356:	d601a703          	lw	a4,-672(gp) # 139d8 <heap_end.0>
   1235a:	1141                	addi	sp,sp,-16
   1235c:	c606                	sw	ra,12(sp)
   1235e:	87aa                	mv	a5,a0
   12360:	ef01                	bnez	a4,12378 <_sbrk+0x22>
   12362:	0d600893          	li	a7,214
   12366:	4501                	li	a0,0
   12368:	00000073          	ecall
   1236c:	567d                	li	a2,-1
   1236e:	872a                	mv	a4,a0
   12370:	02c50563          	beq	a0,a2,1239a <_sbrk+0x44>
   12374:	d6a1a023          	sw	a0,-672(gp) # 139d8 <heap_end.0>
   12378:	00e78533          	add	a0,a5,a4
   1237c:	0d600893          	li	a7,214
   12380:	00000073          	ecall
   12384:	d601a703          	lw	a4,-672(gp) # 139d8 <heap_end.0>
   12388:	97ba                	add	a5,a5,a4
   1238a:	00f51863          	bne	a0,a5,1239a <_sbrk+0x44>
   1238e:	40b2                	lw	ra,12(sp)
   12390:	d6a1a023          	sw	a0,-672(gp) # 139d8 <heap_end.0>
   12394:	853a                	mv	a0,a4
   12396:	0141                	addi	sp,sp,16
   12398:	8082                	ret
   1239a:	207d                	jal	12448 <__errno>
   1239c:	40b2                	lw	ra,12(sp)
   1239e:	47b1                	li	a5,12
   123a0:	c11c                	sw	a5,0(a0)
   123a2:	557d                	li	a0,-1
   123a4:	0141                	addi	sp,sp,16
   123a6:	8082                	ret

000123a8 <_write>:
   123a8:	1141                	addi	sp,sp,-16
   123aa:	c606                	sw	ra,12(sp)
   123ac:	c422                	sw	s0,8(sp)
   123ae:	04000893          	li	a7,64
   123b2:	00000073          	ecall
   123b6:	842a                	mv	s0,a0
   123b8:	00054763          	bltz	a0,123c6 <_write+0x1e>
   123bc:	40b2                	lw	ra,12(sp)
   123be:	8522                	mv	a0,s0
   123c0:	4422                	lw	s0,8(sp)
   123c2:	0141                	addi	sp,sp,16
   123c4:	8082                	ret
   123c6:	40800433          	neg	s0,s0
   123ca:	28bd                	jal	12448 <__errno>
   123cc:	c100                	sw	s0,0(a0)
   123ce:	547d                	li	s0,-1
   123d0:	b7f5                	j	123bc <_write+0x14>

000123d2 <_conv_stat>:
   123d2:	1141                	addi	sp,sp,-16
   123d4:	419c                	lw	a5,0(a1)
   123d6:	0145a383          	lw	t2,20(a1)
   123da:	0185a283          	lw	t0,24(a1)
   123de:	01c5af83          	lw	t6,28(a1)
   123e2:	0205af03          	lw	t5,32(a1)
   123e6:	0305ae83          	lw	t4,48(a1)
   123ea:	0405ae03          	lw	t3,64(a1)
   123ee:	0385a303          	lw	t1,56(a1)
   123f2:	0485a803          	lw	a6,72(a1)
   123f6:	04c5a883          	lw	a7,76(a1)
   123fa:	4db0                	lw	a2,88(a1)
   123fc:	c622                	sw	s0,12(sp)
   123fe:	c426                	sw	s1,8(sp)
   12400:	4980                	lw	s0,16(a1)
   12402:	4584                	lw	s1,8(a1)
   12404:	4df4                	lw	a3,92(a1)
   12406:	55b8                	lw	a4,104(a1)
   12408:	00f51023          	sh	a5,0(a0)
   1240c:	55fc                	lw	a5,108(a1)
   1240e:	00951123          	sh	s1,2(a0)
   12412:	c140                	sw	s0,4(a0)
   12414:	00751423          	sh	t2,8(a0)
   12418:	00551523          	sh	t0,10(a0)
   1241c:	01f51623          	sh	t6,12(a0)
   12420:	01e51723          	sh	t5,14(a0)
   12424:	01d52823          	sw	t4,16(a0)
   12428:	05c52623          	sw	t3,76(a0)
   1242c:	04652423          	sw	t1,72(a0)
   12430:	01052c23          	sw	a6,24(a0)
   12434:	01152e23          	sw	a7,28(a0)
   12438:	d510                	sw	a2,40(a0)
   1243a:	d554                	sw	a3,44(a0)
   1243c:	4432                	lw	s0,12(sp)
   1243e:	dd18                	sw	a4,56(a0)
   12440:	dd5c                	sw	a5,60(a0)
   12442:	44a2                	lw	s1,8(sp)
   12444:	0141                	addi	sp,sp,16
   12446:	8082                	ret

00012448 <__errno>:
   12448:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   1244c:	8082                	ret
