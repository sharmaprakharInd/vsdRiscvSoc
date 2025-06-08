
hello_O0.elf:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	addi	sp,sp,-16
   100b6:	4581                	li	a1,0
   100b8:	c422                	sw	s0,8(sp)
   100ba:	c606                	sw	ra,12(sp)
   100bc:	842a                	mv	s0,a0
   100be:	7c6000ef          	jal	10884 <__call_exitprocs>
   100c2:	d481a783          	lw	a5,-696(gp) # 139c0 <__stdio_exit_handler>
   100c6:	c391                	beqz	a5,100ca <exit+0x16>
   100c8:	9782                	jalr	a5
   100ca:	8522                	mv	a0,s0
   100cc:	1c0020ef          	jal	1228c <_exit>

000100d0 <register_fini>:
   100d0:	00000793          	li	a5,0
   100d4:	c791                	beqz	a5,100e0 <register_fini+0x10>
   100d6:	6549                	lui	a0,0x12
   100d8:	a0450513          	addi	a0,a0,-1532 # 11a04 <__libc_fini_array>
   100dc:	0770006f          	j	10952 <atexit>
   100e0:	8082                	ret

000100e2 <_start>:
   100e2:	00004197          	auipc	gp,0x4
   100e6:	b9618193          	addi	gp,gp,-1130 # 13c78 <__global_pointer$>
   100ea:	d4818513          	addi	a0,gp,-696 # 139c0 <__stdio_exit_handler>
   100ee:	07018613          	addi	a2,gp,112 # 13ce8 <__BSS_END__>
   100f2:	8e09                	sub	a2,a2,a0
   100f4:	4581                	li	a1,0
   100f6:	2549                	jal	10778 <memset>
   100f8:	00001517          	auipc	a0,0x1
   100fc:	85a50513          	addi	a0,a0,-1958 # 10952 <atexit>
   10100:	c519                	beqz	a0,1010e <_start+0x2c>
   10102:	00002517          	auipc	a0,0x2
   10106:	90250513          	addi	a0,a0,-1790 # 11a04 <__libc_fini_array>
   1010a:	049000ef          	jal	10952 <atexit>
   1010e:	2501                	jal	1070e <__libc_init_array>
   10110:	4502                	lw	a0,0(sp)
   10112:	004c                	addi	a1,sp,4
   10114:	4601                	li	a2,0
   10116:	20b1                	jal	10162 <main>
   10118:	bf71                	j	100b4 <exit>

0001011a <__do_global_dtors_aux>:
   1011a:	1141                	addi	sp,sp,-16
   1011c:	c422                	sw	s0,8(sp)
   1011e:	d641c783          	lbu	a5,-668(gp) # 139dc <completed.1>
   10122:	c606                	sw	ra,12(sp)
   10124:	ef91                	bnez	a5,10140 <__do_global_dtors_aux+0x26>
   10126:	00000793          	li	a5,0
   1012a:	cb81                	beqz	a5,1013a <__do_global_dtors_aux+0x20>
   1012c:	6549                	lui	a0,0x12
   1012e:	46850513          	addi	a0,a0,1128 # 12468 <__EH_FRAME_BEGIN__>
   10132:	00000097          	auipc	ra,0x0
   10136:	000000e7          	jalr	zero # 0 <exit-0x100b4>
   1013a:	4785                	li	a5,1
   1013c:	d6f18223          	sb	a5,-668(gp) # 139dc <completed.1>
   10140:	40b2                	lw	ra,12(sp)
   10142:	4422                	lw	s0,8(sp)
   10144:	0141                	addi	sp,sp,16
   10146:	8082                	ret

00010148 <frame_dummy>:
   10148:	00000793          	li	a5,0
   1014c:	cb91                	beqz	a5,10160 <frame_dummy+0x18>
   1014e:	6549                	lui	a0,0x12
   10150:	d6818593          	addi	a1,gp,-664 # 139e0 <object.0>
   10154:	46850513          	addi	a0,a0,1128 # 12468 <__EH_FRAME_BEGIN__>
   10158:	00000317          	auipc	t1,0x0
   1015c:	00000067          	jr	zero # 0 <exit-0x100b4>
   10160:	8082                	ret

00010162 <main>:
   10162:	1141                	addi	sp,sp,-16
   10164:	c606                	sw	ra,12(sp)
   10166:	c422                	sw	s0,8(sp)
   10168:	0800                	addi	s0,sp,16
   1016a:	67c9                	lui	a5,0x12
   1016c:	45478513          	addi	a0,a5,1108 # 12454 <__errno+0x8>
   10170:	2695                	jal	104d4 <puts>
   10172:	a001                	j	10172 <main+0x10>

00010174 <__fp_lock>:
   10174:	4501                	li	a0,0
   10176:	8082                	ret

00010178 <stdio_exit_handler>:
   10178:	664d                	lui	a2,0x13
   1017a:	65c5                	lui	a1,0x11
   1017c:	654d                	lui	a0,0x13
   1017e:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   10182:	21458593          	addi	a1,a1,532 # 11214 <_fclose_r>
   10186:	48850513          	addi	a0,a0,1160 # 13488 <_impure_data>
   1018a:	aca9                	j	103e4 <_fwalk_sglue>

0001018c <cleanup_stdio>:
   1018c:	414c                	lw	a1,4(a0)
   1018e:	1141                	addi	sp,sp,-16
   10190:	c422                	sw	s0,8(sp)
   10192:	c606                	sw	ra,12(sp)
   10194:	d8018793          	addi	a5,gp,-640 # 139f8 <__sf>
   10198:	842a                	mv	s0,a0
   1019a:	00f58463          	beq	a1,a5,101a2 <cleanup_stdio+0x16>
   1019e:	076010ef          	jal	11214 <_fclose_r>
   101a2:	440c                	lw	a1,8(s0)
   101a4:	de818793          	addi	a5,gp,-536 # 13a60 <__sf+0x68>
   101a8:	00f58563          	beq	a1,a5,101b2 <cleanup_stdio+0x26>
   101ac:	8522                	mv	a0,s0
   101ae:	066010ef          	jal	11214 <_fclose_r>
   101b2:	444c                	lw	a1,12(s0)
   101b4:	e5018793          	addi	a5,gp,-432 # 13ac8 <__sf+0xd0>
   101b8:	00f58863          	beq	a1,a5,101c8 <cleanup_stdio+0x3c>
   101bc:	8522                	mv	a0,s0
   101be:	4422                	lw	s0,8(sp)
   101c0:	40b2                	lw	ra,12(sp)
   101c2:	0141                	addi	sp,sp,16
   101c4:	0500106f          	j	11214 <_fclose_r>
   101c8:	40b2                	lw	ra,12(sp)
   101ca:	4422                	lw	s0,8(sp)
   101cc:	0141                	addi	sp,sp,16
   101ce:	8082                	ret

000101d0 <__fp_unlock>:
   101d0:	4501                	li	a0,0
   101d2:	8082                	ret

000101d4 <global_stdio_init.part.0>:
   101d4:	1101                	addi	sp,sp,-32
   101d6:	cc22                	sw	s0,24(sp)
   101d8:	67c1                	lui	a5,0x10
   101da:	d8018413          	addi	s0,gp,-640 # 139f8 <__sf>
   101de:	ce06                	sw	ra,28(sp)
   101e0:	ca26                	sw	s1,20(sp)
   101e2:	c84a                	sw	s2,16(sp)
   101e4:	c64e                	sw	s3,12(sp)
   101e6:	c452                	sw	s4,8(sp)
   101e8:	4711                	li	a4,4
   101ea:	17878793          	addi	a5,a5,376 # 10178 <stdio_exit_handler>
   101ee:	4621                	li	a2,8
   101f0:	4581                	li	a1,0
   101f2:	ddc18513          	addi	a0,gp,-548 # 13a54 <__sf+0x5c>
   101f6:	d4f1a423          	sw	a5,-696(gp) # 139c0 <__stdio_exit_handler>
   101fa:	c458                	sw	a4,12(s0)
   101fc:	00042023          	sw	zero,0(s0)
   10200:	00042223          	sw	zero,4(s0)
   10204:	00042423          	sw	zero,8(s0)
   10208:	06042223          	sw	zero,100(s0)
   1020c:	00042823          	sw	zero,16(s0)
   10210:	00042a23          	sw	zero,20(s0)
   10214:	00042c23          	sw	zero,24(s0)
   10218:	2385                	jal	10778 <memset>
   1021a:	67c1                	lui	a5,0x10
   1021c:	6a41                	lui	s4,0x10
   1021e:	69c1                	lui	s3,0x10
   10220:	6941                	lui	s2,0x10
   10222:	64c1                	lui	s1,0x10
   10224:	4dca0a13          	addi	s4,s4,1244 # 104dc <__sread>
   10228:	51698993          	addi	s3,s3,1302 # 10516 <__swrite>
   1022c:	56690913          	addi	s2,s2,1382 # 10566 <__sseek>
   10230:	5a248493          	addi	s1,s1,1442 # 105a2 <__sclose>
   10234:	07a5                	addi	a5,a5,9 # 10009 <exit-0xab>
   10236:	4621                	li	a2,8
   10238:	4581                	li	a1,0
   1023a:	e4418513          	addi	a0,gp,-444 # 13abc <__sf+0xc4>
   1023e:	d87c                	sw	a5,116(s0)
   10240:	03442023          	sw	s4,32(s0)
   10244:	03342223          	sw	s3,36(s0)
   10248:	03242423          	sw	s2,40(s0)
   1024c:	d444                	sw	s1,44(s0)
   1024e:	cc40                	sw	s0,28(s0)
   10250:	06042423          	sw	zero,104(s0)
   10254:	06042623          	sw	zero,108(s0)
   10258:	06042823          	sw	zero,112(s0)
   1025c:	0c042623          	sw	zero,204(s0)
   10260:	06042c23          	sw	zero,120(s0)
   10264:	06042e23          	sw	zero,124(s0)
   10268:	08042023          	sw	zero,128(s0)
   1026c:	2331                	jal	10778 <memset>
   1026e:	000207b7          	lui	a5,0x20
   10272:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0xc32a>
   10274:	de818713          	addi	a4,gp,-536 # 13a60 <__sf+0x68>
   10278:	eac18513          	addi	a0,gp,-340 # 13b24 <__sf+0x12c>
   1027c:	4621                	li	a2,8
   1027e:	4581                	li	a1,0
   10280:	09442423          	sw	s4,136(s0)
   10284:	09342623          	sw	s3,140(s0)
   10288:	09242823          	sw	s2,144(s0)
   1028c:	08942a23          	sw	s1,148(s0)
   10290:	0cf42e23          	sw	a5,220(s0)
   10294:	0c042823          	sw	zero,208(s0)
   10298:	0c042a23          	sw	zero,212(s0)
   1029c:	0c042c23          	sw	zero,216(s0)
   102a0:	12042a23          	sw	zero,308(s0)
   102a4:	0e042023          	sw	zero,224(s0)
   102a8:	0e042223          	sw	zero,228(s0)
   102ac:	0e042423          	sw	zero,232(s0)
   102b0:	08e42223          	sw	a4,132(s0)
   102b4:	21d1                	jal	10778 <memset>
   102b6:	e5018793          	addi	a5,gp,-432 # 13ac8 <__sf+0xd0>
   102ba:	0f442823          	sw	s4,240(s0)
   102be:	0f342a23          	sw	s3,244(s0)
   102c2:	0f242c23          	sw	s2,248(s0)
   102c6:	0e942e23          	sw	s1,252(s0)
   102ca:	40f2                	lw	ra,28(sp)
   102cc:	0ef42623          	sw	a5,236(s0)
   102d0:	4462                	lw	s0,24(sp)
   102d2:	44d2                	lw	s1,20(sp)
   102d4:	4942                	lw	s2,16(sp)
   102d6:	49b2                	lw	s3,12(sp)
   102d8:	4a22                	lw	s4,8(sp)
   102da:	6105                	addi	sp,sp,32
   102dc:	8082                	ret

000102de <__sfp>:
   102de:	d481a783          	lw	a5,-696(gp) # 139c0 <__stdio_exit_handler>
   102e2:	1101                	addi	sp,sp,-32
   102e4:	c64e                	sw	s3,12(sp)
   102e6:	ce06                	sw	ra,28(sp)
   102e8:	cc22                	sw	s0,24(sp)
   102ea:	ca26                	sw	s1,20(sp)
   102ec:	c84a                	sw	s2,16(sp)
   102ee:	89aa                	mv	s3,a0
   102f0:	c7cd                	beqz	a5,1039a <__sfp+0xbc>
   102f2:	694d                	lui	s2,0x13
   102f4:	47890913          	addi	s2,s2,1144 # 13478 <__sglue>
   102f8:	54fd                	li	s1,-1
   102fa:	00492783          	lw	a5,4(s2)
   102fe:	00892403          	lw	s0,8(s2)
   10302:	17fd                	addi	a5,a5,-1
   10304:	0007d763          	bgez	a5,10312 <__sfp+0x34>
   10308:	a8b9                	j	10366 <__sfp+0x88>
   1030a:	06840413          	addi	s0,s0,104
   1030e:	04978c63          	beq	a5,s1,10366 <__sfp+0x88>
   10312:	00c41703          	lh	a4,12(s0)
   10316:	17fd                	addi	a5,a5,-1
   10318:	fb6d                	bnez	a4,1030a <__sfp+0x2c>
   1031a:	77c1                	lui	a5,0xffff0
   1031c:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc319>
   1031e:	06042223          	sw	zero,100(s0)
   10322:	00042023          	sw	zero,0(s0)
   10326:	00042423          	sw	zero,8(s0)
   1032a:	00042223          	sw	zero,4(s0)
   1032e:	00042823          	sw	zero,16(s0)
   10332:	00042a23          	sw	zero,20(s0)
   10336:	00042c23          	sw	zero,24(s0)
   1033a:	c45c                	sw	a5,12(s0)
   1033c:	4621                	li	a2,8
   1033e:	4581                	li	a1,0
   10340:	05c40513          	addi	a0,s0,92
   10344:	2915                	jal	10778 <memset>
   10346:	02042823          	sw	zero,48(s0)
   1034a:	02042a23          	sw	zero,52(s0)
   1034e:	04042223          	sw	zero,68(s0)
   10352:	04042423          	sw	zero,72(s0)
   10356:	40f2                	lw	ra,28(sp)
   10358:	8522                	mv	a0,s0
   1035a:	4462                	lw	s0,24(sp)
   1035c:	44d2                	lw	s1,20(sp)
   1035e:	4942                	lw	s2,16(sp)
   10360:	49b2                	lw	s3,12(sp)
   10362:	6105                	addi	sp,sp,32
   10364:	8082                	ret
   10366:	00092403          	lw	s0,0(s2)
   1036a:	c019                	beqz	s0,10370 <__sfp+0x92>
   1036c:	8922                	mv	s2,s0
   1036e:	b771                	j	102fa <__sfp+0x1c>
   10370:	1ac00593          	li	a1,428
   10374:	854e                	mv	a0,s3
   10376:	0cf000ef          	jal	10c44 <_malloc_r>
   1037a:	842a                	mv	s0,a0
   1037c:	c10d                	beqz	a0,1039e <__sfp+0xc0>
   1037e:	4791                	li	a5,4
   10380:	0531                	addi	a0,a0,12
   10382:	00042023          	sw	zero,0(s0)
   10386:	c05c                	sw	a5,4(s0)
   10388:	c408                	sw	a0,8(s0)
   1038a:	1a000613          	li	a2,416
   1038e:	4581                	li	a1,0
   10390:	26e5                	jal	10778 <memset>
   10392:	00892023          	sw	s0,0(s2)
   10396:	8922                	mv	s2,s0
   10398:	b78d                	j	102fa <__sfp+0x1c>
   1039a:	3d2d                	jal	101d4 <global_stdio_init.part.0>
   1039c:	bf99                	j	102f2 <__sfp+0x14>
   1039e:	00092023          	sw	zero,0(s2)
   103a2:	47b1                	li	a5,12
   103a4:	00f9a023          	sw	a5,0(s3)
   103a8:	b77d                	j	10356 <__sfp+0x78>

000103aa <__sinit>:
   103aa:	595c                	lw	a5,52(a0)
   103ac:	c391                	beqz	a5,103b0 <__sinit+0x6>
   103ae:	8082                	ret
   103b0:	67c1                	lui	a5,0x10
   103b2:	d481a703          	lw	a4,-696(gp) # 139c0 <__stdio_exit_handler>
   103b6:	18c78793          	addi	a5,a5,396 # 1018c <cleanup_stdio>
   103ba:	d95c                	sw	a5,52(a0)
   103bc:	fb6d                	bnez	a4,103ae <__sinit+0x4>
   103be:	bd19                	j	101d4 <global_stdio_init.part.0>

000103c0 <__sfp_lock_acquire>:
   103c0:	8082                	ret

000103c2 <__sfp_lock_release>:
   103c2:	8082                	ret

000103c4 <__fp_lock_all>:
   103c4:	664d                	lui	a2,0x13
   103c6:	65c1                	lui	a1,0x10
   103c8:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   103cc:	17458593          	addi	a1,a1,372 # 10174 <__fp_lock>
   103d0:	4501                	li	a0,0
   103d2:	a809                	j	103e4 <_fwalk_sglue>

000103d4 <__fp_unlock_all>:
   103d4:	664d                	lui	a2,0x13
   103d6:	65c1                	lui	a1,0x10
   103d8:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   103dc:	1d058593          	addi	a1,a1,464 # 101d0 <__fp_unlock>
   103e0:	4501                	li	a0,0
   103e2:	a009                	j	103e4 <_fwalk_sglue>

000103e4 <_fwalk_sglue>:
   103e4:	7179                	addi	sp,sp,-48
   103e6:	d04a                	sw	s2,32(sp)
   103e8:	ce4e                	sw	s3,28(sp)
   103ea:	cc52                	sw	s4,24(sp)
   103ec:	ca56                	sw	s5,20(sp)
   103ee:	c85a                	sw	s6,16(sp)
   103f0:	c65e                	sw	s7,12(sp)
   103f2:	d606                	sw	ra,44(sp)
   103f4:	d422                	sw	s0,40(sp)
   103f6:	d226                	sw	s1,36(sp)
   103f8:	8b2a                	mv	s6,a0
   103fa:	8bae                	mv	s7,a1
   103fc:	8ab2                	mv	s5,a2
   103fe:	4a01                	li	s4,0
   10400:	4985                	li	s3,1
   10402:	597d                	li	s2,-1
   10404:	004aa483          	lw	s1,4(s5)
   10408:	008aa403          	lw	s0,8(s5)
   1040c:	14fd                	addi	s1,s1,-1
   1040e:	0204c463          	bltz	s1,10436 <_fwalk_sglue+0x52>
   10412:	00c45783          	lhu	a5,12(s0)
   10416:	00f9fb63          	bgeu	s3,a5,1042c <_fwalk_sglue+0x48>
   1041a:	00e41783          	lh	a5,14(s0)
   1041e:	85a2                	mv	a1,s0
   10420:	855a                	mv	a0,s6
   10422:	01278563          	beq	a5,s2,1042c <_fwalk_sglue+0x48>
   10426:	9b82                	jalr	s7
   10428:	00aa6a33          	or	s4,s4,a0
   1042c:	14fd                	addi	s1,s1,-1
   1042e:	06840413          	addi	s0,s0,104
   10432:	ff2490e3          	bne	s1,s2,10412 <_fwalk_sglue+0x2e>
   10436:	000aaa83          	lw	s5,0(s5)
   1043a:	fc0a95e3          	bnez	s5,10404 <_fwalk_sglue+0x20>
   1043e:	50b2                	lw	ra,44(sp)
   10440:	5422                	lw	s0,40(sp)
   10442:	5492                	lw	s1,36(sp)
   10444:	5902                	lw	s2,32(sp)
   10446:	49f2                	lw	s3,28(sp)
   10448:	4ad2                	lw	s5,20(sp)
   1044a:	4b42                	lw	s6,16(sp)
   1044c:	4bb2                	lw	s7,12(sp)
   1044e:	8552                	mv	a0,s4
   10450:	4a62                	lw	s4,24(sp)
   10452:	6145                	addi	sp,sp,48
   10454:	8082                	ret

00010456 <_puts_r>:
   10456:	7139                	addi	sp,sp,-64
   10458:	dc22                	sw	s0,56(sp)
   1045a:	842a                	mv	s0,a0
   1045c:	852e                	mv	a0,a1
   1045e:	da26                	sw	s1,52(sp)
   10460:	de06                	sw	ra,60(sp)
   10462:	84ae                	mv	s1,a1
   10464:	2e75                	jal	10820 <strlen>
   10466:	67c9                	lui	a5,0x12
   10468:	5858                	lw	a4,52(s0)
   1046a:	4585                	li	a1,1
   1046c:	00150813          	addi	a6,a0,1
   10470:	46478793          	addi	a5,a5,1124 # 12464 <__errno+0x18>
   10474:	1010                	addi	a2,sp,32
   10476:	4689                	li	a3,2
   10478:	d62e                	sw	a1,44(sp)
   1047a:	d026                	sw	s1,32(sp)
   1047c:	d22a                	sw	a0,36(sp)
   1047e:	ce42                	sw	a6,28(sp)
   10480:	d43e                	sw	a5,40(sp)
   10482:	ca32                	sw	a2,20(sp)
   10484:	cc36                	sw	a3,24(sp)
   10486:	440c                	lw	a1,8(s0)
   10488:	c329                	beqz	a4,104ca <_puts_r+0x74>
   1048a:	00c59783          	lh	a5,12(a1)
   1048e:	51f8                	lw	a4,100(a1)
   10490:	6609                	lui	a2,0x2
   10492:	01279693          	slli	a3,a5,0x12
   10496:	0206c463          	bltz	a3,104be <_puts_r+0x68>
   1049a:	76f9                	lui	a3,0xffffe
   1049c:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffea317>
   1049e:	8fd1                	or	a5,a5,a2
   104a0:	8f75                	and	a4,a4,a3
   104a2:	00f59623          	sh	a5,12(a1)
   104a6:	d1f8                	sw	a4,100(a1)
   104a8:	8522                	mv	a0,s0
   104aa:	0850                	addi	a2,sp,20
   104ac:	034010ef          	jal	114e0 <__sfvwrite_r>
   104b0:	e919                	bnez	a0,104c6 <_puts_r+0x70>
   104b2:	4529                	li	a0,10
   104b4:	50f2                	lw	ra,60(sp)
   104b6:	5462                	lw	s0,56(sp)
   104b8:	54d2                	lw	s1,52(sp)
   104ba:	6121                	addi	sp,sp,64
   104bc:	8082                	ret
   104be:	01271793          	slli	a5,a4,0x12
   104c2:	fe07d3e3          	bgez	a5,104a8 <_puts_r+0x52>
   104c6:	557d                	li	a0,-1
   104c8:	b7f5                	j	104b4 <_puts_r+0x5e>
   104ca:	8522                	mv	a0,s0
   104cc:	c62e                	sw	a1,12(sp)
   104ce:	3df1                	jal	103aa <__sinit>
   104d0:	45b2                	lw	a1,12(sp)
   104d2:	bf65                	j	1048a <_puts_r+0x34>

000104d4 <puts>:
   104d4:	85aa                	mv	a1,a0
   104d6:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   104da:	bfb5                	j	10456 <_puts_r>

000104dc <__sread>:
   104dc:	1141                	addi	sp,sp,-16
   104de:	c422                	sw	s0,8(sp)
   104e0:	842e                	mv	s0,a1
   104e2:	00e59583          	lh	a1,14(a1)
   104e6:	c606                	sw	ra,12(sp)
   104e8:	227d                	jal	10696 <_read_r>
   104ea:	00054963          	bltz	a0,104fc <__sread+0x20>
   104ee:	483c                	lw	a5,80(s0)
   104f0:	40b2                	lw	ra,12(sp)
   104f2:	97aa                	add	a5,a5,a0
   104f4:	c83c                	sw	a5,80(s0)
   104f6:	4422                	lw	s0,8(sp)
   104f8:	0141                	addi	sp,sp,16
   104fa:	8082                	ret
   104fc:	00c45783          	lhu	a5,12(s0)
   10500:	777d                	lui	a4,0xfffff
   10502:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb317>
   10504:	8ff9                	and	a5,a5,a4
   10506:	40b2                	lw	ra,12(sp)
   10508:	00f41623          	sh	a5,12(s0)
   1050c:	4422                	lw	s0,8(sp)
   1050e:	0141                	addi	sp,sp,16
   10510:	8082                	ret

00010512 <__seofread>:
   10512:	4501                	li	a0,0
   10514:	8082                	ret

00010516 <__swrite>:
   10516:	00c59783          	lh	a5,12(a1)
   1051a:	1101                	addi	sp,sp,-32
   1051c:	cc22                	sw	s0,24(sp)
   1051e:	ca26                	sw	s1,20(sp)
   10520:	c84a                	sw	s2,16(sp)
   10522:	c64e                	sw	s3,12(sp)
   10524:	ce06                	sw	ra,28(sp)
   10526:	1007f713          	andi	a4,a5,256
   1052a:	842e                	mv	s0,a1
   1052c:	8932                	mv	s2,a2
   1052e:	89b6                	mv	s3,a3
   10530:	84aa                	mv	s1,a0
   10532:	e315                	bnez	a4,10556 <__swrite+0x40>
   10534:	777d                	lui	a4,0xfffff
   10536:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb317>
   10538:	8ff9                	and	a5,a5,a4
   1053a:	00e41583          	lh	a1,14(s0)
   1053e:	00f41623          	sh	a5,12(s0)
   10542:	4462                	lw	s0,24(sp)
   10544:	40f2                	lw	ra,28(sp)
   10546:	86ce                	mv	a3,s3
   10548:	864a                	mv	a2,s2
   1054a:	49b2                	lw	s3,12(sp)
   1054c:	4942                	lw	s2,16(sp)
   1054e:	8526                	mv	a0,s1
   10550:	44d2                	lw	s1,20(sp)
   10552:	6105                	addi	sp,sp,32
   10554:	aabd                	j	106d2 <_write_r>
   10556:	00e59583          	lh	a1,14(a1)
   1055a:	4689                	li	a3,2
   1055c:	4601                	li	a2,0
   1055e:	28f5                	jal	1065a <_lseek_r>
   10560:	00c41783          	lh	a5,12(s0)
   10564:	bfc1                	j	10534 <__swrite+0x1e>

00010566 <__sseek>:
   10566:	1141                	addi	sp,sp,-16
   10568:	c422                	sw	s0,8(sp)
   1056a:	842e                	mv	s0,a1
   1056c:	00e59583          	lh	a1,14(a1)
   10570:	c606                	sw	ra,12(sp)
   10572:	20e5                	jal	1065a <_lseek_r>
   10574:	577d                	li	a4,-1
   10576:	00c41783          	lh	a5,12(s0)
   1057a:	00e50b63          	beq	a0,a4,10590 <__sseek+0x2a>
   1057e:	6705                	lui	a4,0x1
   10580:	8fd9                	or	a5,a5,a4
   10582:	40b2                	lw	ra,12(sp)
   10584:	c828                	sw	a0,80(s0)
   10586:	00f41623          	sh	a5,12(s0)
   1058a:	4422                	lw	s0,8(sp)
   1058c:	0141                	addi	sp,sp,16
   1058e:	8082                	ret
   10590:	777d                	lui	a4,0xfffff
   10592:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb317>
   10594:	8ff9                	and	a5,a5,a4
   10596:	40b2                	lw	ra,12(sp)
   10598:	00f41623          	sh	a5,12(s0)
   1059c:	4422                	lw	s0,8(sp)
   1059e:	0141                	addi	sp,sp,16
   105a0:	8082                	ret

000105a2 <__sclose>:
   105a2:	00e59583          	lh	a1,14(a1)
   105a6:	a009                	j	105a8 <_close_r>

000105a8 <_close_r>:
   105a8:	1141                	addi	sp,sp,-16
   105aa:	c422                	sw	s0,8(sp)
   105ac:	c226                	sw	s1,4(sp)
   105ae:	842a                	mv	s0,a0
   105b0:	852e                	mv	a0,a1
   105b2:	c606                	sw	ra,12(sp)
   105b4:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   105b8:	4ab010ef          	jal	12262 <_close>
   105bc:	57fd                	li	a5,-1
   105be:	00f50763          	beq	a0,a5,105cc <_close_r+0x24>
   105c2:	40b2                	lw	ra,12(sp)
   105c4:	4422                	lw	s0,8(sp)
   105c6:	4492                	lw	s1,4(sp)
   105c8:	0141                	addi	sp,sp,16
   105ca:	8082                	ret
   105cc:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   105d0:	dbed                	beqz	a5,105c2 <_close_r+0x1a>
   105d2:	40b2                	lw	ra,12(sp)
   105d4:	c01c                	sw	a5,0(s0)
   105d6:	4422                	lw	s0,8(sp)
   105d8:	4492                	lw	s1,4(sp)
   105da:	0141                	addi	sp,sp,16
   105dc:	8082                	ret

000105de <_reclaim_reent>:
   105de:	d3c1a783          	lw	a5,-708(gp) # 139b4 <_impure_ptr>
   105e2:	06a78b63          	beq	a5,a0,10658 <_reclaim_reent+0x7a>
   105e6:	416c                	lw	a1,68(a0)
   105e8:	1101                	addi	sp,sp,-32
   105ea:	ca26                	sw	s1,20(sp)
   105ec:	ce06                	sw	ra,28(sp)
   105ee:	cc22                	sw	s0,24(sp)
   105f0:	84aa                	mv	s1,a0
   105f2:	c59d                	beqz	a1,10620 <_reclaim_reent+0x42>
   105f4:	c84a                	sw	s2,16(sp)
   105f6:	c64e                	sw	s3,12(sp)
   105f8:	4901                	li	s2,0
   105fa:	08000993          	li	s3,128
   105fe:	012587b3          	add	a5,a1,s2
   10602:	4380                	lw	s0,0(a5)
   10604:	c419                	beqz	s0,10612 <_reclaim_reent+0x34>
   10606:	85a2                	mv	a1,s0
   10608:	4000                	lw	s0,0(s0)
   1060a:	8526                	mv	a0,s1
   1060c:	2931                	jal	10a28 <_free_r>
   1060e:	fc65                	bnez	s0,10606 <_reclaim_reent+0x28>
   10610:	40ec                	lw	a1,68(s1)
   10612:	0911                	addi	s2,s2,4
   10614:	ff3915e3          	bne	s2,s3,105fe <_reclaim_reent+0x20>
   10618:	8526                	mv	a0,s1
   1061a:	2139                	jal	10a28 <_free_r>
   1061c:	4942                	lw	s2,16(sp)
   1061e:	49b2                	lw	s3,12(sp)
   10620:	5c8c                	lw	a1,56(s1)
   10622:	c199                	beqz	a1,10628 <_reclaim_reent+0x4a>
   10624:	8526                	mv	a0,s1
   10626:	2109                	jal	10a28 <_free_r>
   10628:	40a0                	lw	s0,64(s1)
   1062a:	c411                	beqz	s0,10636 <_reclaim_reent+0x58>
   1062c:	85a2                	mv	a1,s0
   1062e:	4000                	lw	s0,0(s0)
   10630:	8526                	mv	a0,s1
   10632:	2edd                	jal	10a28 <_free_r>
   10634:	fc65                	bnez	s0,1062c <_reclaim_reent+0x4e>
   10636:	44ec                	lw	a1,76(s1)
   10638:	c199                	beqz	a1,1063e <_reclaim_reent+0x60>
   1063a:	8526                	mv	a0,s1
   1063c:	26f5                	jal	10a28 <_free_r>
   1063e:	58dc                	lw	a5,52(s1)
   10640:	c799                	beqz	a5,1064e <_reclaim_reent+0x70>
   10642:	4462                	lw	s0,24(sp)
   10644:	40f2                	lw	ra,28(sp)
   10646:	8526                	mv	a0,s1
   10648:	44d2                	lw	s1,20(sp)
   1064a:	6105                	addi	sp,sp,32
   1064c:	8782                	jr	a5
   1064e:	40f2                	lw	ra,28(sp)
   10650:	4462                	lw	s0,24(sp)
   10652:	44d2                	lw	s1,20(sp)
   10654:	6105                	addi	sp,sp,32
   10656:	8082                	ret
   10658:	8082                	ret

0001065a <_lseek_r>:
   1065a:	1141                	addi	sp,sp,-16
   1065c:	872e                	mv	a4,a1
   1065e:	c422                	sw	s0,8(sp)
   10660:	c226                	sw	s1,4(sp)
   10662:	85b2                	mv	a1,a2
   10664:	842a                	mv	s0,a0
   10666:	8636                	mv	a2,a3
   10668:	853a                	mv	a0,a4
   1066a:	c606                	sw	ra,12(sp)
   1066c:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   10670:	497010ef          	jal	12306 <_lseek>
   10674:	57fd                	li	a5,-1
   10676:	00f50763          	beq	a0,a5,10684 <_lseek_r+0x2a>
   1067a:	40b2                	lw	ra,12(sp)
   1067c:	4422                	lw	s0,8(sp)
   1067e:	4492                	lw	s1,4(sp)
   10680:	0141                	addi	sp,sp,16
   10682:	8082                	ret
   10684:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   10688:	dbed                	beqz	a5,1067a <_lseek_r+0x20>
   1068a:	40b2                	lw	ra,12(sp)
   1068c:	c01c                	sw	a5,0(s0)
   1068e:	4422                	lw	s0,8(sp)
   10690:	4492                	lw	s1,4(sp)
   10692:	0141                	addi	sp,sp,16
   10694:	8082                	ret

00010696 <_read_r>:
   10696:	1141                	addi	sp,sp,-16
   10698:	872e                	mv	a4,a1
   1069a:	c422                	sw	s0,8(sp)
   1069c:	c226                	sw	s1,4(sp)
   1069e:	85b2                	mv	a1,a2
   106a0:	842a                	mv	s0,a0
   106a2:	8636                	mv	a2,a3
   106a4:	853a                	mv	a0,a4
   106a6:	c606                	sw	ra,12(sp)
   106a8:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   106ac:	485010ef          	jal	12330 <_read>
   106b0:	57fd                	li	a5,-1
   106b2:	00f50763          	beq	a0,a5,106c0 <_read_r+0x2a>
   106b6:	40b2                	lw	ra,12(sp)
   106b8:	4422                	lw	s0,8(sp)
   106ba:	4492                	lw	s1,4(sp)
   106bc:	0141                	addi	sp,sp,16
   106be:	8082                	ret
   106c0:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   106c4:	dbed                	beqz	a5,106b6 <_read_r+0x20>
   106c6:	40b2                	lw	ra,12(sp)
   106c8:	c01c                	sw	a5,0(s0)
   106ca:	4422                	lw	s0,8(sp)
   106cc:	4492                	lw	s1,4(sp)
   106ce:	0141                	addi	sp,sp,16
   106d0:	8082                	ret

000106d2 <_write_r>:
   106d2:	1141                	addi	sp,sp,-16
   106d4:	872e                	mv	a4,a1
   106d6:	c422                	sw	s0,8(sp)
   106d8:	c226                	sw	s1,4(sp)
   106da:	85b2                	mv	a1,a2
   106dc:	842a                	mv	s0,a0
   106de:	8636                	mv	a2,a3
   106e0:	853a                	mv	a0,a4
   106e2:	c606                	sw	ra,12(sp)
   106e4:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   106e8:	4c5010ef          	jal	123ac <_write>
   106ec:	57fd                	li	a5,-1
   106ee:	00f50763          	beq	a0,a5,106fc <_write_r+0x2a>
   106f2:	40b2                	lw	ra,12(sp)
   106f4:	4422                	lw	s0,8(sp)
   106f6:	4492                	lw	s1,4(sp)
   106f8:	0141                	addi	sp,sp,16
   106fa:	8082                	ret
   106fc:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   10700:	dbed                	beqz	a5,106f2 <_write_r+0x20>
   10702:	40b2                	lw	ra,12(sp)
   10704:	c01c                	sw	a5,0(s0)
   10706:	4422                	lw	s0,8(sp)
   10708:	4492                	lw	s1,4(sp)
   1070a:	0141                	addi	sp,sp,16
   1070c:	8082                	ret

0001070e <__libc_init_array>:
   1070e:	1141                	addi	sp,sp,-16
   10710:	c422                	sw	s0,8(sp)
   10712:	67cd                	lui	a5,0x13
   10714:	644d                	lui	s0,0x13
   10716:	c04a                	sw	s2,0(sp)
   10718:	46c78793          	addi	a5,a5,1132 # 1346c <__init_array_start>
   1071c:	46c40713          	addi	a4,s0,1132 # 1346c <__init_array_start>
   10720:	c606                	sw	ra,12(sp)
   10722:	c226                	sw	s1,4(sp)
   10724:	40e78933          	sub	s2,a5,a4
   10728:	00e78d63          	beq	a5,a4,10742 <__libc_init_array+0x34>
   1072c:	40295913          	srai	s2,s2,0x2
   10730:	46c40413          	addi	s0,s0,1132
   10734:	4481                	li	s1,0
   10736:	401c                	lw	a5,0(s0)
   10738:	0485                	addi	s1,s1,1
   1073a:	0411                	addi	s0,s0,4
   1073c:	9782                	jalr	a5
   1073e:	ff24ece3          	bltu	s1,s2,10736 <__libc_init_array+0x28>
   10742:	67cd                	lui	a5,0x13
   10744:	644d                	lui	s0,0x13
   10746:	47478793          	addi	a5,a5,1140 # 13474 <__do_global_dtors_aux_fini_array_entry>
   1074a:	46c40713          	addi	a4,s0,1132 # 1346c <__init_array_start>
   1074e:	40e78933          	sub	s2,a5,a4
   10752:	40295913          	srai	s2,s2,0x2
   10756:	00e78b63          	beq	a5,a4,1076c <__libc_init_array+0x5e>
   1075a:	46c40413          	addi	s0,s0,1132
   1075e:	4481                	li	s1,0
   10760:	401c                	lw	a5,0(s0)
   10762:	0485                	addi	s1,s1,1
   10764:	0411                	addi	s0,s0,4
   10766:	9782                	jalr	a5
   10768:	ff24ece3          	bltu	s1,s2,10760 <__libc_init_array+0x52>
   1076c:	40b2                	lw	ra,12(sp)
   1076e:	4422                	lw	s0,8(sp)
   10770:	4492                	lw	s1,4(sp)
   10772:	4902                	lw	s2,0(sp)
   10774:	0141                	addi	sp,sp,16
   10776:	8082                	ret

00010778 <memset>:
   10778:	433d                	li	t1,15
   1077a:	872a                	mv	a4,a0
   1077c:	02c37363          	bgeu	t1,a2,107a2 <memset+0x2a>
   10780:	00f77793          	andi	a5,a4,15
   10784:	efbd                	bnez	a5,10802 <memset+0x8a>
   10786:	e5ad                	bnez	a1,107f0 <memset+0x78>
   10788:	ff067693          	andi	a3,a2,-16
   1078c:	8a3d                	andi	a2,a2,15
   1078e:	96ba                	add	a3,a3,a4
   10790:	c30c                	sw	a1,0(a4)
   10792:	c34c                	sw	a1,4(a4)
   10794:	c70c                	sw	a1,8(a4)
   10796:	c74c                	sw	a1,12(a4)
   10798:	0741                	addi	a4,a4,16
   1079a:	fed76be3          	bltu	a4,a3,10790 <memset+0x18>
   1079e:	e211                	bnez	a2,107a2 <memset+0x2a>
   107a0:	8082                	ret
   107a2:	40c306b3          	sub	a3,t1,a2
   107a6:	068a                	slli	a3,a3,0x2
   107a8:	00000297          	auipc	t0,0x0
   107ac:	9696                	add	a3,a3,t0
   107ae:	00a68067          	jr	10(a3)
   107b2:	00b70723          	sb	a1,14(a4)
   107b6:	00b706a3          	sb	a1,13(a4)
   107ba:	00b70623          	sb	a1,12(a4)
   107be:	00b705a3          	sb	a1,11(a4)
   107c2:	00b70523          	sb	a1,10(a4)
   107c6:	00b704a3          	sb	a1,9(a4)
   107ca:	00b70423          	sb	a1,8(a4)
   107ce:	00b703a3          	sb	a1,7(a4)
   107d2:	00b70323          	sb	a1,6(a4)
   107d6:	00b702a3          	sb	a1,5(a4)
   107da:	00b70223          	sb	a1,4(a4)
   107de:	00b701a3          	sb	a1,3(a4)
   107e2:	00b70123          	sb	a1,2(a4)
   107e6:	00b700a3          	sb	a1,1(a4)
   107ea:	00b70023          	sb	a1,0(a4)
   107ee:	8082                	ret
   107f0:	0ff5f593          	zext.b	a1,a1
   107f4:	00859693          	slli	a3,a1,0x8
   107f8:	8dd5                	or	a1,a1,a3
   107fa:	01059693          	slli	a3,a1,0x10
   107fe:	8dd5                	or	a1,a1,a3
   10800:	b761                	j	10788 <memset+0x10>
   10802:	00279693          	slli	a3,a5,0x2
   10806:	00000297          	auipc	t0,0x0
   1080a:	9696                	add	a3,a3,t0
   1080c:	8286                	mv	t0,ra
   1080e:	fa8680e7          	jalr	-88(a3)
   10812:	8096                	mv	ra,t0
   10814:	17c1                	addi	a5,a5,-16
   10816:	8f1d                	sub	a4,a4,a5
   10818:	963e                	add	a2,a2,a5
   1081a:	f8c374e3          	bgeu	t1,a2,107a2 <memset+0x2a>
   1081e:	b7a5                	j	10786 <memset+0xe>

00010820 <strlen>:
   10820:	00357793          	andi	a5,a0,3
   10824:	872a                	mv	a4,a0
   10826:	ef9d                	bnez	a5,10864 <strlen+0x44>
   10828:	7f7f86b7          	lui	a3,0x7f7f8
   1082c:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4297>
   10830:	55fd                	li	a1,-1
   10832:	4310                	lw	a2,0(a4)
   10834:	0711                	addi	a4,a4,4
   10836:	00d677b3          	and	a5,a2,a3
   1083a:	97b6                	add	a5,a5,a3
   1083c:	8fd1                	or	a5,a5,a2
   1083e:	8fd5                	or	a5,a5,a3
   10840:	feb789e3          	beq	a5,a1,10832 <strlen+0x12>
   10844:	ffc74683          	lbu	a3,-4(a4)
   10848:	40a707b3          	sub	a5,a4,a0
   1084c:	ca8d                	beqz	a3,1087e <strlen+0x5e>
   1084e:	ffd74683          	lbu	a3,-3(a4)
   10852:	c29d                	beqz	a3,10878 <strlen+0x58>
   10854:	ffe74503          	lbu	a0,-2(a4)
   10858:	00a03533          	snez	a0,a0
   1085c:	953e                	add	a0,a0,a5
   1085e:	1579                	addi	a0,a0,-2
   10860:	8082                	ret
   10862:	d2f9                	beqz	a3,10828 <strlen+0x8>
   10864:	00074783          	lbu	a5,0(a4)
   10868:	0705                	addi	a4,a4,1
   1086a:	00377693          	andi	a3,a4,3
   1086e:	fbf5                	bnez	a5,10862 <strlen+0x42>
   10870:	8f09                	sub	a4,a4,a0
   10872:	fff70513          	addi	a0,a4,-1
   10876:	8082                	ret
   10878:	ffd78513          	addi	a0,a5,-3
   1087c:	8082                	ret
   1087e:	ffc78513          	addi	a0,a5,-4
   10882:	8082                	ret

00010884 <__call_exitprocs>:
   10884:	7179                	addi	sp,sp,-48
   10886:	cc52                	sw	s4,24(sp)
   10888:	d04a                	sw	s2,32(sp)
   1088a:	d501a903          	lw	s2,-688(gp) # 139c8 <__atexit>
   1088e:	d606                	sw	ra,44(sp)
   10890:	04090663          	beqz	s2,108dc <__call_exitprocs+0x58>
   10894:	ce4e                	sw	s3,28(sp)
   10896:	ca56                	sw	s5,20(sp)
   10898:	c85a                	sw	s6,16(sp)
   1089a:	c65e                	sw	s7,12(sp)
   1089c:	d422                	sw	s0,40(sp)
   1089e:	d226                	sw	s1,36(sp)
   108a0:	c462                	sw	s8,8(sp)
   108a2:	8b2a                	mv	s6,a0
   108a4:	8bae                	mv	s7,a1
   108a6:	59fd                	li	s3,-1
   108a8:	4a85                	li	s5,1
   108aa:	00492483          	lw	s1,4(s2)
   108ae:	fff48413          	addi	s0,s1,-1
   108b2:	00044e63          	bltz	s0,108ce <__call_exitprocs+0x4a>
   108b6:	048a                	slli	s1,s1,0x2
   108b8:	94ca                	add	s1,s1,s2
   108ba:	020b8663          	beqz	s7,108e6 <__call_exitprocs+0x62>
   108be:	1044a783          	lw	a5,260(s1)
   108c2:	03778263          	beq	a5,s7,108e6 <__call_exitprocs+0x62>
   108c6:	147d                	addi	s0,s0,-1
   108c8:	14f1                	addi	s1,s1,-4
   108ca:	ff341ae3          	bne	s0,s3,108be <__call_exitprocs+0x3a>
   108ce:	5422                	lw	s0,40(sp)
   108d0:	5492                	lw	s1,36(sp)
   108d2:	49f2                	lw	s3,28(sp)
   108d4:	4ad2                	lw	s5,20(sp)
   108d6:	4b42                	lw	s6,16(sp)
   108d8:	4bb2                	lw	s7,12(sp)
   108da:	4c22                	lw	s8,8(sp)
   108dc:	50b2                	lw	ra,44(sp)
   108de:	5902                	lw	s2,32(sp)
   108e0:	4a62                	lw	s4,24(sp)
   108e2:	6145                	addi	sp,sp,48
   108e4:	8082                	ret
   108e6:	00492783          	lw	a5,4(s2)
   108ea:	40d4                	lw	a3,4(s1)
   108ec:	17fd                	addi	a5,a5,-1
   108ee:	04878c63          	beq	a5,s0,10946 <__call_exitprocs+0xc2>
   108f2:	0004a223          	sw	zero,4(s1)
   108f6:	c295                	beqz	a3,1091a <__call_exitprocs+0x96>
   108f8:	18892783          	lw	a5,392(s2)
   108fc:	008a9733          	sll	a4,s5,s0
   10900:	00492c03          	lw	s8,4(s2)
   10904:	8ff9                	and	a5,a5,a4
   10906:	ef99                	bnez	a5,10924 <__call_exitprocs+0xa0>
   10908:	9682                	jalr	a3
   1090a:	00492703          	lw	a4,4(s2)
   1090e:	d501a783          	lw	a5,-688(gp) # 139c8 <__atexit>
   10912:	03871763          	bne	a4,s8,10940 <__call_exitprocs+0xbc>
   10916:	03279563          	bne	a5,s2,10940 <__call_exitprocs+0xbc>
   1091a:	147d                	addi	s0,s0,-1
   1091c:	14f1                	addi	s1,s1,-4
   1091e:	f9341ee3          	bne	s0,s3,108ba <__call_exitprocs+0x36>
   10922:	b775                	j	108ce <__call_exitprocs+0x4a>
   10924:	18c92783          	lw	a5,396(s2)
   10928:	0844a583          	lw	a1,132(s1)
   1092c:	8f7d                	and	a4,a4,a5
   1092e:	ef19                	bnez	a4,1094c <__call_exitprocs+0xc8>
   10930:	855a                	mv	a0,s6
   10932:	9682                	jalr	a3
   10934:	00492703          	lw	a4,4(s2)
   10938:	d501a783          	lw	a5,-688(gp) # 139c8 <__atexit>
   1093c:	fd870de3          	beq	a4,s8,10916 <__call_exitprocs+0x92>
   10940:	d7d9                	beqz	a5,108ce <__call_exitprocs+0x4a>
   10942:	893e                	mv	s2,a5
   10944:	b79d                	j	108aa <__call_exitprocs+0x26>
   10946:	00892223          	sw	s0,4(s2)
   1094a:	b775                	j	108f6 <__call_exitprocs+0x72>
   1094c:	852e                	mv	a0,a1
   1094e:	9682                	jalr	a3
   10950:	bf6d                	j	1090a <__call_exitprocs+0x86>

00010952 <atexit>:
   10952:	85aa                	mv	a1,a0
   10954:	4681                	li	a3,0
   10956:	4601                	li	a2,0
   10958:	4501                	li	a0,0
   1095a:	2a60106f          	j	11c00 <__register_exitproc>

0001095e <_malloc_trim_r>:
   1095e:	1101                	addi	sp,sp,-32
   10960:	c64e                	sw	s3,12(sp)
   10962:	69cd                	lui	s3,0x13
   10964:	cc22                	sw	s0,24(sp)
   10966:	ca26                	sw	s1,20(sp)
   10968:	c84a                	sw	s2,16(sp)
   1096a:	c452                	sw	s4,8(sp)
   1096c:	ce06                	sw	ra,28(sp)
   1096e:	8a2e                	mv	s4,a1
   10970:	892a                	mv	s2,a0
   10972:	5a898993          	addi	s3,s3,1448 # 135a8 <__malloc_av_>
   10976:	09b000ef          	jal	11210 <__malloc_lock>
   1097a:	0089a783          	lw	a5,8(s3)
   1097e:	6405                	lui	s0,0x1
   10980:	143d                	addi	s0,s0,-17 # fef <exit-0xf0c5>
   10982:	43c4                	lw	s1,4(a5)
   10984:	6785                	lui	a5,0x1
   10986:	98f1                	andi	s1,s1,-4
   10988:	9426                	add	s0,s0,s1
   1098a:	41440433          	sub	s0,s0,s4
   1098e:	8031                	srli	s0,s0,0xc
   10990:	147d                	addi	s0,s0,-1
   10992:	0432                	slli	s0,s0,0xc
   10994:	00f44b63          	blt	s0,a5,109aa <_malloc_trim_r+0x4c>
   10998:	4581                	li	a1,0
   1099a:	854a                	mv	a0,s2
   1099c:	032010ef          	jal	119ce <_sbrk_r>
   109a0:	0089a783          	lw	a5,8(s3)
   109a4:	97a6                	add	a5,a5,s1
   109a6:	00f50e63          	beq	a0,a5,109c2 <_malloc_trim_r+0x64>
   109aa:	854a                	mv	a0,s2
   109ac:	067000ef          	jal	11212 <__malloc_unlock>
   109b0:	40f2                	lw	ra,28(sp)
   109b2:	4462                	lw	s0,24(sp)
   109b4:	44d2                	lw	s1,20(sp)
   109b6:	4942                	lw	s2,16(sp)
   109b8:	49b2                	lw	s3,12(sp)
   109ba:	4a22                	lw	s4,8(sp)
   109bc:	4501                	li	a0,0
   109be:	6105                	addi	sp,sp,32
   109c0:	8082                	ret
   109c2:	408005b3          	neg	a1,s0
   109c6:	854a                	mv	a0,s2
   109c8:	006010ef          	jal	119ce <_sbrk_r>
   109cc:	57fd                	li	a5,-1
   109ce:	02f50963          	beq	a0,a5,10a00 <_malloc_trim_r+0xa2>
   109d2:	eb818793          	addi	a5,gp,-328 # 13b30 <__malloc_current_mallinfo>
   109d6:	0089a683          	lw	a3,8(s3)
   109da:	4398                	lw	a4,0(a5)
   109dc:	8c81                	sub	s1,s1,s0
   109de:	0014e493          	ori	s1,s1,1
   109e2:	854a                	mv	a0,s2
   109e4:	8f01                	sub	a4,a4,s0
   109e6:	c2c4                	sw	s1,4(a3)
   109e8:	c398                	sw	a4,0(a5)
   109ea:	029000ef          	jal	11212 <__malloc_unlock>
   109ee:	40f2                	lw	ra,28(sp)
   109f0:	4462                	lw	s0,24(sp)
   109f2:	44d2                	lw	s1,20(sp)
   109f4:	4942                	lw	s2,16(sp)
   109f6:	49b2                	lw	s3,12(sp)
   109f8:	4a22                	lw	s4,8(sp)
   109fa:	4505                	li	a0,1
   109fc:	6105                	addi	sp,sp,32
   109fe:	8082                	ret
   10a00:	4581                	li	a1,0
   10a02:	854a                	mv	a0,s2
   10a04:	7cb000ef          	jal	119ce <_sbrk_r>
   10a08:	0089a703          	lw	a4,8(s3)
   10a0c:	46bd                	li	a3,15
   10a0e:	40e507b3          	sub	a5,a0,a4
   10a12:	f8f6dce3          	bge	a3,a5,109aa <_malloc_trim_r+0x4c>
   10a16:	d401a603          	lw	a2,-704(gp) # 139b8 <__malloc_sbrk_base>
   10a1a:	0017e793          	ori	a5,a5,1
   10a1e:	8d11                	sub	a0,a0,a2
   10a20:	c35c                	sw	a5,4(a4)
   10a22:	eaa1ac23          	sw	a0,-328(gp) # 13b30 <__malloc_current_mallinfo>
   10a26:	b751                	j	109aa <_malloc_trim_r+0x4c>

00010a28 <_free_r>:
   10a28:	cdf9                	beqz	a1,10b06 <_free_r+0xde>
   10a2a:	1141                	addi	sp,sp,-16
   10a2c:	c422                	sw	s0,8(sp)
   10a2e:	c226                	sw	s1,4(sp)
   10a30:	842e                	mv	s0,a1
   10a32:	84aa                	mv	s1,a0
   10a34:	c606                	sw	ra,12(sp)
   10a36:	7da000ef          	jal	11210 <__malloc_lock>
   10a3a:	ffc42503          	lw	a0,-4(s0)
   10a3e:	ff840713          	addi	a4,s0,-8
   10a42:	65cd                	lui	a1,0x13
   10a44:	ffe57793          	andi	a5,a0,-2
   10a48:	00f70633          	add	a2,a4,a5
   10a4c:	5a858593          	addi	a1,a1,1448 # 135a8 <__malloc_av_>
   10a50:	4254                	lw	a3,4(a2)
   10a52:	0085a803          	lw	a6,8(a1)
   10a56:	00157893          	andi	a7,a0,1
   10a5a:	9af1                	andi	a3,a3,-4
   10a5c:	12c80063          	beq	a6,a2,10b7c <_free_r+0x154>
   10a60:	c254                	sw	a3,4(a2)
   10a62:	00d60833          	add	a6,a2,a3
   10a66:	00482803          	lw	a6,4(a6)
   10a6a:	00187813          	andi	a6,a6,1
   10a6e:	06089763          	bnez	a7,10adc <_free_r+0xb4>
   10a72:	ff842303          	lw	t1,-8(s0)
   10a76:	654d                	lui	a0,0x13
   10a78:	5b050513          	addi	a0,a0,1456 # 135b0 <__malloc_av_+0x8>
   10a7c:	40670733          	sub	a4,a4,t1
   10a80:	00872883          	lw	a7,8(a4)
   10a84:	979a                	add	a5,a5,t1
   10a86:	0ca88e63          	beq	a7,a0,10b62 <_free_r+0x13a>
   10a8a:	00c72303          	lw	t1,12(a4)
   10a8e:	0068a623          	sw	t1,12(a7)
   10a92:	01132423          	sw	a7,8(t1) # 10160 <frame_dummy+0x18>
   10a96:	10080b63          	beqz	a6,10bac <_free_r+0x184>
   10a9a:	0017e693          	ori	a3,a5,1
   10a9e:	c354                	sw	a3,4(a4)
   10aa0:	c21c                	sw	a5,0(a2)
   10aa2:	1ff00693          	li	a3,511
   10aa6:	06f6ea63          	bltu	a3,a5,10b1a <_free_r+0xf2>
   10aaa:	ff87f693          	andi	a3,a5,-8
   10aae:	06a1                	addi	a3,a3,8
   10ab0:	41c8                	lw	a0,4(a1)
   10ab2:	96ae                	add	a3,a3,a1
   10ab4:	4290                	lw	a2,0(a3)
   10ab6:	0057d813          	srli	a6,a5,0x5
   10aba:	4785                	li	a5,1
   10abc:	010797b3          	sll	a5,a5,a6
   10ac0:	8fc9                	or	a5,a5,a0
   10ac2:	ff868513          	addi	a0,a3,-8
   10ac6:	c710                	sw	a2,8(a4)
   10ac8:	c748                	sw	a0,12(a4)
   10aca:	c1dc                	sw	a5,4(a1)
   10acc:	c298                	sw	a4,0(a3)
   10ace:	c658                	sw	a4,12(a2)
   10ad0:	4422                	lw	s0,8(sp)
   10ad2:	40b2                	lw	ra,12(sp)
   10ad4:	8526                	mv	a0,s1
   10ad6:	4492                	lw	s1,4(sp)
   10ad8:	0141                	addi	sp,sp,16
   10ada:	af25                	j	11212 <__malloc_unlock>
   10adc:	02081663          	bnez	a6,10b08 <_free_r+0xe0>
   10ae0:	654d                	lui	a0,0x13
   10ae2:	97b6                	add	a5,a5,a3
   10ae4:	5b050513          	addi	a0,a0,1456 # 135b0 <__malloc_av_+0x8>
   10ae8:	4614                	lw	a3,8(a2)
   10aea:	0017e893          	ori	a7,a5,1
   10aee:	00f70833          	add	a6,a4,a5
   10af2:	0ea68963          	beq	a3,a0,10be4 <_free_r+0x1bc>
   10af6:	4650                	lw	a2,12(a2)
   10af8:	c6d0                	sw	a2,12(a3)
   10afa:	c614                	sw	a3,8(a2)
   10afc:	01172223          	sw	a7,4(a4)
   10b00:	00f82023          	sw	a5,0(a6)
   10b04:	bf79                	j	10aa2 <_free_r+0x7a>
   10b06:	8082                	ret
   10b08:	00156513          	ori	a0,a0,1
   10b0c:	fea42e23          	sw	a0,-4(s0)
   10b10:	c21c                	sw	a5,0(a2)
   10b12:	1ff00693          	li	a3,511
   10b16:	f8f6fae3          	bgeu	a3,a5,10aaa <_free_r+0x82>
   10b1a:	0097d693          	srli	a3,a5,0x9
   10b1e:	4611                	li	a2,4
   10b20:	08d66863          	bltu	a2,a3,10bb0 <_free_r+0x188>
   10b24:	0067d693          	srli	a3,a5,0x6
   10b28:	03968513          	addi	a0,a3,57
   10b2c:	050e                	slli	a0,a0,0x3
   10b2e:	03868613          	addi	a2,a3,56
   10b32:	952e                	add	a0,a0,a1
   10b34:	4114                	lw	a3,0(a0)
   10b36:	1561                	addi	a0,a0,-8
   10b38:	00d51663          	bne	a0,a3,10b44 <_free_r+0x11c>
   10b3c:	a86d                	j	10bf6 <_free_r+0x1ce>
   10b3e:	4694                	lw	a3,8(a3)
   10b40:	00d50663          	beq	a0,a3,10b4c <_free_r+0x124>
   10b44:	42d0                	lw	a2,4(a3)
   10b46:	9a71                	andi	a2,a2,-4
   10b48:	fec7ebe3          	bltu	a5,a2,10b3e <_free_r+0x116>
   10b4c:	46c8                	lw	a0,12(a3)
   10b4e:	c748                	sw	a0,12(a4)
   10b50:	c714                	sw	a3,8(a4)
   10b52:	4422                	lw	s0,8(sp)
   10b54:	c518                	sw	a4,8(a0)
   10b56:	40b2                	lw	ra,12(sp)
   10b58:	8526                	mv	a0,s1
   10b5a:	4492                	lw	s1,4(sp)
   10b5c:	c6d8                	sw	a4,12(a3)
   10b5e:	0141                	addi	sp,sp,16
   10b60:	ad4d                	j	11212 <__malloc_unlock>
   10b62:	06081663          	bnez	a6,10bce <_free_r+0x1a6>
   10b66:	464c                	lw	a1,12(a2)
   10b68:	4610                	lw	a2,8(a2)
   10b6a:	96be                	add	a3,a3,a5
   10b6c:	0016e793          	ori	a5,a3,1
   10b70:	c64c                	sw	a1,12(a2)
   10b72:	c590                	sw	a2,8(a1)
   10b74:	c35c                	sw	a5,4(a4)
   10b76:	9736                	add	a4,a4,a3
   10b78:	c314                	sw	a3,0(a4)
   10b7a:	bf99                	j	10ad0 <_free_r+0xa8>
   10b7c:	96be                	add	a3,a3,a5
   10b7e:	00089a63          	bnez	a7,10b92 <_free_r+0x16a>
   10b82:	ff842503          	lw	a0,-8(s0)
   10b86:	8f09                	sub	a4,a4,a0
   10b88:	475c                	lw	a5,12(a4)
   10b8a:	4710                	lw	a2,8(a4)
   10b8c:	96aa                	add	a3,a3,a0
   10b8e:	c65c                	sw	a5,12(a2)
   10b90:	c790                	sw	a2,8(a5)
   10b92:	0016e613          	ori	a2,a3,1
   10b96:	d441a783          	lw	a5,-700(gp) # 139bc <__malloc_trim_threshold>
   10b9a:	c350                	sw	a2,4(a4)
   10b9c:	c598                	sw	a4,8(a1)
   10b9e:	f2f6e9e3          	bltu	a3,a5,10ad0 <_free_r+0xa8>
   10ba2:	d5c1a583          	lw	a1,-676(gp) # 139d4 <__malloc_top_pad>
   10ba6:	8526                	mv	a0,s1
   10ba8:	3b5d                	jal	1095e <_malloc_trim_r>
   10baa:	b71d                	j	10ad0 <_free_r+0xa8>
   10bac:	97b6                	add	a5,a5,a3
   10bae:	bf2d                	j	10ae8 <_free_r+0xc0>
   10bb0:	4651                	li	a2,20
   10bb2:	02d67363          	bgeu	a2,a3,10bd8 <_free_r+0x1b0>
   10bb6:	05400613          	li	a2,84
   10bba:	04d66863          	bltu	a2,a3,10c0a <_free_r+0x1e2>
   10bbe:	00c7d693          	srli	a3,a5,0xc
   10bc2:	06f68513          	addi	a0,a3,111
   10bc6:	050e                	slli	a0,a0,0x3
   10bc8:	06e68613          	addi	a2,a3,110
   10bcc:	b79d                	j	10b32 <_free_r+0x10a>
   10bce:	0017e693          	ori	a3,a5,1
   10bd2:	c354                	sw	a3,4(a4)
   10bd4:	c21c                	sw	a5,0(a2)
   10bd6:	bded                	j	10ad0 <_free_r+0xa8>
   10bd8:	05c68513          	addi	a0,a3,92
   10bdc:	050e                	slli	a0,a0,0x3
   10bde:	05b68613          	addi	a2,a3,91
   10be2:	bf81                	j	10b32 <_free_r+0x10a>
   10be4:	c9d8                	sw	a4,20(a1)
   10be6:	c998                	sw	a4,16(a1)
   10be8:	c748                	sw	a0,12(a4)
   10bea:	c708                	sw	a0,8(a4)
   10bec:	01172223          	sw	a7,4(a4)
   10bf0:	00f82023          	sw	a5,0(a6)
   10bf4:	bdf1                	j	10ad0 <_free_r+0xa8>
   10bf6:	0045a803          	lw	a6,4(a1)
   10bfa:	8609                	srai	a2,a2,0x2
   10bfc:	4785                	li	a5,1
   10bfe:	00c797b3          	sll	a5,a5,a2
   10c02:	0107e7b3          	or	a5,a5,a6
   10c06:	c1dc                	sw	a5,4(a1)
   10c08:	b799                	j	10b4e <_free_r+0x126>
   10c0a:	15400613          	li	a2,340
   10c0e:	00d66a63          	bltu	a2,a3,10c22 <_free_r+0x1fa>
   10c12:	00f7d693          	srli	a3,a5,0xf
   10c16:	07868513          	addi	a0,a3,120
   10c1a:	050e                	slli	a0,a0,0x3
   10c1c:	07768613          	addi	a2,a3,119
   10c20:	bf09                	j	10b32 <_free_r+0x10a>
   10c22:	55400613          	li	a2,1364
   10c26:	00d66a63          	bltu	a2,a3,10c3a <_free_r+0x212>
   10c2a:	0127d693          	srli	a3,a5,0x12
   10c2e:	07d68513          	addi	a0,a3,125
   10c32:	050e                	slli	a0,a0,0x3
   10c34:	07c68613          	addi	a2,a3,124
   10c38:	bded                	j	10b32 <_free_r+0x10a>
   10c3a:	3f800513          	li	a0,1016
   10c3e:	07e00613          	li	a2,126
   10c42:	bdc5                	j	10b32 <_free_r+0x10a>

00010c44 <_malloc_r>:
   10c44:	7179                	addi	sp,sp,-48
   10c46:	ce4e                	sw	s3,28(sp)
   10c48:	d606                	sw	ra,44(sp)
   10c4a:	d422                	sw	s0,40(sp)
   10c4c:	d226                	sw	s1,36(sp)
   10c4e:	d04a                	sw	s2,32(sp)
   10c50:	00b58793          	addi	a5,a1,11
   10c54:	4759                	li	a4,22
   10c56:	89aa                	mv	s3,a0
   10c58:	04f76763          	bltu	a4,a5,10ca6 <_malloc_r+0x62>
   10c5c:	44c1                	li	s1,16
   10c5e:	16b4e763          	bltu	s1,a1,10dcc <_malloc_r+0x188>
   10c62:	237d                	jal	11210 <__malloc_lock>
   10c64:	47e1                	li	a5,24
   10c66:	4589                	li	a1,2
   10c68:	694d                	lui	s2,0x13
   10c6a:	5a890913          	addi	s2,s2,1448 # 135a8 <__malloc_av_>
   10c6e:	97ca                	add	a5,a5,s2
   10c70:	43c0                	lw	s0,4(a5)
   10c72:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   10c76:	30e40663          	beq	s0,a4,10f82 <_malloc_r+0x33e>
   10c7a:	405c                	lw	a5,4(s0)
   10c7c:	4454                	lw	a3,12(s0)
   10c7e:	4410                	lw	a2,8(s0)
   10c80:	9bf1                	andi	a5,a5,-4
   10c82:	97a2                	add	a5,a5,s0
   10c84:	43d8                	lw	a4,4(a5)
   10c86:	c654                	sw	a3,12(a2)
   10c88:	c690                	sw	a2,8(a3)
   10c8a:	00176713          	ori	a4,a4,1
   10c8e:	854e                	mv	a0,s3
   10c90:	c3d8                	sw	a4,4(a5)
   10c92:	2341                	jal	11212 <__malloc_unlock>
   10c94:	50b2                	lw	ra,44(sp)
   10c96:	00840513          	addi	a0,s0,8
   10c9a:	5422                	lw	s0,40(sp)
   10c9c:	5492                	lw	s1,36(sp)
   10c9e:	5902                	lw	s2,32(sp)
   10ca0:	49f2                	lw	s3,28(sp)
   10ca2:	6145                	addi	sp,sp,48
   10ca4:	8082                	ret
   10ca6:	ff87f493          	andi	s1,a5,-8
   10caa:	1207c163          	bltz	a5,10dcc <_malloc_r+0x188>
   10cae:	10b4ef63          	bltu	s1,a1,10dcc <_malloc_r+0x188>
   10cb2:	2bb9                	jal	11210 <__malloc_lock>
   10cb4:	1f700793          	li	a5,503
   10cb8:	3897f463          	bgeu	a5,s1,11040 <_malloc_r+0x3fc>
   10cbc:	0094d793          	srli	a5,s1,0x9
   10cc0:	12078163          	beqz	a5,10de2 <_malloc_r+0x19e>
   10cc4:	4711                	li	a4,4
   10cc6:	30f76363          	bltu	a4,a5,10fcc <_malloc_r+0x388>
   10cca:	0064d793          	srli	a5,s1,0x6
   10cce:	03978593          	addi	a1,a5,57
   10cd2:	03878813          	addi	a6,a5,56
   10cd6:	00359613          	slli	a2,a1,0x3
   10cda:	694d                	lui	s2,0x13
   10cdc:	5a890913          	addi	s2,s2,1448 # 135a8 <__malloc_av_>
   10ce0:	964a                	add	a2,a2,s2
   10ce2:	4240                	lw	s0,4(a2)
   10ce4:	1661                	addi	a2,a2,-8 # 1ff8 <exit-0xe0bc>
   10ce6:	02860163          	beq	a2,s0,10d08 <_malloc_r+0xc4>
   10cea:	453d                	li	a0,15
   10cec:	a039                	j	10cfa <_malloc_r+0xb6>
   10cee:	4454                	lw	a3,12(s0)
   10cf0:	26075663          	bgez	a4,10f5c <_malloc_r+0x318>
   10cf4:	00d60a63          	beq	a2,a3,10d08 <_malloc_r+0xc4>
   10cf8:	8436                	mv	s0,a3
   10cfa:	405c                	lw	a5,4(s0)
   10cfc:	9bf1                	andi	a5,a5,-4
   10cfe:	40978733          	sub	a4,a5,s1
   10d02:	fee556e3          	bge	a0,a4,10cee <_malloc_r+0xaa>
   10d06:	85c2                	mv	a1,a6
   10d08:	01092403          	lw	s0,16(s2)
   10d0c:	684d                	lui	a6,0x13
   10d0e:	5b080813          	addi	a6,a6,1456 # 135b0 <__malloc_av_+0x8>
   10d12:	1f040b63          	beq	s0,a6,10f08 <_malloc_r+0x2c4>
   10d16:	405c                	lw	a5,4(s0)
   10d18:	46bd                	li	a3,15
   10d1a:	9bf1                	andi	a5,a5,-4
   10d1c:	40978733          	sub	a4,a5,s1
   10d20:	32e6c563          	blt	a3,a4,1104a <_malloc_r+0x406>
   10d24:	01092a23          	sw	a6,20(s2)
   10d28:	01092823          	sw	a6,16(s2)
   10d2c:	30075063          	bgez	a4,1102c <_malloc_r+0x3e8>
   10d30:	1ff00713          	li	a4,511
   10d34:	00492503          	lw	a0,4(s2)
   10d38:	24f76a63          	bltu	a4,a5,10f8c <_malloc_r+0x348>
   10d3c:	ff87f713          	andi	a4,a5,-8
   10d40:	0721                	addi	a4,a4,8
   10d42:	974a                	add	a4,a4,s2
   10d44:	4314                	lw	a3,0(a4)
   10d46:	0057d613          	srli	a2,a5,0x5
   10d4a:	4785                	li	a5,1
   10d4c:	00c797b3          	sll	a5,a5,a2
   10d50:	8d5d                	or	a0,a0,a5
   10d52:	ff870793          	addi	a5,a4,-8
   10d56:	c414                	sw	a3,8(s0)
   10d58:	c45c                	sw	a5,12(s0)
   10d5a:	00a92223          	sw	a0,4(s2)
   10d5e:	c300                	sw	s0,0(a4)
   10d60:	c6c0                	sw	s0,12(a3)
   10d62:	4025d793          	srai	a5,a1,0x2
   10d66:	4605                	li	a2,1
   10d68:	00f61633          	sll	a2,a2,a5
   10d6c:	08c56263          	bltu	a0,a2,10df0 <_malloc_r+0x1ac>
   10d70:	00a677b3          	and	a5,a2,a0
   10d74:	ef81                	bnez	a5,10d8c <_malloc_r+0x148>
   10d76:	0606                	slli	a2,a2,0x1
   10d78:	99f1                	andi	a1,a1,-4
   10d7a:	00a677b3          	and	a5,a2,a0
   10d7e:	0591                	addi	a1,a1,4
   10d80:	e791                	bnez	a5,10d8c <_malloc_r+0x148>
   10d82:	0606                	slli	a2,a2,0x1
   10d84:	00a677b3          	and	a5,a2,a0
   10d88:	0591                	addi	a1,a1,4
   10d8a:	dfe5                	beqz	a5,10d82 <_malloc_r+0x13e>
   10d8c:	48bd                	li	a7,15
   10d8e:	00359313          	slli	t1,a1,0x3
   10d92:	934a                	add	t1,t1,s2
   10d94:	851a                	mv	a0,t1
   10d96:	455c                	lw	a5,12(a0)
   10d98:	8e2e                	mv	t3,a1
   10d9a:	24f50963          	beq	a0,a5,10fec <_malloc_r+0x3a8>
   10d9e:	43d8                	lw	a4,4(a5)
   10da0:	843e                	mv	s0,a5
   10da2:	47dc                	lw	a5,12(a5)
   10da4:	9b71                	andi	a4,a4,-4
   10da6:	409706b3          	sub	a3,a4,s1
   10daa:	24d8c863          	blt	a7,a3,10ffa <_malloc_r+0x3b6>
   10dae:	fe06c6e3          	bltz	a3,10d9a <_malloc_r+0x156>
   10db2:	9722                	add	a4,a4,s0
   10db4:	4354                	lw	a3,4(a4)
   10db6:	4410                	lw	a2,8(s0)
   10db8:	854e                	mv	a0,s3
   10dba:	0016e693          	ori	a3,a3,1
   10dbe:	c354                	sw	a3,4(a4)
   10dc0:	c65c                	sw	a5,12(a2)
   10dc2:	c790                	sw	a2,8(a5)
   10dc4:	21b9                	jal	11212 <__malloc_unlock>
   10dc6:	00840513          	addi	a0,s0,8
   10dca:	a029                	j	10dd4 <_malloc_r+0x190>
   10dcc:	47b1                	li	a5,12
   10dce:	00f9a023          	sw	a5,0(s3)
   10dd2:	4501                	li	a0,0
   10dd4:	50b2                	lw	ra,44(sp)
   10dd6:	5422                	lw	s0,40(sp)
   10dd8:	5492                	lw	s1,36(sp)
   10dda:	5902                	lw	s2,32(sp)
   10ddc:	49f2                	lw	s3,28(sp)
   10dde:	6145                	addi	sp,sp,48
   10de0:	8082                	ret
   10de2:	20000613          	li	a2,512
   10de6:	04000593          	li	a1,64
   10dea:	03f00813          	li	a6,63
   10dee:	b5f5                	j	10cda <_malloc_r+0x96>
   10df0:	00892403          	lw	s0,8(s2)
   10df4:	c85a                	sw	s6,16(sp)
   10df6:	405c                	lw	a5,4(s0)
   10df8:	ffc7fb13          	andi	s6,a5,-4
   10dfc:	009b6763          	bltu	s6,s1,10e0a <_malloc_r+0x1c6>
   10e00:	409b0733          	sub	a4,s6,s1
   10e04:	47bd                	li	a5,15
   10e06:	12e7c663          	blt	a5,a4,10f32 <_malloc_r+0x2ee>
   10e0a:	c266                	sw	s9,4(sp)
   10e0c:	ca56                	sw	s5,20(sp)
   10e0e:	d401a703          	lw	a4,-704(gp) # 139b8 <__malloc_sbrk_base>
   10e12:	d5c1aa83          	lw	s5,-676(gp) # 139d4 <__malloc_top_pad>
   10e16:	cc52                	sw	s4,24(sp)
   10e18:	c65e                	sw	s7,12(sp)
   10e1a:	57fd                	li	a5,-1
   10e1c:	9aa6                	add	s5,s5,s1
   10e1e:	01640a33          	add	s4,s0,s6
   10e22:	2cf70263          	beq	a4,a5,110e6 <_malloc_r+0x4a2>
   10e26:	6785                	lui	a5,0x1
   10e28:	07bd                	addi	a5,a5,15 # 100f <exit-0xf0a5>
   10e2a:	9abe                	add	s5,s5,a5
   10e2c:	77fd                	lui	a5,0xfffff
   10e2e:	00fafab3          	and	s5,s5,a5
   10e32:	85d6                	mv	a1,s5
   10e34:	854e                	mv	a0,s3
   10e36:	399000ef          	jal	119ce <_sbrk_r>
   10e3a:	57fd                	li	a5,-1
   10e3c:	8baa                	mv	s7,a0
   10e3e:	32f50b63          	beq	a0,a5,11174 <_malloc_r+0x530>
   10e42:	c462                	sw	s8,8(sp)
   10e44:	0d456563          	bltu	a0,s4,10f0e <_malloc_r+0x2ca>
   10e48:	eb818c13          	addi	s8,gp,-328 # 13b30 <__malloc_current_mallinfo>
   10e4c:	000c2583          	lw	a1,0(s8)
   10e50:	95d6                	add	a1,a1,s5
   10e52:	00bc2023          	sw	a1,0(s8)
   10e56:	872e                	mv	a4,a1
   10e58:	32aa0263          	beq	s4,a0,1117c <_malloc_r+0x538>
   10e5c:	d401a683          	lw	a3,-704(gp) # 139b8 <__malloc_sbrk_base>
   10e60:	57fd                	li	a5,-1
   10e62:	32f68a63          	beq	a3,a5,11196 <_malloc_r+0x552>
   10e66:	414b87b3          	sub	a5,s7,s4
   10e6a:	97ba                	add	a5,a5,a4
   10e6c:	00fc2023          	sw	a5,0(s8)
   10e70:	007bfc93          	andi	s9,s7,7
   10e74:	280c8363          	beqz	s9,110fa <_malloc_r+0x4b6>
   10e78:	419b8bb3          	sub	s7,s7,s9
   10e7c:	6585                	lui	a1,0x1
   10e7e:	0ba1                	addi	s7,s7,8
   10e80:	05a1                	addi	a1,a1,8 # 1008 <exit-0xf0ac>
   10e82:	9ade                	add	s5,s5,s7
   10e84:	419585b3          	sub	a1,a1,s9
   10e88:	415585b3          	sub	a1,a1,s5
   10e8c:	05d2                	slli	a1,a1,0x14
   10e8e:	0145da13          	srli	s4,a1,0x14
   10e92:	85d2                	mv	a1,s4
   10e94:	854e                	mv	a0,s3
   10e96:	339000ef          	jal	119ce <_sbrk_r>
   10e9a:	57fd                	li	a5,-1
   10e9c:	32f50963          	beq	a0,a5,111ce <_malloc_r+0x58a>
   10ea0:	41750533          	sub	a0,a0,s7
   10ea4:	01450ab3          	add	s5,a0,s4
   10ea8:	000c2703          	lw	a4,0(s8)
   10eac:	01792423          	sw	s7,8(s2)
   10eb0:	001ae793          	ori	a5,s5,1
   10eb4:	00ea05b3          	add	a1,s4,a4
   10eb8:	00fba223          	sw	a5,4(s7)
   10ebc:	00bc2023          	sw	a1,0(s8)
   10ec0:	03240563          	beq	s0,s2,10eea <_malloc_r+0x2a6>
   10ec4:	46bd                	li	a3,15
   10ec6:	2566fa63          	bgeu	a3,s6,1111a <_malloc_r+0x4d6>
   10eca:	4058                	lw	a4,4(s0)
   10ecc:	ff4b0793          	addi	a5,s6,-12
   10ed0:	9be1                	andi	a5,a5,-8
   10ed2:	8b05                	andi	a4,a4,1
   10ed4:	8f5d                	or	a4,a4,a5
   10ed6:	c058                	sw	a4,4(s0)
   10ed8:	4615                	li	a2,5
   10eda:	00f40733          	add	a4,s0,a5
   10ede:	c350                	sw	a2,4(a4)
   10ee0:	c710                	sw	a2,8(a4)
   10ee2:	1ef6e863          	bltu	a3,a5,110d2 <_malloc_r+0x48e>
   10ee6:	004ba783          	lw	a5,4(s7)
   10eea:	d581a683          	lw	a3,-680(gp) # 139d0 <__malloc_max_sbrked_mem>
   10eee:	00b6f463          	bgeu	a3,a1,10ef6 <_malloc_r+0x2b2>
   10ef2:	d4b1ac23          	sw	a1,-680(gp) # 139d0 <__malloc_max_sbrked_mem>
   10ef6:	d541a683          	lw	a3,-684(gp) # 139cc <__malloc_max_total_mem>
   10efa:	00b6f463          	bgeu	a3,a1,10f02 <_malloc_r+0x2be>
   10efe:	d4b1aa23          	sw	a1,-684(gp) # 139cc <__malloc_max_total_mem>
   10f02:	4c22                	lw	s8,8(sp)
   10f04:	845e                	mv	s0,s7
   10f06:	a811                	j	10f1a <_malloc_r+0x2d6>
   10f08:	00492503          	lw	a0,4(s2)
   10f0c:	bd99                	j	10d62 <_malloc_r+0x11e>
   10f0e:	25240b63          	beq	s0,s2,11164 <_malloc_r+0x520>
   10f12:	00892403          	lw	s0,8(s2)
   10f16:	4c22                	lw	s8,8(sp)
   10f18:	405c                	lw	a5,4(s0)
   10f1a:	9bf1                	andi	a5,a5,-4
   10f1c:	40978733          	sub	a4,a5,s1
   10f20:	2097e163          	bltu	a5,s1,11122 <_malloc_r+0x4de>
   10f24:	47bd                	li	a5,15
   10f26:	1ee7de63          	bge	a5,a4,11122 <_malloc_r+0x4de>
   10f2a:	4a62                	lw	s4,24(sp)
   10f2c:	4ad2                	lw	s5,20(sp)
   10f2e:	4bb2                	lw	s7,12(sp)
   10f30:	4c92                	lw	s9,4(sp)
   10f32:	0014e793          	ori	a5,s1,1
   10f36:	c05c                	sw	a5,4(s0)
   10f38:	94a2                	add	s1,s1,s0
   10f3a:	00992423          	sw	s1,8(s2)
   10f3e:	00176713          	ori	a4,a4,1
   10f42:	854e                	mv	a0,s3
   10f44:	c0d8                	sw	a4,4(s1)
   10f46:	24f1                	jal	11212 <__malloc_unlock>
   10f48:	50b2                	lw	ra,44(sp)
   10f4a:	00840513          	addi	a0,s0,8
   10f4e:	5422                	lw	s0,40(sp)
   10f50:	4b42                	lw	s6,16(sp)
   10f52:	5492                	lw	s1,36(sp)
   10f54:	5902                	lw	s2,32(sp)
   10f56:	49f2                	lw	s3,28(sp)
   10f58:	6145                	addi	sp,sp,48
   10f5a:	8082                	ret
   10f5c:	4410                	lw	a2,8(s0)
   10f5e:	97a2                	add	a5,a5,s0
   10f60:	43d8                	lw	a4,4(a5)
   10f62:	c654                	sw	a3,12(a2)
   10f64:	c690                	sw	a2,8(a3)
   10f66:	00176713          	ori	a4,a4,1
   10f6a:	854e                	mv	a0,s3
   10f6c:	c3d8                	sw	a4,4(a5)
   10f6e:	2455                	jal	11212 <__malloc_unlock>
   10f70:	50b2                	lw	ra,44(sp)
   10f72:	00840513          	addi	a0,s0,8
   10f76:	5422                	lw	s0,40(sp)
   10f78:	5492                	lw	s1,36(sp)
   10f7a:	5902                	lw	s2,32(sp)
   10f7c:	49f2                	lw	s3,28(sp)
   10f7e:	6145                	addi	sp,sp,48
   10f80:	8082                	ret
   10f82:	47c0                	lw	s0,12(a5)
   10f84:	0589                	addi	a1,a1,2
   10f86:	d88781e3          	beq	a5,s0,10d08 <_malloc_r+0xc4>
   10f8a:	b9c5                	j	10c7a <_malloc_r+0x36>
   10f8c:	0097d713          	srli	a4,a5,0x9
   10f90:	4691                	li	a3,4
   10f92:	0ee6f263          	bgeu	a3,a4,11076 <_malloc_r+0x432>
   10f96:	46d1                	li	a3,20
   10f98:	18e6ed63          	bltu	a3,a4,11132 <_malloc_r+0x4ee>
   10f9c:	05c70613          	addi	a2,a4,92
   10fa0:	060e                	slli	a2,a2,0x3
   10fa2:	05b70693          	addi	a3,a4,91
   10fa6:	964a                	add	a2,a2,s2
   10fa8:	4218                	lw	a4,0(a2)
   10faa:	1661                	addi	a2,a2,-8
   10fac:	00e61663          	bne	a2,a4,10fb8 <_malloc_r+0x374>
   10fb0:	aa2d                	j	110ea <_malloc_r+0x4a6>
   10fb2:	4718                	lw	a4,8(a4)
   10fb4:	00e60663          	beq	a2,a4,10fc0 <_malloc_r+0x37c>
   10fb8:	4354                	lw	a3,4(a4)
   10fba:	9af1                	andi	a3,a3,-4
   10fbc:	fed7ebe3          	bltu	a5,a3,10fb2 <_malloc_r+0x36e>
   10fc0:	4750                	lw	a2,12(a4)
   10fc2:	c450                	sw	a2,12(s0)
   10fc4:	c418                	sw	a4,8(s0)
   10fc6:	c600                	sw	s0,8(a2)
   10fc8:	c740                	sw	s0,12(a4)
   10fca:	bb61                	j	10d62 <_malloc_r+0x11e>
   10fcc:	4751                	li	a4,20
   10fce:	0af77c63          	bgeu	a4,a5,11086 <_malloc_r+0x442>
   10fd2:	05400713          	li	a4,84
   10fd6:	16f76a63          	bltu	a4,a5,1114a <_malloc_r+0x506>
   10fda:	00c4d793          	srli	a5,s1,0xc
   10fde:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffeb387>
   10fe2:	06e78813          	addi	a6,a5,110
   10fe6:	00359613          	slli	a2,a1,0x3
   10fea:	b9c5                	j	10cda <_malloc_r+0x96>
   10fec:	0e05                	addi	t3,t3,1
   10fee:	003e7793          	andi	a5,t3,3
   10ff2:	0521                	addi	a0,a0,8
   10ff4:	c7cd                	beqz	a5,1109e <_malloc_r+0x45a>
   10ff6:	455c                	lw	a5,12(a0)
   10ff8:	b34d                	j	10d9a <_malloc_r+0x156>
   10ffa:	4410                	lw	a2,8(s0)
   10ffc:	0014e593          	ori	a1,s1,1
   11000:	c04c                	sw	a1,4(s0)
   11002:	c65c                	sw	a5,12(a2)
   11004:	c790                	sw	a2,8(a5)
   11006:	94a2                	add	s1,s1,s0
   11008:	00992a23          	sw	s1,20(s2)
   1100c:	00992823          	sw	s1,16(s2)
   11010:	0016e793          	ori	a5,a3,1
   11014:	9722                	add	a4,a4,s0
   11016:	0104a623          	sw	a6,12(s1)
   1101a:	0104a423          	sw	a6,8(s1)
   1101e:	c0dc                	sw	a5,4(s1)
   11020:	854e                	mv	a0,s3
   11022:	c314                	sw	a3,0(a4)
   11024:	22fd                	jal	11212 <__malloc_unlock>
   11026:	00840513          	addi	a0,s0,8
   1102a:	b36d                	j	10dd4 <_malloc_r+0x190>
   1102c:	97a2                	add	a5,a5,s0
   1102e:	43d8                	lw	a4,4(a5)
   11030:	854e                	mv	a0,s3
   11032:	00176713          	ori	a4,a4,1
   11036:	c3d8                	sw	a4,4(a5)
   11038:	2ae9                	jal	11212 <__malloc_unlock>
   1103a:	00840513          	addi	a0,s0,8
   1103e:	bb59                	j	10dd4 <_malloc_r+0x190>
   11040:	0034d593          	srli	a1,s1,0x3
   11044:	00848793          	addi	a5,s1,8
   11048:	b105                	j	10c68 <_malloc_r+0x24>
   1104a:	0014e693          	ori	a3,s1,1
   1104e:	c054                	sw	a3,4(s0)
   11050:	94a2                	add	s1,s1,s0
   11052:	00992a23          	sw	s1,20(s2)
   11056:	00992823          	sw	s1,16(s2)
   1105a:	00176693          	ori	a3,a4,1
   1105e:	97a2                	add	a5,a5,s0
   11060:	0104a623          	sw	a6,12(s1)
   11064:	0104a423          	sw	a6,8(s1)
   11068:	c0d4                	sw	a3,4(s1)
   1106a:	854e                	mv	a0,s3
   1106c:	c398                	sw	a4,0(a5)
   1106e:	2255                	jal	11212 <__malloc_unlock>
   11070:	00840513          	addi	a0,s0,8
   11074:	b385                	j	10dd4 <_malloc_r+0x190>
   11076:	0067d713          	srli	a4,a5,0x6
   1107a:	03970613          	addi	a2,a4,57
   1107e:	060e                	slli	a2,a2,0x3
   11080:	03870693          	addi	a3,a4,56
   11084:	b70d                	j	10fa6 <_malloc_r+0x362>
   11086:	05c78593          	addi	a1,a5,92
   1108a:	05b78813          	addi	a6,a5,91
   1108e:	00359613          	slli	a2,a1,0x3
   11092:	b1a1                	j	10cda <_malloc_r+0x96>
   11094:	00832783          	lw	a5,8(t1)
   11098:	15fd                	addi	a1,a1,-1
   1109a:	16679863          	bne	a5,t1,1120a <_malloc_r+0x5c6>
   1109e:	0035f793          	andi	a5,a1,3
   110a2:	1361                	addi	t1,t1,-8
   110a4:	fbe5                	bnez	a5,11094 <_malloc_r+0x450>
   110a6:	00492703          	lw	a4,4(s2)
   110aa:	fff64793          	not	a5,a2
   110ae:	8ff9                	and	a5,a5,a4
   110b0:	00f92223          	sw	a5,4(s2)
   110b4:	0606                	slli	a2,a2,0x1
   110b6:	d2c7ede3          	bltu	a5,a2,10df0 <_malloc_r+0x1ac>
   110ba:	d2060be3          	beqz	a2,10df0 <_malloc_r+0x1ac>
   110be:	00f67733          	and	a4,a2,a5
   110c2:	e711                	bnez	a4,110ce <_malloc_r+0x48a>
   110c4:	0606                	slli	a2,a2,0x1
   110c6:	00f67733          	and	a4,a2,a5
   110ca:	0e11                	addi	t3,t3,4
   110cc:	df65                	beqz	a4,110c4 <_malloc_r+0x480>
   110ce:	85f2                	mv	a1,t3
   110d0:	b97d                	j	10d8e <_malloc_r+0x14a>
   110d2:	00840593          	addi	a1,s0,8
   110d6:	854e                	mv	a0,s3
   110d8:	951ff0ef          	jal	10a28 <_free_r>
   110dc:	000c2583          	lw	a1,0(s8)
   110e0:	00892b83          	lw	s7,8(s2)
   110e4:	b509                	j	10ee6 <_malloc_r+0x2a2>
   110e6:	0ac1                	addi	s5,s5,16
   110e8:	b3a9                	j	10e32 <_malloc_r+0x1ee>
   110ea:	8689                	srai	a3,a3,0x2
   110ec:	4785                	li	a5,1
   110ee:	00d797b3          	sll	a5,a5,a3
   110f2:	8d5d                	or	a0,a0,a5
   110f4:	00a92223          	sw	a0,4(s2)
   110f8:	b5e9                	j	10fc2 <_malloc_r+0x37e>
   110fa:	015b85b3          	add	a1,s7,s5
   110fe:	40b005b3          	neg	a1,a1
   11102:	05d2                	slli	a1,a1,0x14
   11104:	0145da13          	srli	s4,a1,0x14
   11108:	85d2                	mv	a1,s4
   1110a:	854e                	mv	a0,s3
   1110c:	0c3000ef          	jal	119ce <_sbrk_r>
   11110:	57fd                	li	a5,-1
   11112:	d8f517e3          	bne	a0,a5,10ea0 <_malloc_r+0x25c>
   11116:	4a01                	li	s4,0
   11118:	bb41                	j	10ea8 <_malloc_r+0x264>
   1111a:	4c22                	lw	s8,8(sp)
   1111c:	4785                	li	a5,1
   1111e:	00fba223          	sw	a5,4(s7)
   11122:	854e                	mv	a0,s3
   11124:	20fd                	jal	11212 <__malloc_unlock>
   11126:	4a62                	lw	s4,24(sp)
   11128:	4ad2                	lw	s5,20(sp)
   1112a:	4b42                	lw	s6,16(sp)
   1112c:	4bb2                	lw	s7,12(sp)
   1112e:	4c92                	lw	s9,4(sp)
   11130:	b14d                	j	10dd2 <_malloc_r+0x18e>
   11132:	05400693          	li	a3,84
   11136:	06e6e363          	bltu	a3,a4,1119c <_malloc_r+0x558>
   1113a:	00c7d713          	srli	a4,a5,0xc
   1113e:	06f70613          	addi	a2,a4,111
   11142:	060e                	slli	a2,a2,0x3
   11144:	06e70693          	addi	a3,a4,110
   11148:	bdb9                	j	10fa6 <_malloc_r+0x362>
   1114a:	15400713          	li	a4,340
   1114e:	06f76363          	bltu	a4,a5,111b4 <_malloc_r+0x570>
   11152:	00f4d793          	srli	a5,s1,0xf
   11156:	07878593          	addi	a1,a5,120
   1115a:	07778813          	addi	a6,a5,119
   1115e:	00359613          	slli	a2,a1,0x3
   11162:	bea5                	j	10cda <_malloc_r+0x96>
   11164:	eb818c13          	addi	s8,gp,-328 # 13b30 <__malloc_current_mallinfo>
   11168:	000c2703          	lw	a4,0(s8)
   1116c:	9756                	add	a4,a4,s5
   1116e:	00ec2023          	sw	a4,0(s8)
   11172:	b1ed                	j	10e5c <_malloc_r+0x218>
   11174:	00892403          	lw	s0,8(s2)
   11178:	405c                	lw	a5,4(s0)
   1117a:	b345                	j	10f1a <_malloc_r+0x2d6>
   1117c:	01451793          	slli	a5,a0,0x14
   11180:	cc079ee3          	bnez	a5,10e5c <_malloc_r+0x218>
   11184:	00892b83          	lw	s7,8(s2)
   11188:	015b07b3          	add	a5,s6,s5
   1118c:	0017e793          	ori	a5,a5,1
   11190:	00fba223          	sw	a5,4(s7)
   11194:	bb99                	j	10eea <_malloc_r+0x2a6>
   11196:	d571a023          	sw	s7,-704(gp) # 139b8 <__malloc_sbrk_base>
   1119a:	b9d9                	j	10e70 <_malloc_r+0x22c>
   1119c:	15400693          	li	a3,340
   111a0:	02e6ed63          	bltu	a3,a4,111da <_malloc_r+0x596>
   111a4:	00f7d713          	srli	a4,a5,0xf
   111a8:	07870613          	addi	a2,a4,120
   111ac:	060e                	slli	a2,a2,0x3
   111ae:	07770693          	addi	a3,a4,119
   111b2:	bbd5                	j	10fa6 <_malloc_r+0x362>
   111b4:	55400713          	li	a4,1364
   111b8:	02f76d63          	bltu	a4,a5,111f2 <_malloc_r+0x5ae>
   111bc:	0124d793          	srli	a5,s1,0x12
   111c0:	07d78593          	addi	a1,a5,125
   111c4:	07c78813          	addi	a6,a5,124
   111c8:	00359613          	slli	a2,a1,0x3
   111cc:	b639                	j	10cda <_malloc_r+0x96>
   111ce:	1ce1                	addi	s9,s9,-8
   111d0:	9ae6                	add	s5,s5,s9
   111d2:	417a8ab3          	sub	s5,s5,s7
   111d6:	4a01                	li	s4,0
   111d8:	b9c1                	j	10ea8 <_malloc_r+0x264>
   111da:	55400693          	li	a3,1364
   111de:	02e6e163          	bltu	a3,a4,11200 <_malloc_r+0x5bc>
   111e2:	0127d713          	srli	a4,a5,0x12
   111e6:	07d70613          	addi	a2,a4,125
   111ea:	060e                	slli	a2,a2,0x3
   111ec:	07c70693          	addi	a3,a4,124
   111f0:	bb5d                	j	10fa6 <_malloc_r+0x362>
   111f2:	3f800613          	li	a2,1016
   111f6:	07f00593          	li	a1,127
   111fa:	07e00813          	li	a6,126
   111fe:	bcf1                	j	10cda <_malloc_r+0x96>
   11200:	3f800613          	li	a2,1016
   11204:	07e00693          	li	a3,126
   11208:	bb79                	j	10fa6 <_malloc_r+0x362>
   1120a:	00492783          	lw	a5,4(s2)
   1120e:	b55d                	j	110b4 <_malloc_r+0x470>

00011210 <__malloc_lock>:
   11210:	8082                	ret

00011212 <__malloc_unlock>:
   11212:	8082                	ret

00011214 <_fclose_r>:
   11214:	1141                	addi	sp,sp,-16
   11216:	c606                	sw	ra,12(sp)
   11218:	c04a                	sw	s2,0(sp)
   1121a:	cd89                	beqz	a1,11234 <_fclose_r+0x20>
   1121c:	c422                	sw	s0,8(sp)
   1121e:	c226                	sw	s1,4(sp)
   11220:	842e                	mv	s0,a1
   11222:	84aa                	mv	s1,a0
   11224:	c119                	beqz	a0,1122a <_fclose_r+0x16>
   11226:	595c                	lw	a5,52(a0)
   11228:	c7d1                	beqz	a5,112b4 <_fclose_r+0xa0>
   1122a:	00c41783          	lh	a5,12(s0)
   1122e:	eb89                	bnez	a5,11240 <_fclose_r+0x2c>
   11230:	4422                	lw	s0,8(sp)
   11232:	4492                	lw	s1,4(sp)
   11234:	40b2                	lw	ra,12(sp)
   11236:	4901                	li	s2,0
   11238:	854a                	mv	a0,s2
   1123a:	4902                	lw	s2,0(sp)
   1123c:	0141                	addi	sp,sp,16
   1123e:	8082                	ret
   11240:	85a2                	mv	a1,s0
   11242:	8526                	mv	a0,s1
   11244:	28bd                	jal	112c2 <__sflush_r>
   11246:	545c                	lw	a5,44(s0)
   11248:	892a                	mv	s2,a0
   1124a:	c791                	beqz	a5,11256 <_fclose_r+0x42>
   1124c:	4c4c                	lw	a1,28(s0)
   1124e:	8526                	mv	a0,s1
   11250:	9782                	jalr	a5
   11252:	04054663          	bltz	a0,1129e <_fclose_r+0x8a>
   11256:	00c45783          	lhu	a5,12(s0)
   1125a:	0807f793          	andi	a5,a5,128
   1125e:	e7b1                	bnez	a5,112aa <_fclose_r+0x96>
   11260:	580c                	lw	a1,48(s0)
   11262:	c991                	beqz	a1,11276 <_fclose_r+0x62>
   11264:	04040793          	addi	a5,s0,64
   11268:	00f58563          	beq	a1,a5,11272 <_fclose_r+0x5e>
   1126c:	8526                	mv	a0,s1
   1126e:	fbaff0ef          	jal	10a28 <_free_r>
   11272:	02042823          	sw	zero,48(s0)
   11276:	406c                	lw	a1,68(s0)
   11278:	c591                	beqz	a1,11284 <_fclose_r+0x70>
   1127a:	8526                	mv	a0,s1
   1127c:	facff0ef          	jal	10a28 <_free_r>
   11280:	04042223          	sw	zero,68(s0)
   11284:	93cff0ef          	jal	103c0 <__sfp_lock_acquire>
   11288:	00041623          	sh	zero,12(s0)
   1128c:	936ff0ef          	jal	103c2 <__sfp_lock_release>
   11290:	40b2                	lw	ra,12(sp)
   11292:	4422                	lw	s0,8(sp)
   11294:	4492                	lw	s1,4(sp)
   11296:	854a                	mv	a0,s2
   11298:	4902                	lw	s2,0(sp)
   1129a:	0141                	addi	sp,sp,16
   1129c:	8082                	ret
   1129e:	00c45783          	lhu	a5,12(s0)
   112a2:	597d                	li	s2,-1
   112a4:	0807f793          	andi	a5,a5,128
   112a8:	dfc5                	beqz	a5,11260 <_fclose_r+0x4c>
   112aa:	480c                	lw	a1,16(s0)
   112ac:	8526                	mv	a0,s1
   112ae:	f7aff0ef          	jal	10a28 <_free_r>
   112b2:	b77d                	j	11260 <_fclose_r+0x4c>
   112b4:	8f6ff0ef          	jal	103aa <__sinit>
   112b8:	bf8d                	j	1122a <_fclose_r+0x16>

000112ba <fclose>:
   112ba:	85aa                	mv	a1,a0
   112bc:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   112c0:	bf91                	j	11214 <_fclose_r>

000112c2 <__sflush_r>:
   112c2:	00c59703          	lh	a4,12(a1)
   112c6:	1101                	addi	sp,sp,-32
   112c8:	cc22                	sw	s0,24(sp)
   112ca:	c64e                	sw	s3,12(sp)
   112cc:	ce06                	sw	ra,28(sp)
   112ce:	00877793          	andi	a5,a4,8
   112d2:	842e                	mv	s0,a1
   112d4:	89aa                	mv	s3,a0
   112d6:	e7e1                	bnez	a5,1139e <__sflush_r+0xdc>
   112d8:	6785                	lui	a5,0x1
   112da:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   112de:	41d4                	lw	a3,4(a1)
   112e0:	8fd9                	or	a5,a5,a4
   112e2:	00f59623          	sh	a5,12(a1)
   112e6:	10d05963          	blez	a3,113f8 <__sflush_r+0x136>
   112ea:	02842803          	lw	a6,40(s0)
   112ee:	0a080263          	beqz	a6,11392 <__sflush_r+0xd0>
   112f2:	ca26                	sw	s1,20(sp)
   112f4:	01371693          	slli	a3,a4,0x13
   112f8:	0009a483          	lw	s1,0(s3)
   112fc:	0009a023          	sw	zero,0(s3)
   11300:	1006c363          	bltz	a3,11406 <__sflush_r+0x144>
   11304:	4c4c                	lw	a1,28(s0)
   11306:	4601                	li	a2,0
   11308:	4685                	li	a3,1
   1130a:	854e                	mv	a0,s3
   1130c:	9802                	jalr	a6
   1130e:	57fd                	li	a5,-1
   11310:	862a                	mv	a2,a0
   11312:	12f50163          	beq	a0,a5,11434 <__sflush_r+0x172>
   11316:	00c41783          	lh	a5,12(s0)
   1131a:	02842803          	lw	a6,40(s0)
   1131e:	8b91                	andi	a5,a5,4
   11320:	c799                	beqz	a5,1132e <__sflush_r+0x6c>
   11322:	4058                	lw	a4,4(s0)
   11324:	581c                	lw	a5,48(s0)
   11326:	8e19                	sub	a2,a2,a4
   11328:	c399                	beqz	a5,1132e <__sflush_r+0x6c>
   1132a:	5c5c                	lw	a5,60(s0)
   1132c:	8e1d                	sub	a2,a2,a5
   1132e:	4c4c                	lw	a1,28(s0)
   11330:	4681                	li	a3,0
   11332:	854e                	mv	a0,s3
   11334:	9802                	jalr	a6
   11336:	577d                	li	a4,-1
   11338:	00c41783          	lh	a5,12(s0)
   1133c:	0ce51763          	bne	a0,a4,1140a <__sflush_r+0x148>
   11340:	0009a683          	lw	a3,0(s3)
   11344:	4775                	li	a4,29
   11346:	10d76363          	bltu	a4,a3,1144c <__sflush_r+0x18a>
   1134a:	20400737          	lui	a4,0x20400
   1134e:	0705                	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec319>
   11350:	00d75733          	srl	a4,a4,a3
   11354:	8b05                	andi	a4,a4,1
   11356:	cb7d                	beqz	a4,1144c <__sflush_r+0x18a>
   11358:	4810                	lw	a2,16(s0)
   1135a:	777d                	lui	a4,0xfffff
   1135c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebb17>
   11360:	8f7d                	and	a4,a4,a5
   11362:	00e41623          	sh	a4,12(s0)
   11366:	00042223          	sw	zero,4(s0)
   1136a:	c010                	sw	a2,0(s0)
   1136c:	01379713          	slli	a4,a5,0x13
   11370:	00075363          	bgez	a4,11376 <__sflush_r+0xb4>
   11374:	cacd                	beqz	a3,11426 <__sflush_r+0x164>
   11376:	580c                	lw	a1,48(s0)
   11378:	0099a023          	sw	s1,0(s3)
   1137c:	c9d5                	beqz	a1,11430 <__sflush_r+0x16e>
   1137e:	04040793          	addi	a5,s0,64
   11382:	00f58563          	beq	a1,a5,1138c <__sflush_r+0xca>
   11386:	854e                	mv	a0,s3
   11388:	ea0ff0ef          	jal	10a28 <_free_r>
   1138c:	44d2                	lw	s1,20(sp)
   1138e:	02042823          	sw	zero,48(s0)
   11392:	40f2                	lw	ra,28(sp)
   11394:	4462                	lw	s0,24(sp)
   11396:	49b2                	lw	s3,12(sp)
   11398:	4501                	li	a0,0
   1139a:	6105                	addi	sp,sp,32
   1139c:	8082                	ret
   1139e:	c84a                	sw	s2,16(sp)
   113a0:	0105a903          	lw	s2,16(a1)
   113a4:	04090f63          	beqz	s2,11402 <__sflush_r+0x140>
   113a8:	ca26                	sw	s1,20(sp)
   113aa:	4184                	lw	s1,0(a1)
   113ac:	8b0d                	andi	a4,a4,3
   113ae:	0125a023          	sw	s2,0(a1)
   113b2:	412484b3          	sub	s1,s1,s2
   113b6:	4781                	li	a5,0
   113b8:	e311                	bnez	a4,113bc <__sflush_r+0xfa>
   113ba:	49dc                	lw	a5,20(a1)
   113bc:	c41c                	sw	a5,8(s0)
   113be:	00904663          	bgtz	s1,113ca <__sflush_r+0x108>
   113c2:	a83d                	j	11400 <__sflush_r+0x13e>
   113c4:	992a                	add	s2,s2,a0
   113c6:	02905d63          	blez	s1,11400 <__sflush_r+0x13e>
   113ca:	505c                	lw	a5,36(s0)
   113cc:	4c4c                	lw	a1,28(s0)
   113ce:	86a6                	mv	a3,s1
   113d0:	864a                	mv	a2,s2
   113d2:	854e                	mv	a0,s3
   113d4:	9782                	jalr	a5
   113d6:	8c89                	sub	s1,s1,a0
   113d8:	fea046e3          	bgtz	a0,113c4 <__sflush_r+0x102>
   113dc:	00c41783          	lh	a5,12(s0)
   113e0:	4942                	lw	s2,16(sp)
   113e2:	0407e793          	ori	a5,a5,64
   113e6:	40f2                	lw	ra,28(sp)
   113e8:	00f41623          	sh	a5,12(s0)
   113ec:	4462                	lw	s0,24(sp)
   113ee:	44d2                	lw	s1,20(sp)
   113f0:	49b2                	lw	s3,12(sp)
   113f2:	557d                	li	a0,-1
   113f4:	6105                	addi	sp,sp,32
   113f6:	8082                	ret
   113f8:	5dd4                	lw	a3,60(a1)
   113fa:	eed048e3          	bgtz	a3,112ea <__sflush_r+0x28>
   113fe:	bf51                	j	11392 <__sflush_r+0xd0>
   11400:	44d2                	lw	s1,20(sp)
   11402:	4942                	lw	s2,16(sp)
   11404:	b779                	j	11392 <__sflush_r+0xd0>
   11406:	4830                	lw	a2,80(s0)
   11408:	bf19                	j	1131e <__sflush_r+0x5c>
   1140a:	4814                	lw	a3,16(s0)
   1140c:	777d                	lui	a4,0xfffff
   1140e:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffebb17>
   11412:	8f7d                	and	a4,a4,a5
   11414:	00e41623          	sh	a4,12(s0)
   11418:	00042223          	sw	zero,4(s0)
   1141c:	c014                	sw	a3,0(s0)
   1141e:	01379713          	slli	a4,a5,0x13
   11422:	f4075ae3          	bgez	a4,11376 <__sflush_r+0xb4>
   11426:	580c                	lw	a1,48(s0)
   11428:	c828                	sw	a0,80(s0)
   1142a:	0099a023          	sw	s1,0(s3)
   1142e:	f9a1                	bnez	a1,1137e <__sflush_r+0xbc>
   11430:	44d2                	lw	s1,20(sp)
   11432:	b785                	j	11392 <__sflush_r+0xd0>
   11434:	0009a783          	lw	a5,0(s3)
   11438:	ec078fe3          	beqz	a5,11316 <__sflush_r+0x54>
   1143c:	4775                	li	a4,29
   1143e:	00e78a63          	beq	a5,a4,11452 <__sflush_r+0x190>
   11442:	4759                	li	a4,22
   11444:	00e78763          	beq	a5,a4,11452 <__sflush_r+0x190>
   11448:	00c41783          	lh	a5,12(s0)
   1144c:	0407e793          	ori	a5,a5,64
   11450:	bf59                	j	113e6 <__sflush_r+0x124>
   11452:	0099a023          	sw	s1,0(s3)
   11456:	44d2                	lw	s1,20(sp)
   11458:	bf2d                	j	11392 <__sflush_r+0xd0>

0001145a <_fflush_r>:
   1145a:	1101                	addi	sp,sp,-32
   1145c:	cc22                	sw	s0,24(sp)
   1145e:	ce06                	sw	ra,28(sp)
   11460:	842a                	mv	s0,a0
   11462:	c119                	beqz	a0,11468 <_fflush_r+0xe>
   11464:	595c                	lw	a5,52(a0)
   11466:	cf91                	beqz	a5,11482 <_fflush_r+0x28>
   11468:	00c59783          	lh	a5,12(a1)
   1146c:	e791                	bnez	a5,11478 <_fflush_r+0x1e>
   1146e:	40f2                	lw	ra,28(sp)
   11470:	4462                	lw	s0,24(sp)
   11472:	4501                	li	a0,0
   11474:	6105                	addi	sp,sp,32
   11476:	8082                	ret
   11478:	8522                	mv	a0,s0
   1147a:	4462                	lw	s0,24(sp)
   1147c:	40f2                	lw	ra,28(sp)
   1147e:	6105                	addi	sp,sp,32
   11480:	b589                	j	112c2 <__sflush_r>
   11482:	c62e                	sw	a1,12(sp)
   11484:	f27fe0ef          	jal	103aa <__sinit>
   11488:	45b2                	lw	a1,12(sp)
   1148a:	bff9                	j	11468 <_fflush_r+0xe>

0001148c <fflush>:
   1148c:	cd05                	beqz	a0,114c4 <fflush+0x38>
   1148e:	85aa                	mv	a1,a0
   11490:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   11494:	c119                	beqz	a0,1149a <fflush+0xe>
   11496:	595c                	lw	a5,52(a0)
   11498:	c799                	beqz	a5,114a6 <fflush+0x1a>
   1149a:	00c59783          	lh	a5,12(a1)
   1149e:	e399                	bnez	a5,114a4 <fflush+0x18>
   114a0:	4501                	li	a0,0
   114a2:	8082                	ret
   114a4:	bd39                	j	112c2 <__sflush_r>
   114a6:	1101                	addi	sp,sp,-32
   114a8:	c62e                	sw	a1,12(sp)
   114aa:	c42a                	sw	a0,8(sp)
   114ac:	ce06                	sw	ra,28(sp)
   114ae:	efdfe0ef          	jal	103aa <__sinit>
   114b2:	45b2                	lw	a1,12(sp)
   114b4:	4522                	lw	a0,8(sp)
   114b6:	00c59783          	lh	a5,12(a1)
   114ba:	e385                	bnez	a5,114da <fflush+0x4e>
   114bc:	40f2                	lw	ra,28(sp)
   114be:	4501                	li	a0,0
   114c0:	6105                	addi	sp,sp,32
   114c2:	8082                	ret
   114c4:	664d                	lui	a2,0x13
   114c6:	65c5                	lui	a1,0x11
   114c8:	654d                	lui	a0,0x13
   114ca:	47860613          	addi	a2,a2,1144 # 13478 <__sglue>
   114ce:	45a58593          	addi	a1,a1,1114 # 1145a <_fflush_r>
   114d2:	48850513          	addi	a0,a0,1160 # 13488 <_impure_data>
   114d6:	f0ffe06f          	j	103e4 <_fwalk_sglue>
   114da:	40f2                	lw	ra,28(sp)
   114dc:	6105                	addi	sp,sp,32
   114de:	b3d5                	j	112c2 <__sflush_r>

000114e0 <__sfvwrite_r>:
   114e0:	461c                	lw	a5,8(a2)
   114e2:	18078a63          	beqz	a5,11676 <__sfvwrite_r+0x196>
   114e6:	00c59703          	lh	a4,12(a1)
   114ea:	7179                	addi	sp,sp,-48
   114ec:	d422                	sw	s0,40(sp)
   114ee:	cc52                	sw	s4,24(sp)
   114f0:	ca56                	sw	s5,20(sp)
   114f2:	d606                	sw	ra,44(sp)
   114f4:	00877793          	andi	a5,a4,8
   114f8:	8a32                	mv	s4,a2
   114fa:	8aaa                	mv	s5,a0
   114fc:	842e                	mv	s0,a1
   114fe:	c7b5                	beqz	a5,1156a <__sfvwrite_r+0x8a>
   11500:	499c                	lw	a5,16(a1)
   11502:	c7a5                	beqz	a5,1156a <__sfvwrite_r+0x8a>
   11504:	d226                	sw	s1,36(sp)
   11506:	d04a                	sw	s2,32(sp)
   11508:	ce4e                	sw	s3,28(sp)
   1150a:	c85a                	sw	s6,16(sp)
   1150c:	00277793          	andi	a5,a4,2
   11510:	000a2483          	lw	s1,0(s4)
   11514:	cbbd                	beqz	a5,1158a <__sfvwrite_r+0xaa>
   11516:	80000b37          	lui	s6,0x80000
   1151a:	c00b0b13          	addi	s6,s6,-1024 # 7ffffc00 <__BSS_END__+0x7ffebf18>
   1151e:	4981                	li	s3,0
   11520:	4901                	li	s2,0
   11522:	864e                	mv	a2,s3
   11524:	8556                	mv	a0,s5
   11526:	14090263          	beqz	s2,1166a <__sfvwrite_r+0x18a>
   1152a:	800007b7          	lui	a5,0x80000
   1152e:	86ca                	mv	a3,s2
   11530:	012b7463          	bgeu	s6,s2,11538 <__sfvwrite_r+0x58>
   11534:	c0078693          	addi	a3,a5,-1024 # 7ffffc00 <__BSS_END__+0x7ffebf18>
   11538:	505c                	lw	a5,36(s0)
   1153a:	4c4c                	lw	a1,28(s0)
   1153c:	9782                	jalr	a5
   1153e:	2ca05463          	blez	a0,11806 <__sfvwrite_r+0x326>
   11542:	008a2783          	lw	a5,8(s4)
   11546:	99aa                	add	s3,s3,a0
   11548:	40a90933          	sub	s2,s2,a0
   1154c:	8f89                	sub	a5,a5,a0
   1154e:	00fa2423          	sw	a5,8(s4)
   11552:	fbe1                	bnez	a5,11522 <__sfvwrite_r+0x42>
   11554:	5492                	lw	s1,36(sp)
   11556:	5902                	lw	s2,32(sp)
   11558:	49f2                	lw	s3,28(sp)
   1155a:	4b42                	lw	s6,16(sp)
   1155c:	4501                	li	a0,0
   1155e:	50b2                	lw	ra,44(sp)
   11560:	5422                	lw	s0,40(sp)
   11562:	4a62                	lw	s4,24(sp)
   11564:	4ad2                	lw	s5,20(sp)
   11566:	6145                	addi	sp,sp,48
   11568:	8082                	ret
   1156a:	85a2                	mv	a1,s0
   1156c:	8556                	mv	a0,s5
   1156e:	2c45                	jal	1181e <__swsetup_r>
   11570:	1a051f63          	bnez	a0,1172e <__sfvwrite_r+0x24e>
   11574:	00c41703          	lh	a4,12(s0)
   11578:	d226                	sw	s1,36(sp)
   1157a:	d04a                	sw	s2,32(sp)
   1157c:	ce4e                	sw	s3,28(sp)
   1157e:	c85a                	sw	s6,16(sp)
   11580:	00277793          	andi	a5,a4,2
   11584:	000a2483          	lw	s1,0(s4)
   11588:	f7d9                	bnez	a5,11516 <__sfvwrite_r+0x36>
   1158a:	c65e                	sw	s7,12(sp)
   1158c:	c462                	sw	s8,8(sp)
   1158e:	00177793          	andi	a5,a4,1
   11592:	e7e5                	bnez	a5,1167a <__sfvwrite_r+0x19a>
   11594:	80000bb7          	lui	s7,0x80000
   11598:	c266                	sw	s9,4(sp)
   1159a:	1bfd                	addi	s7,s7,-1 # 7fffffff <__BSS_END__+0x7ffec317>
   1159c:	4b01                	li	s6,0
   1159e:	4901                	li	s2,0
   115a0:	0a090f63          	beqz	s2,1165e <__sfvwrite_r+0x17e>
   115a4:	20077793          	andi	a5,a4,512
   115a8:	4008                	lw	a0,0(s0)
   115aa:	00842c03          	lw	s8,8(s0)
   115ae:	18078263          	beqz	a5,11732 <__sfvwrite_r+0x252>
   115b2:	8ce2                	mv	s9,s8
   115b4:	1f896c63          	bltu	s2,s8,117ac <__sfvwrite_r+0x2cc>
   115b8:	48077793          	andi	a5,a4,1152
   115bc:	cba5                	beqz	a5,1162c <__sfvwrite_r+0x14c>
   115be:	4854                	lw	a3,20(s0)
   115c0:	480c                	lw	a1,16(s0)
   115c2:	00169793          	slli	a5,a3,0x1
   115c6:	97b6                	add	a5,a5,a3
   115c8:	01f7d993          	srli	s3,a5,0x1f
   115cc:	40b50c33          	sub	s8,a0,a1
   115d0:	99be                	add	s3,s3,a5
   115d2:	001c0793          	addi	a5,s8,1
   115d6:	4019d993          	srai	s3,s3,0x1
   115da:	97ca                	add	a5,a5,s2
   115dc:	864e                	mv	a2,s3
   115de:	00f9f463          	bgeu	s3,a5,115e6 <__sfvwrite_r+0x106>
   115e2:	89be                	mv	s3,a5
   115e4:	863e                	mv	a2,a5
   115e6:	40077713          	andi	a4,a4,1024
   115ea:	1e070663          	beqz	a4,117d6 <__sfvwrite_r+0x2f6>
   115ee:	85b2                	mv	a1,a2
   115f0:	8556                	mv	a0,s5
   115f2:	e52ff0ef          	jal	10c44 <_malloc_r>
   115f6:	8caa                	mv	s9,a0
   115f8:	20050a63          	beqz	a0,1180c <__sfvwrite_r+0x32c>
   115fc:	480c                	lw	a1,16(s0)
   115fe:	8662                	mv	a2,s8
   11600:	2b11                	jal	11b14 <memcpy>
   11602:	00c45783          	lhu	a5,12(s0)
   11606:	b7f7f793          	andi	a5,a5,-1153
   1160a:	0807e793          	ori	a5,a5,128
   1160e:	00f41623          	sh	a5,12(s0)
   11612:	018c8533          	add	a0,s9,s8
   11616:	41898c33          	sub	s8,s3,s8
   1161a:	01942823          	sw	s9,16(s0)
   1161e:	01842423          	sw	s8,8(s0)
   11622:	c008                	sw	a0,0(s0)
   11624:	01342a23          	sw	s3,20(s0)
   11628:	8c4a                	mv	s8,s2
   1162a:	8cca                	mv	s9,s2
   1162c:	85da                	mv	a1,s6
   1162e:	8666                	mv	a2,s9
   11630:	2121                	jal	11a38 <memmove>
   11632:	401c                	lw	a5,0(s0)
   11634:	4418                	lw	a4,8(s0)
   11636:	89ca                	mv	s3,s2
   11638:	97e6                	add	a5,a5,s9
   1163a:	c01c                	sw	a5,0(s0)
   1163c:	008a2783          	lw	a5,8(s4)
   11640:	41870733          	sub	a4,a4,s8
   11644:	c418                	sw	a4,8(s0)
   11646:	413787b3          	sub	a5,a5,s3
   1164a:	00fa2423          	sw	a5,8(s4)
   1164e:	4901                	li	s2,0
   11650:	9b4e                	add	s6,s6,s3
   11652:	12078063          	beqz	a5,11772 <__sfvwrite_r+0x292>
   11656:	00c41703          	lh	a4,12(s0)
   1165a:	f40915e3          	bnez	s2,115a4 <__sfvwrite_r+0xc4>
   1165e:	0004ab03          	lw	s6,0(s1)
   11662:	0044a903          	lw	s2,4(s1)
   11666:	04a1                	addi	s1,s1,8
   11668:	bf25                	j	115a0 <__sfvwrite_r+0xc0>
   1166a:	0004a983          	lw	s3,0(s1)
   1166e:	0044a903          	lw	s2,4(s1)
   11672:	04a1                	addi	s1,s1,8
   11674:	b57d                	j	11522 <__sfvwrite_r+0x42>
   11676:	4501                	li	a0,0
   11678:	8082                	ret
   1167a:	4b01                	li	s6,0
   1167c:	4501                	li	a0,0
   1167e:	4c01                	li	s8,0
   11680:	4981                	li	s3,0
   11682:	04098e63          	beqz	s3,116de <__sfvwrite_r+0x1fe>
   11686:	c525                	beqz	a0,116ee <__sfvwrite_r+0x20e>
   11688:	87da                	mv	a5,s6
   1168a:	8bce                	mv	s7,s3
   1168c:	0137f363          	bgeu	a5,s3,11692 <__sfvwrite_r+0x1b2>
   11690:	8bbe                	mv	s7,a5
   11692:	4008                	lw	a0,0(s0)
   11694:	481c                	lw	a5,16(s0)
   11696:	4854                	lw	a3,20(s0)
   11698:	00a7f763          	bgeu	a5,a0,116a6 <__sfvwrite_r+0x1c6>
   1169c:	00842903          	lw	s2,8(s0)
   116a0:	9936                	add	s2,s2,a3
   116a2:	07794063          	blt	s2,s7,11702 <__sfvwrite_r+0x222>
   116a6:	10dbcc63          	blt	s7,a3,117be <__sfvwrite_r+0x2de>
   116aa:	505c                	lw	a5,36(s0)
   116ac:	4c4c                	lw	a1,28(s0)
   116ae:	8662                	mv	a2,s8
   116b0:	8556                	mv	a0,s5
   116b2:	9782                	jalr	a5
   116b4:	892a                	mv	s2,a0
   116b6:	06a05063          	blez	a0,11716 <__sfvwrite_r+0x236>
   116ba:	412b0b33          	sub	s6,s6,s2
   116be:	4505                	li	a0,1
   116c0:	0e0b0963          	beqz	s6,117b2 <__sfvwrite_r+0x2d2>
   116c4:	008a2783          	lw	a5,8(s4)
   116c8:	9c4a                	add	s8,s8,s2
   116ca:	412989b3          	sub	s3,s3,s2
   116ce:	412787b3          	sub	a5,a5,s2
   116d2:	00fa2423          	sw	a5,8(s4)
   116d6:	f7d5                	bnez	a5,11682 <__sfvwrite_r+0x1a2>
   116d8:	4bb2                	lw	s7,12(sp)
   116da:	4c22                	lw	s8,8(sp)
   116dc:	bda5                	j	11554 <__sfvwrite_r+0x74>
   116de:	0044a983          	lw	s3,4(s1)
   116e2:	87a6                	mv	a5,s1
   116e4:	04a1                	addi	s1,s1,8
   116e6:	fe098ce3          	beqz	s3,116de <__sfvwrite_r+0x1fe>
   116ea:	0007ac03          	lw	s8,0(a5)
   116ee:	864e                	mv	a2,s3
   116f0:	45a9                	li	a1,10
   116f2:	8562                	mv	a0,s8
   116f4:	2499                	jal	1193a <memchr>
   116f6:	10050463          	beqz	a0,117fe <__sfvwrite_r+0x31e>
   116fa:	0505                	addi	a0,a0,1
   116fc:	41850b33          	sub	s6,a0,s8
   11700:	b761                	j	11688 <__sfvwrite_r+0x1a8>
   11702:	85e2                	mv	a1,s8
   11704:	864a                	mv	a2,s2
   11706:	2e0d                	jal	11a38 <memmove>
   11708:	401c                	lw	a5,0(s0)
   1170a:	85a2                	mv	a1,s0
   1170c:	8556                	mv	a0,s5
   1170e:	97ca                	add	a5,a5,s2
   11710:	c01c                	sw	a5,0(s0)
   11712:	33a1                	jal	1145a <_fflush_r>
   11714:	d15d                	beqz	a0,116ba <__sfvwrite_r+0x1da>
   11716:	00c41783          	lh	a5,12(s0)
   1171a:	4bb2                	lw	s7,12(sp)
   1171c:	4c22                	lw	s8,8(sp)
   1171e:	5492                	lw	s1,36(sp)
   11720:	5902                	lw	s2,32(sp)
   11722:	49f2                	lw	s3,28(sp)
   11724:	4b42                	lw	s6,16(sp)
   11726:	0407e793          	ori	a5,a5,64
   1172a:	00f41623          	sh	a5,12(s0)
   1172e:	557d                	li	a0,-1
   11730:	b53d                	j	1155e <__sfvwrite_r+0x7e>
   11732:	481c                	lw	a5,16(s0)
   11734:	04a7e363          	bltu	a5,a0,1177a <__sfvwrite_r+0x29a>
   11738:	485c                	lw	a5,20(s0)
   1173a:	04f96063          	bltu	s2,a5,1177a <__sfvwrite_r+0x29a>
   1173e:	86ca                	mv	a3,s2
   11740:	012bf363          	bgeu	s7,s2,11746 <__sfvwrite_r+0x266>
   11744:	86de                	mv	a3,s7
   11746:	02f6e7b3          	rem	a5,a3,a5
   1174a:	5058                	lw	a4,36(s0)
   1174c:	4c4c                	lw	a1,28(s0)
   1174e:	865a                	mv	a2,s6
   11750:	8556                	mv	a0,s5
   11752:	8e9d                	sub	a3,a3,a5
   11754:	9702                	jalr	a4
   11756:	89aa                	mv	s3,a0
   11758:	04a05463          	blez	a0,117a0 <__sfvwrite_r+0x2c0>
   1175c:	008a2783          	lw	a5,8(s4)
   11760:	41390933          	sub	s2,s2,s3
   11764:	9b4e                	add	s6,s6,s3
   11766:	413787b3          	sub	a5,a5,s3
   1176a:	00fa2423          	sw	a5,8(s4)
   1176e:	ee0794e3          	bnez	a5,11656 <__sfvwrite_r+0x176>
   11772:	4bb2                	lw	s7,12(sp)
   11774:	4c22                	lw	s8,8(sp)
   11776:	4c92                	lw	s9,4(sp)
   11778:	bbf1                	j	11554 <__sfvwrite_r+0x74>
   1177a:	89e2                	mv	s3,s8
   1177c:	01897363          	bgeu	s2,s8,11782 <__sfvwrite_r+0x2a2>
   11780:	89ca                	mv	s3,s2
   11782:	864e                	mv	a2,s3
   11784:	85da                	mv	a1,s6
   11786:	2c4d                	jal	11a38 <memmove>
   11788:	4018                	lw	a4,0(s0)
   1178a:	441c                	lw	a5,8(s0)
   1178c:	974e                	add	a4,a4,s3
   1178e:	413787b3          	sub	a5,a5,s3
   11792:	c018                	sw	a4,0(s0)
   11794:	c41c                	sw	a5,8(s0)
   11796:	f3f9                	bnez	a5,1175c <__sfvwrite_r+0x27c>
   11798:	85a2                	mv	a1,s0
   1179a:	8556                	mv	a0,s5
   1179c:	397d                	jal	1145a <_fflush_r>
   1179e:	dd5d                	beqz	a0,1175c <__sfvwrite_r+0x27c>
   117a0:	00c41783          	lh	a5,12(s0)
   117a4:	4bb2                	lw	s7,12(sp)
   117a6:	4c22                	lw	s8,8(sp)
   117a8:	4c92                	lw	s9,4(sp)
   117aa:	bf95                	j	1171e <__sfvwrite_r+0x23e>
   117ac:	8c4a                	mv	s8,s2
   117ae:	8cca                	mv	s9,s2
   117b0:	bdb5                	j	1162c <__sfvwrite_r+0x14c>
   117b2:	85a2                	mv	a1,s0
   117b4:	8556                	mv	a0,s5
   117b6:	3155                	jal	1145a <_fflush_r>
   117b8:	f00506e3          	beqz	a0,116c4 <__sfvwrite_r+0x1e4>
   117bc:	bfa9                	j	11716 <__sfvwrite_r+0x236>
   117be:	865e                	mv	a2,s7
   117c0:	85e2                	mv	a1,s8
   117c2:	2c9d                	jal	11a38 <memmove>
   117c4:	4418                	lw	a4,8(s0)
   117c6:	401c                	lw	a5,0(s0)
   117c8:	895e                	mv	s2,s7
   117ca:	41770733          	sub	a4,a4,s7
   117ce:	97de                	add	a5,a5,s7
   117d0:	c418                	sw	a4,8(s0)
   117d2:	c01c                	sw	a5,0(s0)
   117d4:	b5dd                	j	116ba <__sfvwrite_r+0x1da>
   117d6:	8556                	mv	a0,s5
   117d8:	2951                	jal	11c6c <_realloc_r>
   117da:	8caa                	mv	s9,a0
   117dc:	e2051be3          	bnez	a0,11612 <__sfvwrite_r+0x132>
   117e0:	480c                	lw	a1,16(s0)
   117e2:	8556                	mv	a0,s5
   117e4:	a44ff0ef          	jal	10a28 <_free_r>
   117e8:	00c41783          	lh	a5,12(s0)
   117ec:	4731                	li	a4,12
   117ee:	4bb2                	lw	s7,12(sp)
   117f0:	4c22                	lw	s8,8(sp)
   117f2:	4c92                	lw	s9,4(sp)
   117f4:	00eaa023          	sw	a4,0(s5)
   117f8:	f7f7f793          	andi	a5,a5,-129
   117fc:	b70d                	j	1171e <__sfvwrite_r+0x23e>
   117fe:	00198793          	addi	a5,s3,1
   11802:	8b3e                	mv	s6,a5
   11804:	b559                	j	1168a <__sfvwrite_r+0x1aa>
   11806:	00c41783          	lh	a5,12(s0)
   1180a:	bf11                	j	1171e <__sfvwrite_r+0x23e>
   1180c:	47b1                	li	a5,12
   1180e:	00faa023          	sw	a5,0(s5)
   11812:	4bb2                	lw	s7,12(sp)
   11814:	00c41783          	lh	a5,12(s0)
   11818:	4c22                	lw	s8,8(sp)
   1181a:	4c92                	lw	s9,4(sp)
   1181c:	b709                	j	1171e <__sfvwrite_r+0x23e>

0001181e <__swsetup_r>:
   1181e:	d3c1a783          	lw	a5,-708(gp) # 139b4 <_impure_ptr>
   11822:	1141                	addi	sp,sp,-16
   11824:	c422                	sw	s0,8(sp)
   11826:	c226                	sw	s1,4(sp)
   11828:	c606                	sw	ra,12(sp)
   1182a:	84aa                	mv	s1,a0
   1182c:	842e                	mv	s0,a1
   1182e:	c399                	beqz	a5,11834 <__swsetup_r+0x16>
   11830:	5bd8                	lw	a4,52(a5)
   11832:	cb61                	beqz	a4,11902 <__swsetup_r+0xe4>
   11834:	00c41783          	lh	a5,12(s0)
   11838:	0087f713          	andi	a4,a5,8
   1183c:	c315                	beqz	a4,11860 <__swsetup_r+0x42>
   1183e:	4818                	lw	a4,16(s0)
   11840:	cf05                	beqz	a4,11878 <__swsetup_r+0x5a>
   11842:	0017f713          	andi	a4,a5,1
   11846:	c32d                	beqz	a4,118a8 <__swsetup_r+0x8a>
   11848:	485c                	lw	a5,20(s0)
   1184a:	00042423          	sw	zero,8(s0)
   1184e:	40f007b3          	neg	a5,a5
   11852:	cc1c                	sw	a5,24(s0)
   11854:	4501                	li	a0,0
   11856:	40b2                	lw	ra,12(sp)
   11858:	4422                	lw	s0,8(sp)
   1185a:	4492                	lw	s1,4(sp)
   1185c:	0141                	addi	sp,sp,16
   1185e:	8082                	ret
   11860:	0107f713          	andi	a4,a5,16
   11864:	c379                	beqz	a4,1192a <__swsetup_r+0x10c>
   11866:	0047f713          	andi	a4,a5,4
   1186a:	e721                	bnez	a4,118b2 <__swsetup_r+0x94>
   1186c:	4818                	lw	a4,16(s0)
   1186e:	0087e793          	ori	a5,a5,8
   11872:	00f41623          	sh	a5,12(s0)
   11876:	f771                	bnez	a4,11842 <__swsetup_r+0x24>
   11878:	2807f693          	andi	a3,a5,640
   1187c:	20000613          	li	a2,512
   11880:	06c69063          	bne	a3,a2,118e0 <__swsetup_r+0xc2>
   11884:	0017f693          	andi	a3,a5,1
   11888:	c2c9                	beqz	a3,1190a <__swsetup_r+0xec>
   1188a:	4858                	lw	a4,20(s0)
   1188c:	00042423          	sw	zero,8(s0)
   11890:	40e00733          	neg	a4,a4
   11894:	cc18                	sw	a4,24(s0)
   11896:	0807f713          	andi	a4,a5,128
   1189a:	df4d                	beqz	a4,11854 <__swsetup_r+0x36>
   1189c:	0407e793          	ori	a5,a5,64
   118a0:	00f41623          	sh	a5,12(s0)
   118a4:	557d                	li	a0,-1
   118a6:	bf45                	j	11856 <__swsetup_r+0x38>
   118a8:	8b89                	andi	a5,a5,2
   118aa:	eb85                	bnez	a5,118da <__swsetup_r+0xbc>
   118ac:	485c                	lw	a5,20(s0)
   118ae:	c41c                	sw	a5,8(s0)
   118b0:	b755                	j	11854 <__swsetup_r+0x36>
   118b2:	580c                	lw	a1,48(s0)
   118b4:	cd81                	beqz	a1,118cc <__swsetup_r+0xae>
   118b6:	04040713          	addi	a4,s0,64
   118ba:	00e58763          	beq	a1,a4,118c8 <__swsetup_r+0xaa>
   118be:	8526                	mv	a0,s1
   118c0:	968ff0ef          	jal	10a28 <_free_r>
   118c4:	00c41783          	lh	a5,12(s0)
   118c8:	02042823          	sw	zero,48(s0)
   118cc:	4818                	lw	a4,16(s0)
   118ce:	fdb7f793          	andi	a5,a5,-37
   118d2:	00042223          	sw	zero,4(s0)
   118d6:	c018                	sw	a4,0(s0)
   118d8:	bf59                	j	1186e <__swsetup_r+0x50>
   118da:	00042423          	sw	zero,8(s0)
   118de:	bf9d                	j	11854 <__swsetup_r+0x36>
   118e0:	8526                	mv	a0,s1
   118e2:	85a2                	mv	a1,s0
   118e4:	2f49                	jal	12076 <__smakebuf_r>
   118e6:	00c41783          	lh	a5,12(s0)
   118ea:	4818                	lw	a4,16(s0)
   118ec:	0017f693          	andi	a3,a5,1
   118f0:	c685                	beqz	a3,11918 <__swsetup_r+0xfa>
   118f2:	4854                	lw	a3,20(s0)
   118f4:	00042423          	sw	zero,8(s0)
   118f8:	40d006b3          	neg	a3,a3
   118fc:	cc14                	sw	a3,24(s0)
   118fe:	df41                	beqz	a4,11896 <__swsetup_r+0x78>
   11900:	bf91                	j	11854 <__swsetup_r+0x36>
   11902:	853e                	mv	a0,a5
   11904:	aa7fe0ef          	jal	103aa <__sinit>
   11908:	b735                	j	11834 <__swsetup_r+0x16>
   1190a:	0027f693          	andi	a3,a5,2
   1190e:	ea99                	bnez	a3,11924 <__swsetup_r+0x106>
   11910:	4850                	lw	a2,20(s0)
   11912:	c410                	sw	a2,8(s0)
   11914:	d349                	beqz	a4,11896 <__swsetup_r+0x78>
   11916:	bf3d                	j	11854 <__swsetup_r+0x36>
   11918:	0027f693          	andi	a3,a5,2
   1191c:	4601                	li	a2,0
   1191e:	faf5                	bnez	a3,11912 <__swsetup_r+0xf4>
   11920:	4850                	lw	a2,20(s0)
   11922:	bfc5                	j	11912 <__swsetup_r+0xf4>
   11924:	00042423          	sw	zero,8(s0)
   11928:	b7bd                	j	11896 <__swsetup_r+0x78>
   1192a:	4725                	li	a4,9
   1192c:	0407e793          	ori	a5,a5,64
   11930:	c098                	sw	a4,0(s1)
   11932:	00f41623          	sh	a5,12(s0)
   11936:	557d                	li	a0,-1
   11938:	bf39                	j	11856 <__swsetup_r+0x38>

0001193a <memchr>:
   1193a:	00357713          	andi	a4,a0,3
   1193e:	87aa                	mv	a5,a0
   11940:	0ff5f813          	zext.b	a6,a1
   11944:	832a                	mv	t1,a0
   11946:	c70d                	beqz	a4,11970 <memchr+0x36>
   11948:	00c508b3          	add	a7,a0,a2
   1194c:	a039                	j	1195a <memchr+0x20>
   1194e:	0007c683          	lbu	a3,0(a5)
   11952:	07068c63          	beq	a3,a6,119ca <memchr+0x90>
   11956:	cb11                	beqz	a4,1196a <memchr+0x30>
   11958:	87aa                	mv	a5,a0
   1195a:	00178513          	addi	a0,a5,1
   1195e:	00357713          	andi	a4,a0,3
   11962:	ff1796e3          	bne	a5,a7,1194e <memchr+0x14>
   11966:	4501                	li	a0,0
   11968:	8082                	ret
   1196a:	167d                	addi	a2,a2,-1
   1196c:	961a                	add	a2,a2,t1
   1196e:	8e1d                	sub	a2,a2,a5
   11970:	478d                	li	a5,3
   11972:	04c7f163          	bgeu	a5,a2,119b4 <memchr+0x7a>
   11976:	0ff5f593          	zext.b	a1,a1
   1197a:	00859693          	slli	a3,a1,0x8
   1197e:	96ae                	add	a3,a3,a1
   11980:	01069713          	slli	a4,a3,0x10
   11984:	feff0337          	lui	t1,0xfeff0
   11988:	808088b7          	lui	a7,0x80808
   1198c:	85be                	mv	a1,a5
   1198e:	96ba                	add	a3,a3,a4
   11990:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefdc217>
   11994:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807f4398>
   11998:	411c                	lw	a5,0(a0)
   1199a:	8fb5                	xor	a5,a5,a3
   1199c:	00678733          	add	a4,a5,t1
   119a0:	fff7c793          	not	a5,a5
   119a4:	8ff9                	and	a5,a5,a4
   119a6:	0117f7b3          	and	a5,a5,a7
   119aa:	e791                	bnez	a5,119b6 <memchr+0x7c>
   119ac:	1671                	addi	a2,a2,-4
   119ae:	0511                	addi	a0,a0,4
   119b0:	fec5e4e3          	bltu	a1,a2,11998 <memchr+0x5e>
   119b4:	da4d                	beqz	a2,11966 <memchr+0x2c>
   119b6:	962a                	add	a2,a2,a0
   119b8:	a021                	j	119c0 <memchr+0x86>
   119ba:	0505                	addi	a0,a0,1
   119bc:	fac505e3          	beq	a0,a2,11966 <memchr+0x2c>
   119c0:	00054783          	lbu	a5,0(a0)
   119c4:	ff079be3          	bne	a5,a6,119ba <memchr+0x80>
   119c8:	8082                	ret
   119ca:	853e                	mv	a0,a5
   119cc:	8082                	ret

000119ce <_sbrk_r>:
   119ce:	1141                	addi	sp,sp,-16
   119d0:	c422                	sw	s0,8(sp)
   119d2:	c226                	sw	s1,4(sp)
   119d4:	842a                	mv	s0,a0
   119d6:	852e                	mv	a0,a1
   119d8:	c606                	sw	ra,12(sp)
   119da:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   119de:	17d000ef          	jal	1235a <_sbrk>
   119e2:	57fd                	li	a5,-1
   119e4:	00f50763          	beq	a0,a5,119f2 <_sbrk_r+0x24>
   119e8:	40b2                	lw	ra,12(sp)
   119ea:	4422                	lw	s0,8(sp)
   119ec:	4492                	lw	s1,4(sp)
   119ee:	0141                	addi	sp,sp,16
   119f0:	8082                	ret
   119f2:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   119f6:	dbed                	beqz	a5,119e8 <_sbrk_r+0x1a>
   119f8:	40b2                	lw	ra,12(sp)
   119fa:	c01c                	sw	a5,0(s0)
   119fc:	4422                	lw	s0,8(sp)
   119fe:	4492                	lw	s1,4(sp)
   11a00:	0141                	addi	sp,sp,16
   11a02:	8082                	ret

00011a04 <__libc_fini_array>:
   11a04:	1141                	addi	sp,sp,-16
   11a06:	c422                	sw	s0,8(sp)
   11a08:	67cd                	lui	a5,0x13
   11a0a:	644d                	lui	s0,0x13
   11a0c:	47840413          	addi	s0,s0,1144 # 13478 <__sglue>
   11a10:	47478793          	addi	a5,a5,1140 # 13474 <__do_global_dtors_aux_fini_array_entry>
   11a14:	8c1d                	sub	s0,s0,a5
   11a16:	c226                	sw	s1,4(sp)
   11a18:	c606                	sw	ra,12(sp)
   11a1a:	40245493          	srai	s1,s0,0x2
   11a1e:	c881                	beqz	s1,11a2e <__libc_fini_array+0x2a>
   11a20:	1471                	addi	s0,s0,-4
   11a22:	943e                	add	s0,s0,a5
   11a24:	401c                	lw	a5,0(s0)
   11a26:	14fd                	addi	s1,s1,-1
   11a28:	1471                	addi	s0,s0,-4
   11a2a:	9782                	jalr	a5
   11a2c:	fce5                	bnez	s1,11a24 <__libc_fini_array+0x20>
   11a2e:	40b2                	lw	ra,12(sp)
   11a30:	4422                	lw	s0,8(sp)
   11a32:	4492                	lw	s1,4(sp)
   11a34:	0141                	addi	sp,sp,16
   11a36:	8082                	ret

00011a38 <memmove>:
   11a38:	02a5f263          	bgeu	a1,a0,11a5c <memmove+0x24>
   11a3c:	00c58733          	add	a4,a1,a2
   11a40:	00e57e63          	bgeu	a0,a4,11a5c <memmove+0x24>
   11a44:	00c507b3          	add	a5,a0,a2
   11a48:	ca1d                	beqz	a2,11a7e <memmove+0x46>
   11a4a:	fff74683          	lbu	a3,-1(a4)
   11a4e:	17fd                	addi	a5,a5,-1
   11a50:	177d                	addi	a4,a4,-1
   11a52:	00d78023          	sb	a3,0(a5)
   11a56:	fef51ae3          	bne	a0,a5,11a4a <memmove+0x12>
   11a5a:	8082                	ret
   11a5c:	47bd                	li	a5,15
   11a5e:	02c7e163          	bltu	a5,a2,11a80 <memmove+0x48>
   11a62:	87aa                	mv	a5,a0
   11a64:	fff60693          	addi	a3,a2,-1
   11a68:	c25d                	beqz	a2,11b0e <memmove+0xd6>
   11a6a:	0685                	addi	a3,a3,1
   11a6c:	96be                	add	a3,a3,a5
   11a6e:	0005c703          	lbu	a4,0(a1)
   11a72:	0785                	addi	a5,a5,1
   11a74:	0585                	addi	a1,a1,1
   11a76:	fee78fa3          	sb	a4,-1(a5)
   11a7a:	fed79ae3          	bne	a5,a3,11a6e <memmove+0x36>
   11a7e:	8082                	ret
   11a80:	00b567b3          	or	a5,a0,a1
   11a84:	8b8d                	andi	a5,a5,3
   11a86:	88ae                	mv	a7,a1
   11a88:	efbd                	bnez	a5,11b06 <memmove+0xce>
   11a8a:	ff060793          	addi	a5,a2,-16
   11a8e:	ff07f813          	andi	a6,a5,-16
   11a92:	0841                	addi	a6,a6,16
   11a94:	982a                	add	a6,a6,a0
   11a96:	872a                	mv	a4,a0
   11a98:	4194                	lw	a3,0(a1)
   11a9a:	05c1                	addi	a1,a1,16
   11a9c:	0741                	addi	a4,a4,16
   11a9e:	fed72823          	sw	a3,-16(a4)
   11aa2:	ff45a683          	lw	a3,-12(a1)
   11aa6:	fed72a23          	sw	a3,-12(a4)
   11aaa:	ff85a683          	lw	a3,-8(a1)
   11aae:	fed72c23          	sw	a3,-8(a4)
   11ab2:	ffc5a683          	lw	a3,-4(a1)
   11ab6:	fed72e23          	sw	a3,-4(a4)
   11aba:	fd071fe3          	bne	a4,a6,11a98 <memmove+0x60>
   11abe:	9bc1                	andi	a5,a5,-16
   11ac0:	01178733          	add	a4,a5,a7
   11ac4:	01070593          	addi	a1,a4,16
   11ac8:	97aa                	add	a5,a5,a0
   11aca:	00c67813          	andi	a6,a2,12
   11ace:	07c1                	addi	a5,a5,16
   11ad0:	8e2e                	mv	t3,a1
   11ad2:	00f67693          	andi	a3,a2,15
   11ad6:	02080d63          	beqz	a6,11b10 <memmove+0xd8>
   11ada:	16f1                	addi	a3,a3,-4
   11adc:	9af1                	andi	a3,a3,-4
   11ade:	9736                	add	a4,a4,a3
   11ae0:	0751                	addi	a4,a4,20
   11ae2:	41150833          	sub	a6,a0,a7
   11ae6:	0005a303          	lw	t1,0(a1)
   11aea:	010588b3          	add	a7,a1,a6
   11aee:	0591                	addi	a1,a1,4
   11af0:	0068a023          	sw	t1,0(a7)
   11af4:	fee599e3          	bne	a1,a4,11ae6 <memmove+0xae>
   11af8:	00468713          	addi	a4,a3,4
   11afc:	01c705b3          	add	a1,a4,t3
   11b00:	97ba                	add	a5,a5,a4
   11b02:	8a0d                	andi	a2,a2,3
   11b04:	b785                	j	11a64 <memmove+0x2c>
   11b06:	fff60693          	addi	a3,a2,-1
   11b0a:	87aa                	mv	a5,a0
   11b0c:	bfb9                	j	11a6a <memmove+0x32>
   11b0e:	8082                	ret
   11b10:	8636                	mv	a2,a3
   11b12:	bf89                	j	11a64 <memmove+0x2c>

00011b14 <memcpy>:
   11b14:	00a5c7b3          	xor	a5,a1,a0
   11b18:	8b8d                	andi	a5,a5,3
   11b1a:	00c508b3          	add	a7,a0,a2
   11b1e:	e7b1                	bnez	a5,11b6a <memcpy+0x56>
   11b20:	478d                	li	a5,3
   11b22:	04c7f463          	bgeu	a5,a2,11b6a <memcpy+0x56>
   11b26:	00357793          	andi	a5,a0,3
   11b2a:	872a                	mv	a4,a0
   11b2c:	e7dd                	bnez	a5,11bda <memcpy+0xc6>
   11b2e:	ffc8f613          	andi	a2,a7,-4
   11b32:	40e606b3          	sub	a3,a2,a4
   11b36:	02000793          	li	a5,32
   11b3a:	04d7c463          	blt	a5,a3,11b82 <memcpy+0x6e>
   11b3e:	86ae                	mv	a3,a1
   11b40:	87ba                	mv	a5,a4
   11b42:	02c77163          	bgeu	a4,a2,11b64 <memcpy+0x50>
   11b46:	0006a803          	lw	a6,0(a3)
   11b4a:	0791                	addi	a5,a5,4
   11b4c:	0691                	addi	a3,a3,4
   11b4e:	ff07ae23          	sw	a6,-4(a5)
   11b52:	fec7eae3          	bltu	a5,a2,11b46 <memcpy+0x32>
   11b56:	167d                	addi	a2,a2,-1
   11b58:	8e19                	sub	a2,a2,a4
   11b5a:	9a71                	andi	a2,a2,-4
   11b5c:	0591                	addi	a1,a1,4
   11b5e:	0711                	addi	a4,a4,4
   11b60:	95b2                	add	a1,a1,a2
   11b62:	9732                	add	a4,a4,a2
   11b64:	01176663          	bltu	a4,a7,11b70 <memcpy+0x5c>
   11b68:	8082                	ret
   11b6a:	872a                	mv	a4,a0
   11b6c:	ff157ee3          	bgeu	a0,a7,11b68 <memcpy+0x54>
   11b70:	0005c783          	lbu	a5,0(a1)
   11b74:	0705                	addi	a4,a4,1
   11b76:	0585                	addi	a1,a1,1
   11b78:	fef70fa3          	sb	a5,-1(a4)
   11b7c:	fee89ae3          	bne	a7,a4,11b70 <memcpy+0x5c>
   11b80:	8082                	ret
   11b82:	5194                	lw	a3,32(a1)
   11b84:	0005a383          	lw	t2,0(a1)
   11b88:	0045a283          	lw	t0,4(a1)
   11b8c:	0085af83          	lw	t6,8(a1)
   11b90:	00c5af03          	lw	t5,12(a1)
   11b94:	0105ae83          	lw	t4,16(a1)
   11b98:	0145ae03          	lw	t3,20(a1)
   11b9c:	0185a303          	lw	t1,24(a1)
   11ba0:	01c5a803          	lw	a6,28(a1)
   11ba4:	02470713          	addi	a4,a4,36
   11ba8:	fed72e23          	sw	a3,-4(a4)
   11bac:	fc772e23          	sw	t2,-36(a4)
   11bb0:	40e606b3          	sub	a3,a2,a4
   11bb4:	fe572023          	sw	t0,-32(a4)
   11bb8:	fff72223          	sw	t6,-28(a4)
   11bbc:	ffe72423          	sw	t5,-24(a4)
   11bc0:	ffd72623          	sw	t4,-20(a4)
   11bc4:	ffc72823          	sw	t3,-16(a4)
   11bc8:	fe672a23          	sw	t1,-12(a4)
   11bcc:	ff072c23          	sw	a6,-8(a4)
   11bd0:	02458593          	addi	a1,a1,36
   11bd4:	fad7c7e3          	blt	a5,a3,11b82 <memcpy+0x6e>
   11bd8:	b79d                	j	11b3e <memcpy+0x2a>
   11bda:	0005c683          	lbu	a3,0(a1)
   11bde:	0705                	addi	a4,a4,1
   11be0:	00377793          	andi	a5,a4,3
   11be4:	fed70fa3          	sb	a3,-1(a4)
   11be8:	0585                	addi	a1,a1,1
   11bea:	d3b1                	beqz	a5,11b2e <memcpy+0x1a>
   11bec:	0005c683          	lbu	a3,0(a1)
   11bf0:	0705                	addi	a4,a4,1
   11bf2:	00377793          	andi	a5,a4,3
   11bf6:	fed70fa3          	sb	a3,-1(a4)
   11bfa:	0585                	addi	a1,a1,1
   11bfc:	fff9                	bnez	a5,11bda <memcpy+0xc6>
   11bfe:	bf05                	j	11b2e <memcpy+0x1a>

00011c00 <__register_exitproc>:
   11c00:	d501a783          	lw	a5,-688(gp) # 139c8 <__atexit>
   11c04:	c3a1                	beqz	a5,11c44 <__register_exitproc+0x44>
   11c06:	43d8                	lw	a4,4(a5)
   11c08:	487d                	li	a6,31
   11c0a:	04e84f63          	blt	a6,a4,11c68 <__register_exitproc+0x68>
   11c0e:	00271813          	slli	a6,a4,0x2
   11c12:	c11d                	beqz	a0,11c38 <__register_exitproc+0x38>
   11c14:	01078333          	add	t1,a5,a6
   11c18:	08c32423          	sw	a2,136(t1)
   11c1c:	1887a883          	lw	a7,392(a5)
   11c20:	4605                	li	a2,1
   11c22:	00e61633          	sll	a2,a2,a4
   11c26:	00c8e8b3          	or	a7,a7,a2
   11c2a:	1917a423          	sw	a7,392(a5)
   11c2e:	10d32423          	sw	a3,264(t1)
   11c32:	4689                	li	a3,2
   11c34:	00d50f63          	beq	a0,a3,11c52 <__register_exitproc+0x52>
   11c38:	0705                	addi	a4,a4,1
   11c3a:	c3d8                	sw	a4,4(a5)
   11c3c:	97c2                	add	a5,a5,a6
   11c3e:	c78c                	sw	a1,8(a5)
   11c40:	4501                	li	a0,0
   11c42:	8082                	ret
   11c44:	ee018813          	addi	a6,gp,-288 # 13b58 <__atexit0>
   11c48:	d501a823          	sw	a6,-688(gp) # 139c8 <__atexit>
   11c4c:	ee018793          	addi	a5,gp,-288 # 13b58 <__atexit0>
   11c50:	bf5d                	j	11c06 <__register_exitproc+0x6>
   11c52:	18c7a683          	lw	a3,396(a5)
   11c56:	0705                	addi	a4,a4,1
   11c58:	c3d8                	sw	a4,4(a5)
   11c5a:	8ed1                	or	a3,a3,a2
   11c5c:	18d7a623          	sw	a3,396(a5)
   11c60:	97c2                	add	a5,a5,a6
   11c62:	c78c                	sw	a1,8(a5)
   11c64:	4501                	li	a0,0
   11c66:	8082                	ret
   11c68:	557d                	li	a0,-1
   11c6a:	8082                	ret

00011c6c <_realloc_r>:
   11c6c:	7179                	addi	sp,sp,-48
   11c6e:	d226                	sw	s1,36(sp)
   11c70:	d606                	sw	ra,44(sp)
   11c72:	84b2                	mv	s1,a2
   11c74:	14058d63          	beqz	a1,11dce <_realloc_r+0x162>
   11c78:	d422                	sw	s0,40(sp)
   11c7a:	d04a                	sw	s2,32(sp)
   11c7c:	842e                	mv	s0,a1
   11c7e:	ce4e                	sw	s3,28(sp)
   11c80:	ca56                	sw	s5,20(sp)
   11c82:	cc52                	sw	s4,24(sp)
   11c84:	892a                	mv	s2,a0
   11c86:	d8aff0ef          	jal	11210 <__malloc_lock>
   11c8a:	ffc42703          	lw	a4,-4(s0)
   11c8e:	00b48793          	addi	a5,s1,11
   11c92:	46d9                	li	a3,22
   11c94:	ffc77993          	andi	s3,a4,-4
   11c98:	ff840a93          	addi	s5,s0,-8
   11c9c:	0af6ff63          	bgeu	a3,a5,11d5a <_realloc_r+0xee>
   11ca0:	ff87fa13          	andi	s4,a5,-8
   11ca4:	0a07ce63          	bltz	a5,11d60 <_realloc_r+0xf4>
   11ca8:	0a9a6c63          	bltu	s4,s1,11d60 <_realloc_r+0xf4>
   11cac:	0d49d563          	bge	s3,s4,11d76 <_realloc_r+0x10a>
   11cb0:	67cd                	lui	a5,0x13
   11cb2:	c462                	sw	s8,8(sp)
   11cb4:	5a878c13          	addi	s8,a5,1448 # 135a8 <__malloc_av_>
   11cb8:	008c2603          	lw	a2,8(s8)
   11cbc:	013a86b3          	add	a3,s5,s3
   11cc0:	42dc                	lw	a5,4(a3)
   11cc2:	12d60e63          	beq	a2,a3,11dfe <_realloc_r+0x192>
   11cc6:	ffe7f613          	andi	a2,a5,-2
   11cca:	9636                	add	a2,a2,a3
   11ccc:	4250                	lw	a2,4(a2)
   11cce:	8a05                	andi	a2,a2,1
   11cd0:	e27d                	bnez	a2,11db6 <_realloc_r+0x14a>
   11cd2:	9bf1                	andi	a5,a5,-4
   11cd4:	00f98633          	add	a2,s3,a5
   11cd8:	09465963          	bge	a2,s4,11d6a <_realloc_r+0xfe>
   11cdc:	8b05                	andi	a4,a4,1
   11cde:	e70d                	bnez	a4,11d08 <_realloc_r+0x9c>
   11ce0:	c65e                	sw	s7,12(sp)
   11ce2:	ff842b83          	lw	s7,-8(s0)
   11ce6:	c85a                	sw	s6,16(sp)
   11ce8:	417a8bb3          	sub	s7,s5,s7
   11cec:	004ba703          	lw	a4,4(s7)
   11cf0:	9b71                	andi	a4,a4,-4
   11cf2:	97ba                	add	a5,a5,a4
   11cf4:	01378b33          	add	s6,a5,s3
   11cf8:	234b5663          	bge	s6,s4,11f24 <_realloc_r+0x2b8>
   11cfc:	00e98b33          	add	s6,s3,a4
   11d00:	1d4b5463          	bge	s6,s4,11ec8 <_realloc_r+0x25c>
   11d04:	4b42                	lw	s6,16(sp)
   11d06:	4bb2                	lw	s7,12(sp)
   11d08:	85a6                	mv	a1,s1
   11d0a:	854a                	mv	a0,s2
   11d0c:	f39fe0ef          	jal	10c44 <_malloc_r>
   11d10:	84aa                	mv	s1,a0
   11d12:	2c050463          	beqz	a0,11fda <_realloc_r+0x36e>
   11d16:	ffc42783          	lw	a5,-4(s0)
   11d1a:	ff850713          	addi	a4,a0,-8
   11d1e:	9bf9                	andi	a5,a5,-2
   11d20:	97d6                	add	a5,a5,s5
   11d22:	18e78d63          	beq	a5,a4,11ebc <_realloc_r+0x250>
   11d26:	ffc98613          	addi	a2,s3,-4
   11d2a:	02400793          	li	a5,36
   11d2e:	1ec7e863          	bltu	a5,a2,11f1e <_realloc_r+0x2b2>
   11d32:	474d                	li	a4,19
   11d34:	16c76863          	bltu	a4,a2,11ea4 <_realloc_r+0x238>
   11d38:	87aa                	mv	a5,a0
   11d3a:	8722                	mv	a4,s0
   11d3c:	4314                	lw	a3,0(a4)
   11d3e:	c394                	sw	a3,0(a5)
   11d40:	4354                	lw	a3,4(a4)
   11d42:	c3d4                	sw	a3,4(a5)
   11d44:	4718                	lw	a4,8(a4)
   11d46:	c798                	sw	a4,8(a5)
   11d48:	85a2                	mv	a1,s0
   11d4a:	854a                	mv	a0,s2
   11d4c:	cddfe0ef          	jal	10a28 <_free_r>
   11d50:	854a                	mv	a0,s2
   11d52:	cc0ff0ef          	jal	11212 <__malloc_unlock>
   11d56:	4c22                	lw	s8,8(sp)
   11d58:	a0a9                	j	11da2 <_realloc_r+0x136>
   11d5a:	4a41                	li	s4,16
   11d5c:	f49a78e3          	bgeu	s4,s1,11cac <_realloc_r+0x40>
   11d60:	47b1                	li	a5,12
   11d62:	00f92023          	sw	a5,0(s2)
   11d66:	4481                	li	s1,0
   11d68:	a82d                	j	11da2 <_realloc_r+0x136>
   11d6a:	46dc                	lw	a5,12(a3)
   11d6c:	4698                	lw	a4,8(a3)
   11d6e:	4c22                	lw	s8,8(sp)
   11d70:	89b2                	mv	s3,a2
   11d72:	c75c                	sw	a5,12(a4)
   11d74:	c798                	sw	a4,8(a5)
   11d76:	004aa783          	lw	a5,4(s5)
   11d7a:	414986b3          	sub	a3,s3,s4
   11d7e:	463d                	li	a2,15
   11d80:	8b85                	andi	a5,a5,1
   11d82:	013a8733          	add	a4,s5,s3
   11d86:	04d66a63          	bltu	a2,a3,11dda <_realloc_r+0x16e>
   11d8a:	0137e7b3          	or	a5,a5,s3
   11d8e:	00faa223          	sw	a5,4(s5)
   11d92:	435c                	lw	a5,4(a4)
   11d94:	0017e793          	ori	a5,a5,1
   11d98:	c35c                	sw	a5,4(a4)
   11d9a:	854a                	mv	a0,s2
   11d9c:	c76ff0ef          	jal	11212 <__malloc_unlock>
   11da0:	84a2                	mv	s1,s0
   11da2:	5422                	lw	s0,40(sp)
   11da4:	50b2                	lw	ra,44(sp)
   11da6:	5902                	lw	s2,32(sp)
   11da8:	49f2                	lw	s3,28(sp)
   11daa:	4a62                	lw	s4,24(sp)
   11dac:	4ad2                	lw	s5,20(sp)
   11dae:	8526                	mv	a0,s1
   11db0:	5492                	lw	s1,36(sp)
   11db2:	6145                	addi	sp,sp,48
   11db4:	8082                	ret
   11db6:	8b05                	andi	a4,a4,1
   11db8:	fb21                	bnez	a4,11d08 <_realloc_r+0x9c>
   11dba:	c65e                	sw	s7,12(sp)
   11dbc:	ff842b83          	lw	s7,-8(s0)
   11dc0:	c85a                	sw	s6,16(sp)
   11dc2:	417a8bb3          	sub	s7,s5,s7
   11dc6:	004ba703          	lw	a4,4(s7)
   11dca:	9b71                	andi	a4,a4,-4
   11dcc:	bf05                	j	11cfc <_realloc_r+0x90>
   11dce:	50b2                	lw	ra,44(sp)
   11dd0:	5492                	lw	s1,36(sp)
   11dd2:	85b2                	mv	a1,a2
   11dd4:	6145                	addi	sp,sp,48
   11dd6:	e6ffe06f          	j	10c44 <_malloc_r>
   11dda:	0147e7b3          	or	a5,a5,s4
   11dde:	00faa223          	sw	a5,4(s5)
   11de2:	014a85b3          	add	a1,s5,s4
   11de6:	0016e693          	ori	a3,a3,1
   11dea:	c1d4                	sw	a3,4(a1)
   11dec:	435c                	lw	a5,4(a4)
   11dee:	05a1                	addi	a1,a1,8
   11df0:	854a                	mv	a0,s2
   11df2:	0017e793          	ori	a5,a5,1
   11df6:	c35c                	sw	a5,4(a4)
   11df8:	c31fe0ef          	jal	10a28 <_free_r>
   11dfc:	bf79                	j	11d9a <_realloc_r+0x12e>
   11dfe:	9bf1                	andi	a5,a5,-4
   11e00:	013786b3          	add	a3,a5,s3
   11e04:	010a0613          	addi	a2,s4,16
   11e08:	18c6d763          	bge	a3,a2,11f96 <_realloc_r+0x32a>
   11e0c:	8b05                	andi	a4,a4,1
   11e0e:	ee071de3          	bnez	a4,11d08 <_realloc_r+0x9c>
   11e12:	c65e                	sw	s7,12(sp)
   11e14:	ff842b83          	lw	s7,-8(s0)
   11e18:	c85a                	sw	s6,16(sp)
   11e1a:	417a8bb3          	sub	s7,s5,s7
   11e1e:	004ba703          	lw	a4,4(s7)
   11e22:	9b71                	andi	a4,a4,-4
   11e24:	97ba                	add	a5,a5,a4
   11e26:	01378b33          	add	s6,a5,s3
   11e2a:	eccb49e3          	blt	s6,a2,11cfc <_realloc_r+0x90>
   11e2e:	00cba783          	lw	a5,12(s7)
   11e32:	008ba703          	lw	a4,8(s7)
   11e36:	ffc98613          	addi	a2,s3,-4
   11e3a:	02400693          	li	a3,36
   11e3e:	c75c                	sw	a5,12(a4)
   11e40:	c798                	sw	a4,8(a5)
   11e42:	008b8493          	addi	s1,s7,8
   11e46:	1cc6e763          	bltu	a3,a2,12014 <_realloc_r+0x3a8>
   11e4a:	474d                	li	a4,19
   11e4c:	87a6                	mv	a5,s1
   11e4e:	00c77e63          	bgeu	a4,a2,11e6a <_realloc_r+0x1fe>
   11e52:	4018                	lw	a4,0(s0)
   11e54:	47ed                	li	a5,27
   11e56:	00eba423          	sw	a4,8(s7)
   11e5a:	4058                	lw	a4,4(s0)
   11e5c:	00eba623          	sw	a4,12(s7)
   11e60:	1cc7ea63          	bltu	a5,a2,12034 <_realloc_r+0x3c8>
   11e64:	0421                	addi	s0,s0,8
   11e66:	010b8793          	addi	a5,s7,16
   11e6a:	4018                	lw	a4,0(s0)
   11e6c:	c398                	sw	a4,0(a5)
   11e6e:	4058                	lw	a4,4(s0)
   11e70:	c3d8                	sw	a4,4(a5)
   11e72:	4418                	lw	a4,8(s0)
   11e74:	c798                	sw	a4,8(a5)
   11e76:	014b87b3          	add	a5,s7,s4
   11e7a:	414b0733          	sub	a4,s6,s4
   11e7e:	00fc2423          	sw	a5,8(s8)
   11e82:	00176713          	ori	a4,a4,1
   11e86:	c3d8                	sw	a4,4(a5)
   11e88:	004ba783          	lw	a5,4(s7)
   11e8c:	854a                	mv	a0,s2
   11e8e:	8b85                	andi	a5,a5,1
   11e90:	0147e7b3          	or	a5,a5,s4
   11e94:	00fba223          	sw	a5,4(s7)
   11e98:	b7aff0ef          	jal	11212 <__malloc_unlock>
   11e9c:	4b42                	lw	s6,16(sp)
   11e9e:	4bb2                	lw	s7,12(sp)
   11ea0:	4c22                	lw	s8,8(sp)
   11ea2:	b701                	j	11da2 <_realloc_r+0x136>
   11ea4:	4014                	lw	a3,0(s0)
   11ea6:	476d                	li	a4,27
   11ea8:	c114                	sw	a3,0(a0)
   11eaa:	4054                	lw	a3,4(s0)
   11eac:	c154                	sw	a3,4(a0)
   11eae:	0cc76963          	bltu	a4,a2,11f80 <_realloc_r+0x314>
   11eb2:	00840713          	addi	a4,s0,8
   11eb6:	00850793          	addi	a5,a0,8
   11eba:	b549                	j	11d3c <_realloc_r+0xd0>
   11ebc:	ffc52783          	lw	a5,-4(a0)
   11ec0:	4c22                	lw	s8,8(sp)
   11ec2:	9bf1                	andi	a5,a5,-4
   11ec4:	99be                	add	s3,s3,a5
   11ec6:	bd45                	j	11d76 <_realloc_r+0x10a>
   11ec8:	00cba783          	lw	a5,12(s7)
   11ecc:	008ba683          	lw	a3,8(s7)
   11ed0:	ffc98613          	addi	a2,s3,-4
   11ed4:	02400593          	li	a1,36
   11ed8:	c6dc                	sw	a5,12(a3)
   11eda:	c794                	sw	a3,8(a5)
   11edc:	008b8493          	addi	s1,s7,8
   11ee0:	08c5eb63          	bltu	a1,a2,11f76 <_realloc_r+0x30a>
   11ee4:	46cd                	li	a3,19
   11ee6:	87a6                	mv	a5,s1
   11ee8:	00c6fe63          	bgeu	a3,a2,11f04 <_realloc_r+0x298>
   11eec:	4018                	lw	a4,0(s0)
   11eee:	47ed                	li	a5,27
   11ef0:	00eba423          	sw	a4,8(s7)
   11ef4:	4058                	lw	a4,4(s0)
   11ef6:	00eba623          	sw	a4,12(s7)
   11efa:	0cc7e463          	bltu	a5,a2,11fc2 <_realloc_r+0x356>
   11efe:	0421                	addi	s0,s0,8
   11f00:	010b8793          	addi	a5,s7,16
   11f04:	4014                	lw	a3,0(s0)
   11f06:	c394                	sw	a3,0(a5)
   11f08:	4054                	lw	a3,4(s0)
   11f0a:	c3d4                	sw	a3,4(a5)
   11f0c:	4414                	lw	a3,8(s0)
   11f0e:	c794                	sw	a3,8(a5)
   11f10:	89da                	mv	s3,s6
   11f12:	8ade                	mv	s5,s7
   11f14:	4b42                	lw	s6,16(sp)
   11f16:	4bb2                	lw	s7,12(sp)
   11f18:	4c22                	lw	s8,8(sp)
   11f1a:	8426                	mv	s0,s1
   11f1c:	bda9                	j	11d76 <_realloc_r+0x10a>
   11f1e:	85a2                	mv	a1,s0
   11f20:	3e21                	jal	11a38 <memmove>
   11f22:	b51d                	j	11d48 <_realloc_r+0xdc>
   11f24:	46dc                	lw	a5,12(a3)
   11f26:	4698                	lw	a4,8(a3)
   11f28:	ffc98613          	addi	a2,s3,-4
   11f2c:	02400693          	li	a3,36
   11f30:	c75c                	sw	a5,12(a4)
   11f32:	c798                	sw	a4,8(a5)
   11f34:	008ba703          	lw	a4,8(s7)
   11f38:	00cba783          	lw	a5,12(s7)
   11f3c:	008b8493          	addi	s1,s7,8
   11f40:	c75c                	sw	a5,12(a4)
   11f42:	c798                	sw	a4,8(a5)
   11f44:	02c6e963          	bltu	a3,a2,11f76 <_realloc_r+0x30a>
   11f48:	474d                	li	a4,19
   11f4a:	87a6                	mv	a5,s1
   11f4c:	00c77e63          	bgeu	a4,a2,11f68 <_realloc_r+0x2fc>
   11f50:	4018                	lw	a4,0(s0)
   11f52:	47ed                	li	a5,27
   11f54:	00eba423          	sw	a4,8(s7)
   11f58:	4058                	lw	a4,4(s0)
   11f5a:	00eba623          	sw	a4,12(s7)
   11f5e:	08c7ed63          	bltu	a5,a2,11ff8 <_realloc_r+0x38c>
   11f62:	0421                	addi	s0,s0,8
   11f64:	010b8793          	addi	a5,s7,16
   11f68:	4018                	lw	a4,0(s0)
   11f6a:	c398                	sw	a4,0(a5)
   11f6c:	4058                	lw	a4,4(s0)
   11f6e:	c3d8                	sw	a4,4(a5)
   11f70:	4418                	lw	a4,8(s0)
   11f72:	c798                	sw	a4,8(a5)
   11f74:	bf71                	j	11f10 <_realloc_r+0x2a4>
   11f76:	85a2                	mv	a1,s0
   11f78:	8526                	mv	a0,s1
   11f7a:	abfff0ef          	jal	11a38 <memmove>
   11f7e:	bf49                	j	11f10 <_realloc_r+0x2a4>
   11f80:	4418                	lw	a4,8(s0)
   11f82:	c518                	sw	a4,8(a0)
   11f84:	4458                	lw	a4,12(s0)
   11f86:	c558                	sw	a4,12(a0)
   11f88:	04f60f63          	beq	a2,a5,11fe6 <_realloc_r+0x37a>
   11f8c:	01040713          	addi	a4,s0,16
   11f90:	01050793          	addi	a5,a0,16
   11f94:	b365                	j	11d3c <_realloc_r+0xd0>
   11f96:	9ad2                	add	s5,s5,s4
   11f98:	414686b3          	sub	a3,a3,s4
   11f9c:	015c2423          	sw	s5,8(s8)
   11fa0:	0016e793          	ori	a5,a3,1
   11fa4:	00faa223          	sw	a5,4(s5)
   11fa8:	ffc42783          	lw	a5,-4(s0)
   11fac:	854a                	mv	a0,s2
   11fae:	84a2                	mv	s1,s0
   11fb0:	8b85                	andi	a5,a5,1
   11fb2:	0147e7b3          	or	a5,a5,s4
   11fb6:	fef42e23          	sw	a5,-4(s0)
   11fba:	a58ff0ef          	jal	11212 <__malloc_unlock>
   11fbe:	4c22                	lw	s8,8(sp)
   11fc0:	b3cd                	j	11da2 <_realloc_r+0x136>
   11fc2:	441c                	lw	a5,8(s0)
   11fc4:	00fba823          	sw	a5,16(s7)
   11fc8:	445c                	lw	a5,12(s0)
   11fca:	00fbaa23          	sw	a5,20(s7)
   11fce:	04b60863          	beq	a2,a1,1201e <_realloc_r+0x3b2>
   11fd2:	0441                	addi	s0,s0,16
   11fd4:	018b8793          	addi	a5,s7,24
   11fd8:	b735                	j	11f04 <_realloc_r+0x298>
   11fda:	854a                	mv	a0,s2
   11fdc:	a36ff0ef          	jal	11212 <__malloc_unlock>
   11fe0:	4481                	li	s1,0
   11fe2:	4c22                	lw	s8,8(sp)
   11fe4:	bb7d                	j	11da2 <_realloc_r+0x136>
   11fe6:	4814                	lw	a3,16(s0)
   11fe8:	01840713          	addi	a4,s0,24
   11fec:	01850793          	addi	a5,a0,24
   11ff0:	c914                	sw	a3,16(a0)
   11ff2:	4854                	lw	a3,20(s0)
   11ff4:	c954                	sw	a3,20(a0)
   11ff6:	b399                	j	11d3c <_realloc_r+0xd0>
   11ff8:	4418                	lw	a4,8(s0)
   11ffa:	02400793          	li	a5,36
   11ffe:	00eba823          	sw	a4,16(s7)
   12002:	4458                	lw	a4,12(s0)
   12004:	00ebaa23          	sw	a4,20(s7)
   12008:	04f60263          	beq	a2,a5,1204c <_realloc_r+0x3e0>
   1200c:	0441                	addi	s0,s0,16
   1200e:	018b8793          	addi	a5,s7,24
   12012:	bf99                	j	11f68 <_realloc_r+0x2fc>
   12014:	85a2                	mv	a1,s0
   12016:	8526                	mv	a0,s1
   12018:	a21ff0ef          	jal	11a38 <memmove>
   1201c:	bda9                	j	11e76 <_realloc_r+0x20a>
   1201e:	4818                	lw	a4,16(s0)
   12020:	020b8793          	addi	a5,s7,32
   12024:	0461                	addi	s0,s0,24
   12026:	00ebac23          	sw	a4,24(s7)
   1202a:	ffc42703          	lw	a4,-4(s0)
   1202e:	00ebae23          	sw	a4,28(s7)
   12032:	bdc9                	j	11f04 <_realloc_r+0x298>
   12034:	441c                	lw	a5,8(s0)
   12036:	00fba823          	sw	a5,16(s7)
   1203a:	445c                	lw	a5,12(s0)
   1203c:	00fbaa23          	sw	a5,20(s7)
   12040:	02d60163          	beq	a2,a3,12062 <_realloc_r+0x3f6>
   12044:	0441                	addi	s0,s0,16
   12046:	018b8793          	addi	a5,s7,24
   1204a:	b505                	j	11e6a <_realloc_r+0x1fe>
   1204c:	4818                	lw	a4,16(s0)
   1204e:	020b8793          	addi	a5,s7,32
   12052:	0461                	addi	s0,s0,24
   12054:	00ebac23          	sw	a4,24(s7)
   12058:	ffc42703          	lw	a4,-4(s0)
   1205c:	00ebae23          	sw	a4,28(s7)
   12060:	b721                	j	11f68 <_realloc_r+0x2fc>
   12062:	4818                	lw	a4,16(s0)
   12064:	020b8793          	addi	a5,s7,32
   12068:	00ebac23          	sw	a4,24(s7)
   1206c:	4858                	lw	a4,20(s0)
   1206e:	0461                	addi	s0,s0,24
   12070:	00ebae23          	sw	a4,28(s7)
   12074:	bbdd                	j	11e6a <_realloc_r+0x1fe>

00012076 <__smakebuf_r>:
   12076:	00c59783          	lh	a5,12(a1)
   1207a:	7159                	addi	sp,sp,-112
   1207c:	d4a2                	sw	s0,104(sp)
   1207e:	d686                	sw	ra,108(sp)
   12080:	0027f713          	andi	a4,a5,2
   12084:	842e                	mv	s0,a1
   12086:	cb19                	beqz	a4,1209c <__smakebuf_r+0x26>
   12088:	04358793          	addi	a5,a1,67
   1208c:	4705                	li	a4,1
   1208e:	c19c                	sw	a5,0(a1)
   12090:	c99c                	sw	a5,16(a1)
   12092:	c9d8                	sw	a4,20(a1)
   12094:	50b6                	lw	ra,108(sp)
   12096:	5426                	lw	s0,104(sp)
   12098:	6165                	addi	sp,sp,112
   1209a:	8082                	ret
   1209c:	00e59583          	lh	a1,14(a1)
   120a0:	d0ca                	sw	s2,96(sp)
   120a2:	d2a6                	sw	s1,100(sp)
   120a4:	892a                	mv	s2,a0
   120a6:	0405cd63          	bltz	a1,12100 <__smakebuf_r+0x8a>
   120aa:	0030                	addi	a2,sp,8
   120ac:	22a9                	jal	121f6 <_fstat_r>
   120ae:	04054763          	bltz	a0,120fc <__smakebuf_r+0x86>
   120b2:	40000593          	li	a1,1024
   120b6:	854a                	mv	a0,s2
   120b8:	44b2                	lw	s1,12(sp)
   120ba:	b8bfe0ef          	jal	10c44 <_malloc_r>
   120be:	00c41783          	lh	a5,12(s0)
   120c2:	cd3d                	beqz	a0,12140 <__smakebuf_r+0xca>
   120c4:	673d                	lui	a4,0xf
   120c6:	0807e793          	ori	a5,a5,128
   120ca:	40000693          	li	a3,1024
   120ce:	8cf9                	and	s1,s1,a4
   120d0:	00f41623          	sh	a5,12(s0)
   120d4:	c008                	sw	a0,0(s0)
   120d6:	c808                	sw	a0,16(s0)
   120d8:	c854                	sw	a3,20(s0)
   120da:	6709                	lui	a4,0x2
   120dc:	08e49663          	bne	s1,a4,12168 <__smakebuf_r+0xf2>
   120e0:	00e41583          	lh	a1,14(s0)
   120e4:	854a                	mv	a0,s2
   120e6:	22a1                	jal	1222e <_isatty_r>
   120e8:	6705                	lui	a4,0x1
   120ea:	00c41783          	lh	a5,12(s0)
   120ee:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   120f2:	cd15                	beqz	a0,1212e <__smakebuf_r+0xb8>
   120f4:	9bf1                	andi	a5,a5,-4
   120f6:	0017e793          	ori	a5,a5,1
   120fa:	a815                	j	1212e <__smakebuf_r+0xb8>
   120fc:	00c41783          	lh	a5,12(s0)
   12100:	0807f493          	andi	s1,a5,128
   12104:	0014b493          	seqz	s1,s1
   12108:	409004b3          	neg	s1,s1
   1210c:	3c04f493          	andi	s1,s1,960
   12110:	04048493          	addi	s1,s1,64
   12114:	854a                	mv	a0,s2
   12116:	85a6                	mv	a1,s1
   12118:	b2dfe0ef          	jal	10c44 <_malloc_r>
   1211c:	00c41783          	lh	a5,12(s0)
   12120:	c105                	beqz	a0,12140 <__smakebuf_r+0xca>
   12122:	0807e793          	ori	a5,a5,128
   12126:	c008                	sw	a0,0(s0)
   12128:	c808                	sw	a0,16(s0)
   1212a:	c844                	sw	s1,20(s0)
   1212c:	4701                	li	a4,0
   1212e:	8fd9                	or	a5,a5,a4
   12130:	50b6                	lw	ra,108(sp)
   12132:	00f41623          	sh	a5,12(s0)
   12136:	5426                	lw	s0,104(sp)
   12138:	5496                	lw	s1,100(sp)
   1213a:	5906                	lw	s2,96(sp)
   1213c:	6165                	addi	sp,sp,112
   1213e:	8082                	ret
   12140:	2007f713          	andi	a4,a5,512
   12144:	ef19                	bnez	a4,12162 <__smakebuf_r+0xec>
   12146:	9bf1                	andi	a5,a5,-4
   12148:	04340713          	addi	a4,s0,67
   1214c:	0027e793          	ori	a5,a5,2
   12150:	4685                	li	a3,1
   12152:	5496                	lw	s1,100(sp)
   12154:	5906                	lw	s2,96(sp)
   12156:	00f41623          	sh	a5,12(s0)
   1215a:	c018                	sw	a4,0(s0)
   1215c:	c818                	sw	a4,16(s0)
   1215e:	c854                	sw	a3,20(s0)
   12160:	bf15                	j	12094 <__smakebuf_r+0x1e>
   12162:	5496                	lw	s1,100(sp)
   12164:	5906                	lw	s2,96(sp)
   12166:	b73d                	j	12094 <__smakebuf_r+0x1e>
   12168:	6705                	lui	a4,0x1
   1216a:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   1216e:	b7c1                	j	1212e <__smakebuf_r+0xb8>

00012170 <__swhatbuf_r>:
   12170:	7159                	addi	sp,sp,-112
   12172:	d4a2                	sw	s0,104(sp)
   12174:	842e                	mv	s0,a1
   12176:	00e59583          	lh	a1,14(a1)
   1217a:	d2a6                	sw	s1,100(sp)
   1217c:	d0ca                	sw	s2,96(sp)
   1217e:	d686                	sw	ra,108(sp)
   12180:	84b2                	mv	s1,a2
   12182:	8936                	mv	s2,a3
   12184:	0205cb63          	bltz	a1,121ba <__swhatbuf_r+0x4a>
   12188:	0030                	addi	a2,sp,8
   1218a:	20b5                	jal	121f6 <_fstat_r>
   1218c:	02054763          	bltz	a0,121ba <__swhatbuf_r+0x4a>
   12190:	47b2                	lw	a5,12(sp)
   12192:	66bd                	lui	a3,0xf
   12194:	7779                	lui	a4,0xffffe
   12196:	8ff5                	and	a5,a5,a3
   12198:	97ba                	add	a5,a5,a4
   1219a:	50b6                	lw	ra,108(sp)
   1219c:	5426                	lw	s0,104(sp)
   1219e:	0017b793          	seqz	a5,a5
   121a2:	00f92023          	sw	a5,0(s2)
   121a6:	40000713          	li	a4,1024
   121aa:	c098                	sw	a4,0(s1)
   121ac:	6505                	lui	a0,0x1
   121ae:	5496                	lw	s1,100(sp)
   121b0:	5906                	lw	s2,96(sp)
   121b2:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8b4>
   121b6:	6165                	addi	sp,sp,112
   121b8:	8082                	ret
   121ba:	00c45783          	lhu	a5,12(s0)
   121be:	0807f793          	andi	a5,a5,128
   121c2:	cf91                	beqz	a5,121de <__swhatbuf_r+0x6e>
   121c4:	50b6                	lw	ra,108(sp)
   121c6:	5426                	lw	s0,104(sp)
   121c8:	4781                	li	a5,0
   121ca:	00f92023          	sw	a5,0(s2)
   121ce:	04000713          	li	a4,64
   121d2:	c098                	sw	a4,0(s1)
   121d4:	5906                	lw	s2,96(sp)
   121d6:	5496                	lw	s1,100(sp)
   121d8:	4501                	li	a0,0
   121da:	6165                	addi	sp,sp,112
   121dc:	8082                	ret
   121de:	50b6                	lw	ra,108(sp)
   121e0:	5426                	lw	s0,104(sp)
   121e2:	00f92023          	sw	a5,0(s2)
   121e6:	40000713          	li	a4,1024
   121ea:	c098                	sw	a4,0(s1)
   121ec:	5906                	lw	s2,96(sp)
   121ee:	5496                	lw	s1,100(sp)
   121f0:	4501                	li	a0,0
   121f2:	6165                	addi	sp,sp,112
   121f4:	8082                	ret

000121f6 <_fstat_r>:
   121f6:	1141                	addi	sp,sp,-16
   121f8:	872e                	mv	a4,a1
   121fa:	c422                	sw	s0,8(sp)
   121fc:	c226                	sw	s1,4(sp)
   121fe:	85b2                	mv	a1,a2
   12200:	842a                	mv	s0,a0
   12202:	853a                	mv	a0,a4
   12204:	c606                	sw	ra,12(sp)
   12206:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   1220a:	204d                	jal	122ac <_fstat>
   1220c:	57fd                	li	a5,-1
   1220e:	00f50763          	beq	a0,a5,1221c <_fstat_r+0x26>
   12212:	40b2                	lw	ra,12(sp)
   12214:	4422                	lw	s0,8(sp)
   12216:	4492                	lw	s1,4(sp)
   12218:	0141                	addi	sp,sp,16
   1221a:	8082                	ret
   1221c:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   12220:	dbed                	beqz	a5,12212 <_fstat_r+0x1c>
   12222:	40b2                	lw	ra,12(sp)
   12224:	c01c                	sw	a5,0(s0)
   12226:	4422                	lw	s0,8(sp)
   12228:	4492                	lw	s1,4(sp)
   1222a:	0141                	addi	sp,sp,16
   1222c:	8082                	ret

0001222e <_isatty_r>:
   1222e:	1141                	addi	sp,sp,-16
   12230:	c422                	sw	s0,8(sp)
   12232:	c226                	sw	s1,4(sp)
   12234:	842a                	mv	s0,a0
   12236:	852e                	mv	a0,a1
   12238:	c606                	sw	ra,12(sp)
   1223a:	d401a623          	sw	zero,-692(gp) # 139c4 <errno>
   1223e:	205d                	jal	122e4 <_isatty>
   12240:	57fd                	li	a5,-1
   12242:	00f50763          	beq	a0,a5,12250 <_isatty_r+0x22>
   12246:	40b2                	lw	ra,12(sp)
   12248:	4422                	lw	s0,8(sp)
   1224a:	4492                	lw	s1,4(sp)
   1224c:	0141                	addi	sp,sp,16
   1224e:	8082                	ret
   12250:	d4c1a783          	lw	a5,-692(gp) # 139c4 <errno>
   12254:	dbed                	beqz	a5,12246 <_isatty_r+0x18>
   12256:	40b2                	lw	ra,12(sp)
   12258:	c01c                	sw	a5,0(s0)
   1225a:	4422                	lw	s0,8(sp)
   1225c:	4492                	lw	s1,4(sp)
   1225e:	0141                	addi	sp,sp,16
   12260:	8082                	ret

00012262 <_close>:
   12262:	1141                	addi	sp,sp,-16
   12264:	c606                	sw	ra,12(sp)
   12266:	c422                	sw	s0,8(sp)
   12268:	03900893          	li	a7,57
   1226c:	00000073          	ecall
   12270:	842a                	mv	s0,a0
   12272:	00054763          	bltz	a0,12280 <_close+0x1e>
   12276:	40b2                	lw	ra,12(sp)
   12278:	8522                	mv	a0,s0
   1227a:	4422                	lw	s0,8(sp)
   1227c:	0141                	addi	sp,sp,16
   1227e:	8082                	ret
   12280:	40800433          	neg	s0,s0
   12284:	22e1                	jal	1244c <__errno>
   12286:	c100                	sw	s0,0(a0)
   12288:	547d                	li	s0,-1
   1228a:	b7f5                	j	12276 <_close+0x14>

0001228c <_exit>:
   1228c:	05d00893          	li	a7,93
   12290:	00000073          	ecall
   12294:	00054363          	bltz	a0,1229a <_exit+0xe>
   12298:	a001                	j	12298 <_exit+0xc>
   1229a:	1141                	addi	sp,sp,-16
   1229c:	c422                	sw	s0,8(sp)
   1229e:	842a                	mv	s0,a0
   122a0:	c606                	sw	ra,12(sp)
   122a2:	40800433          	neg	s0,s0
   122a6:	225d                	jal	1244c <__errno>
   122a8:	c100                	sw	s0,0(a0)
   122aa:	a001                	j	122aa <_exit+0x1e>

000122ac <_fstat>:
   122ac:	7175                	addi	sp,sp,-144
   122ae:	c326                	sw	s1,132(sp)
   122b0:	c706                	sw	ra,140(sp)
   122b2:	84ae                	mv	s1,a1
   122b4:	c522                	sw	s0,136(sp)
   122b6:	858a                	mv	a1,sp
   122b8:	05000893          	li	a7,80
   122bc:	00000073          	ecall
   122c0:	842a                	mv	s0,a0
   122c2:	00054b63          	bltz	a0,122d8 <_fstat+0x2c>
   122c6:	8526                	mv	a0,s1
   122c8:	858a                	mv	a1,sp
   122ca:	2231                	jal	123d6 <_conv_stat>
   122cc:	40ba                	lw	ra,140(sp)
   122ce:	8522                	mv	a0,s0
   122d0:	442a                	lw	s0,136(sp)
   122d2:	449a                	lw	s1,132(sp)
   122d4:	6149                	addi	sp,sp,144
   122d6:	8082                	ret
   122d8:	40800433          	neg	s0,s0
   122dc:	2a85                	jal	1244c <__errno>
   122de:	c100                	sw	s0,0(a0)
   122e0:	547d                	li	s0,-1
   122e2:	b7d5                	j	122c6 <_fstat+0x1a>

000122e4 <_isatty>:
   122e4:	7159                	addi	sp,sp,-112
   122e6:	002c                	addi	a1,sp,8
   122e8:	d686                	sw	ra,108(sp)
   122ea:	37c9                	jal	122ac <_fstat>
   122ec:	57fd                	li	a5,-1
   122ee:	00f50863          	beq	a0,a5,122fe <_isatty+0x1a>
   122f2:	4532                	lw	a0,12(sp)
   122f4:	50b6                	lw	ra,108(sp)
   122f6:	8135                	srli	a0,a0,0xd
   122f8:	8905                	andi	a0,a0,1
   122fa:	6165                	addi	sp,sp,112
   122fc:	8082                	ret
   122fe:	50b6                	lw	ra,108(sp)
   12300:	4501                	li	a0,0
   12302:	6165                	addi	sp,sp,112
   12304:	8082                	ret

00012306 <_lseek>:
   12306:	1141                	addi	sp,sp,-16
   12308:	c606                	sw	ra,12(sp)
   1230a:	c422                	sw	s0,8(sp)
   1230c:	03e00893          	li	a7,62
   12310:	00000073          	ecall
   12314:	842a                	mv	s0,a0
   12316:	00054763          	bltz	a0,12324 <_lseek+0x1e>
   1231a:	40b2                	lw	ra,12(sp)
   1231c:	8522                	mv	a0,s0
   1231e:	4422                	lw	s0,8(sp)
   12320:	0141                	addi	sp,sp,16
   12322:	8082                	ret
   12324:	40800433          	neg	s0,s0
   12328:	2215                	jal	1244c <__errno>
   1232a:	c100                	sw	s0,0(a0)
   1232c:	547d                	li	s0,-1
   1232e:	b7f5                	j	1231a <_lseek+0x14>

00012330 <_read>:
   12330:	1141                	addi	sp,sp,-16
   12332:	c606                	sw	ra,12(sp)
   12334:	c422                	sw	s0,8(sp)
   12336:	03f00893          	li	a7,63
   1233a:	00000073          	ecall
   1233e:	842a                	mv	s0,a0
   12340:	00054763          	bltz	a0,1234e <_read+0x1e>
   12344:	40b2                	lw	ra,12(sp)
   12346:	8522                	mv	a0,s0
   12348:	4422                	lw	s0,8(sp)
   1234a:	0141                	addi	sp,sp,16
   1234c:	8082                	ret
   1234e:	40800433          	neg	s0,s0
   12352:	28ed                	jal	1244c <__errno>
   12354:	c100                	sw	s0,0(a0)
   12356:	547d                	li	s0,-1
   12358:	b7f5                	j	12344 <_read+0x14>

0001235a <_sbrk>:
   1235a:	d601a703          	lw	a4,-672(gp) # 139d8 <heap_end.0>
   1235e:	1141                	addi	sp,sp,-16
   12360:	c606                	sw	ra,12(sp)
   12362:	87aa                	mv	a5,a0
   12364:	ef01                	bnez	a4,1237c <_sbrk+0x22>
   12366:	0d600893          	li	a7,214
   1236a:	4501                	li	a0,0
   1236c:	00000073          	ecall
   12370:	567d                	li	a2,-1
   12372:	872a                	mv	a4,a0
   12374:	02c50563          	beq	a0,a2,1239e <_sbrk+0x44>
   12378:	d6a1a023          	sw	a0,-672(gp) # 139d8 <heap_end.0>
   1237c:	00e78533          	add	a0,a5,a4
   12380:	0d600893          	li	a7,214
   12384:	00000073          	ecall
   12388:	d601a703          	lw	a4,-672(gp) # 139d8 <heap_end.0>
   1238c:	97ba                	add	a5,a5,a4
   1238e:	00f51863          	bne	a0,a5,1239e <_sbrk+0x44>
   12392:	40b2                	lw	ra,12(sp)
   12394:	d6a1a023          	sw	a0,-672(gp) # 139d8 <heap_end.0>
   12398:	853a                	mv	a0,a4
   1239a:	0141                	addi	sp,sp,16
   1239c:	8082                	ret
   1239e:	207d                	jal	1244c <__errno>
   123a0:	40b2                	lw	ra,12(sp)
   123a2:	47b1                	li	a5,12
   123a4:	c11c                	sw	a5,0(a0)
   123a6:	557d                	li	a0,-1
   123a8:	0141                	addi	sp,sp,16
   123aa:	8082                	ret

000123ac <_write>:
   123ac:	1141                	addi	sp,sp,-16
   123ae:	c606                	sw	ra,12(sp)
   123b0:	c422                	sw	s0,8(sp)
   123b2:	04000893          	li	a7,64
   123b6:	00000073          	ecall
   123ba:	842a                	mv	s0,a0
   123bc:	00054763          	bltz	a0,123ca <_write+0x1e>
   123c0:	40b2                	lw	ra,12(sp)
   123c2:	8522                	mv	a0,s0
   123c4:	4422                	lw	s0,8(sp)
   123c6:	0141                	addi	sp,sp,16
   123c8:	8082                	ret
   123ca:	40800433          	neg	s0,s0
   123ce:	28bd                	jal	1244c <__errno>
   123d0:	c100                	sw	s0,0(a0)
   123d2:	547d                	li	s0,-1
   123d4:	b7f5                	j	123c0 <_write+0x14>

000123d6 <_conv_stat>:
   123d6:	1141                	addi	sp,sp,-16
   123d8:	419c                	lw	a5,0(a1)
   123da:	0145a383          	lw	t2,20(a1)
   123de:	0185a283          	lw	t0,24(a1)
   123e2:	01c5af83          	lw	t6,28(a1)
   123e6:	0205af03          	lw	t5,32(a1)
   123ea:	0305ae83          	lw	t4,48(a1)
   123ee:	0405ae03          	lw	t3,64(a1)
   123f2:	0385a303          	lw	t1,56(a1)
   123f6:	0485a803          	lw	a6,72(a1)
   123fa:	04c5a883          	lw	a7,76(a1)
   123fe:	4db0                	lw	a2,88(a1)
   12400:	c622                	sw	s0,12(sp)
   12402:	c426                	sw	s1,8(sp)
   12404:	4980                	lw	s0,16(a1)
   12406:	4584                	lw	s1,8(a1)
   12408:	4df4                	lw	a3,92(a1)
   1240a:	55b8                	lw	a4,104(a1)
   1240c:	00f51023          	sh	a5,0(a0)
   12410:	55fc                	lw	a5,108(a1)
   12412:	00951123          	sh	s1,2(a0)
   12416:	c140                	sw	s0,4(a0)
   12418:	00751423          	sh	t2,8(a0)
   1241c:	00551523          	sh	t0,10(a0)
   12420:	01f51623          	sh	t6,12(a0)
   12424:	01e51723          	sh	t5,14(a0)
   12428:	01d52823          	sw	t4,16(a0)
   1242c:	05c52623          	sw	t3,76(a0)
   12430:	04652423          	sw	t1,72(a0)
   12434:	01052c23          	sw	a6,24(a0)
   12438:	01152e23          	sw	a7,28(a0)
   1243c:	d510                	sw	a2,40(a0)
   1243e:	d554                	sw	a3,44(a0)
   12440:	4432                	lw	s0,12(sp)
   12442:	dd18                	sw	a4,56(a0)
   12444:	dd5c                	sw	a5,60(a0)
   12446:	44a2                	lw	s1,8(sp)
   12448:	0141                	addi	sp,sp,16
   1244a:	8082                	ret

0001244c <__errno>:
   1244c:	d3c1a503          	lw	a0,-708(gp) # 139b4 <_impure_ptr>
   12450:	8082                	ret
