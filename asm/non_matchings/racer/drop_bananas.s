glabel drop_bananas
/* 0582E0 800576E0 27BDFF70 */  addiu $sp, $sp, -0x90
/* 0582E4 800576E4 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0582E8 800576E8 AFB20048 */  sw    $s2, 0x48($sp)
/* 0582EC 800576EC AFB10044 */  sw    $s1, 0x44($sp)
/* 0582F0 800576F0 AFB00040 */  sw    $s0, 0x40($sp)
/* 0582F4 800576F4 00A08025 */  move  $s0, $a1
/* 0582F8 800576F8 00C08825 */  move  $s1, $a2
/* 0582FC 800576FC 00809025 */  move  $s2, $a0
/* 058300 80057700 AFB60058 */  sw    $s6, 0x58($sp)
/* 058304 80057704 AFB50054 */  sw    $s5, 0x54($sp)
/* 058308 80057708 AFB40050 */  sw    $s4, 0x50($sp)
/* 05830C 8005770C AFB3004C */  sw    $s3, 0x4c($sp)
/* 058310 80057710 E7BD0038 */  swc1  $f29, 0x38($sp)
/* 058314 80057714 E7BC003C */  swc1  $f28, 0x3c($sp)
/* 058318 80057718 E7BB0030 */  swc1  $f27, 0x30($sp)
/* 05831C 8005771C E7BA0034 */  swc1  $f26, 0x34($sp)
/* 058320 80057720 E7B90028 */  swc1  $f25, 0x28($sp)
/* 058324 80057724 E7B8002C */  swc1  $f24, 0x2c($sp)
/* 058328 80057728 E7B70020 */  swc1  $f23, 0x20($sp)
/* 05832C 8005772C E7B60024 */  swc1  $f22, 0x24($sp)
/* 058330 80057730 E7B50018 */  swc1  $f21, 0x18($sp)
/* 058334 80057734 0C0270C3 */  jal   get_filtered_cheats
/* 058338 80057738 E7B4001C */   swc1  $f20, 0x1c($sp)
/* 05833C 8005773C 304E0080 */  andi  $t6, $v0, 0x80
/* 058340 80057740 15C00088 */  bnez  $t6, .L80057964
/* 058344 80057744 8FBF005C */   lw    $ra, 0x5c($sp)
/* 058348 80057748 82020185 */  lb    $v0, 0x185($s0)
/* 05834C 8005774C A2000188 */  sb    $zero, 0x188($s0)
/* 058350 80057750 0051082A */  slt   $at, $v0, $s1
/* 058354 80057754 10200002 */  beqz  $at, .L80057760
/* 058358 80057758 00000000 */   nop   
/* 05835C 8005775C 00408825 */  move  $s1, $v0
.L80057760:
/* 058360 80057760 1A20007F */  blez  $s1, .L80057960
/* 058364 80057764 2A210003 */   slti  $at, $s1, 3
/* 058368 80057768 1020007D */  beqz  $at, .L80057960
/* 05836C 8005776C 24080008 */   li    $t0, 8
/* 058370 80057770 860F01A4 */  lh    $t7, 0x1a4($s0)
/* 058374 80057774 2409000C */  li    $t1, 12
/* 058378 80057778 A7AF0078 */  sh    $t7, 0x78($sp)
/* 05837C 8005777C 86580002 */  lh    $t8, 2($s2)
/* 058380 80057780 27A40078 */  addiu $a0, $sp, 0x78
/* 058384 80057784 A7B8007A */  sh    $t8, 0x7a($sp)
/* 058388 80057788 861901A0 */  lh    $t9, 0x1a0($s0)
/* 05838C 8005778C A7A00070 */  sh    $zero, 0x70($sp)
/* 058390 80057790 A7A80072 */  sh    $t0, 0x72($sp)
/* 058394 80057794 A7A90074 */  sh    $t1, 0x74($sp)
/* 058398 80057798 27A50070 */  addiu $a1, $sp, 0x70
/* 05839C 8005779C 0C01C079 */  jal   func_800701E4
/* 0583A0 800577A0 A7B9007C */   sh    $t9, 0x7c($sp)
/* 0583A4 800577A4 444BF800 */  cfc1  $t3, $31
/* 0583A8 800577A8 C644000C */  lwc1  $f4, 0xc($s2)
/* 0583AC 800577AC 35610003 */  ori   $at, $t3, 3
/* 0583B0 800577B0 38210002 */  xori  $at, $at, 2
/* 0583B4 800577B4 44C1F800 */  ctc1  $at, $31
/* 0583B8 800577B8 87AA0070 */  lh    $t2, 0x70($sp)
/* 0583BC 800577BC 460021A4 */  cvt.w.s $f6, $f4
/* 0583C0 800577C0 87AE0072 */  lh    $t6, 0x72($sp)
/* 0583C4 800577C4 44CBF800 */  ctc1  $t3, $31
/* 0583C8 800577C8 440C3000 */  mfc1  $t4, $f6
/* 0583CC 800577CC 87A80074 */  lh    $t0, 0x74($sp)
/* 0583D0 800577D0 444FF800 */  cfc1  $t7, $31
/* 0583D4 800577D4 014C6821 */  addu  $t5, $t2, $t4
/* 0583D8 800577D8 35E10003 */  ori   $at, $t7, 3
/* 0583DC 800577DC A7AD008A */  sh    $t5, 0x8a($sp)
/* 0583E0 800577E0 38210002 */  xori  $at, $at, 2
/* 0583E4 800577E4 44C1F800 */  ctc1  $at, $31
/* 0583E8 800577E8 C6480010 */  lwc1  $f8, 0x10($s2)
/* 0583EC 800577EC 240C0008 */  li    $t4, 8
/* 0583F0 800577F0 460042A4 */  cvt.w.s $f10, $f8
/* 0583F4 800577F4 240D0053 */  li    $t5, 83
/* 0583F8 800577F8 44CFF800 */  ctc1  $t7, $31
/* 0583FC 800577FC 44185000 */  mfc1  $t8, $f10
/* 058400 80057800 4480C000 */  mtc1  $zero, $f24
/* 058404 80057804 4449F800 */  cfc1  $t1, $31
/* 058408 80057808 01D8C821 */  addu  $t9, $t6, $t8
/* 05840C 8005780C 35210003 */  ori   $at, $t1, 3
/* 058410 80057810 38210002 */  xori  $at, $at, 2
/* 058414 80057814 44C1F800 */  ctc1  $at, $31
/* 058418 80057818 A7B9008C */  sh    $t9, 0x8c($sp)
/* 05841C 8005781C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 058420 80057820 C6500014 */  lwc1  $f16, 0x14($s2)
/* 058424 80057824 4481E000 */  mtc1  $at, $f28
/* 058428 80057828 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 05842C 8005782C 460084A4 */  cvt.w.s $f18, $f16
/* 058430 80057830 4481D000 */  mtc1  $at, $f26
/* 058434 80057834 3C014014 */  li    $at, 0x40140000 # 2.312500
/* 058438 80057838 440B9000 */  mfc1  $t3, $f18
/* 05843C 8005783C 4481B800 */  mtc1  $at, $f23
/* 058440 80057840 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 058444 80057844 44C9F800 */  ctc1  $t1, $31
/* 058448 80057848 010B5021 */  addu  $t2, $t0, $t3
/* 05844C 8005784C 4481A000 */  mtc1  $at, $f20
/* 058450 80057850 4480B000 */  mtc1  $zero, $f22
/* 058454 80057854 A7AA008E */  sh    $t2, 0x8e($sp)
/* 058458 80057858 A3AC0089 */  sb    $t4, 0x89($sp)
/* 05845C 8005785C A3AD0088 */  sb    $t5, 0x88($sp)
/* 058460 80057860 02209825 */  move  $s3, $s1
/* 058464 80057864 24120001 */  li    $s2, 1
/* 058468 80057868 24160002 */  li    $s6, 2
/* 05846C 8005786C 27B50088 */  addiu $s5, $sp, 0x88
/* 058470 80057870 24140040 */  li    $s4, 64
.L80057874:
/* 058474 80057874 0C01AF66 */  jal   get_current_level_race_type
/* 058478 80057878 00000000 */   nop   
/* 05847C 8005787C 12820033 */  beq   $s4, $v0, .L8005794C
/* 058480 80057880 02A02025 */   move  $a0, $s5
/* 058484 80057884 0C003A95 */  jal   spawn_object
/* 058488 80057888 02402825 */   move  $a1, $s2
/* 05848C 8005788C 1040002F */  beqz  $v0, .L8005794C
/* 058490 80057890 00000000 */   nop   
/* 058494 80057894 AC40003C */  sw    $zero, 0x3c($v0)
/* 058498 80057898 8C430064 */  lw    $v1, 0x64($v0)
/* 05849C 8005789C 820F01D6 */  lb    $t7, 0x1d6($s0)
/* 0584A0 800578A0 00000000 */  nop   
/* 0584A4 800578A4 A06F0009 */  sb    $t7, 9($v1)
/* 0584A8 800578A8 C6040038 */  lwc1  $f4, 0x38($s0)
/* 0584AC 800578AC 00000000 */  nop   
/* 0584B0 800578B0 46142182 */  mul.s $f6, $f4, $f20
/* 0584B4 800578B4 E446001C */  swc1  $f6, 0x1c($v0)
/* 0584B8 800578B8 C608003C */  lwc1  $f8, 0x3c($s0)
/* 0584BC 800578BC 00000000 */  nop   
/* 0584C0 800578C0 4608C281 */  sub.s $f10, $f24, $f8
/* 0584C4 800578C4 46005421 */  cvt.d.s $f16, $f10
/* 0584C8 800578C8 46368480 */  add.d $f18, $f16, $f22
/* 0584CC 800578CC 46209120 */  cvt.s.d $f4, $f18
/* 0584D0 800578D0 E4440020 */  swc1  $f4, 0x20($v0)
/* 0584D4 800578D4 C6060040 */  lwc1  $f6, 0x40($s0)
/* 0584D8 800578D8 00000000 */  nop   
/* 0584DC 800578DC 46143202 */  mul.s $f8, $f6, $f20
/* 0584E0 800578E0 16760019 */  bne   $s3, $s6, .L80057948
/* 0584E4 800578E4 E4480024 */   swc1  $f8, 0x24($v0)
/* 0584E8 800578E8 16320002 */  bne   $s1, $s2, .L800578F4
/* 0584EC 800578EC 4600D006 */   mov.s $f0, $f26
/* 0584F0 800578F0 4600E006 */  mov.s $f0, $f28
.L800578F4:
/* 0584F4 800578F4 C60A0050 */  lwc1  $f10, 0x50($s0)
/* 0584F8 800578F8 C6100038 */  lwc1  $f16, 0x38($s0)
/* 0584FC 800578FC C446001C */  lwc1  $f6, 0x1c($v0)
/* 058500 80057900 46105481 */  sub.s $f18, $f10, $f16
/* 058504 80057904 C44A0020 */  lwc1  $f10, 0x20($v0)
/* 058508 80057908 46009102 */  mul.s $f4, $f18, $f0
/* 05850C 8005790C 46043201 */  sub.s $f8, $f6, $f4
/* 058510 80057910 E448001C */  swc1  $f8, 0x1c($v0)
/* 058514 80057914 C6100054 */  lwc1  $f16, 0x54($s0)
/* 058518 80057918 00000000 */  nop   
/* 05851C 8005791C 46008482 */  mul.s $f18, $f16, $f0
/* 058520 80057920 46125181 */  sub.s $f6, $f10, $f18
/* 058524 80057924 C4520024 */  lwc1  $f18, 0x24($v0)
/* 058528 80057928 E4460020 */  swc1  $f6, 0x20($v0)
/* 05852C 8005792C C6080040 */  lwc1  $f8, 0x40($s0)
/* 058530 80057930 C6040058 */  lwc1  $f4, 0x58($s0)
/* 058534 80057934 00000000 */  nop   
/* 058538 80057938 46082401 */  sub.s $f16, $f4, $f8
/* 05853C 8005793C 46008282 */  mul.s $f10, $f16, $f0
/* 058540 80057940 460A9181 */  sub.s $f6, $f18, $f10
/* 058544 80057944 E4460024 */  swc1  $f6, 0x24($v0)
.L80057948:
/* 058548 80057948 AC520078 */  sw    $s2, 0x78($v0)
.L8005794C:
/* 05854C 8005794C 820E0185 */  lb    $t6, 0x185($s0)
/* 058550 80057950 2631FFFF */  addiu $s1, $s1, -1
/* 058554 80057954 25D8FFFF */  addiu $t8, $t6, -1
/* 058558 80057958 1E20FFC6 */  bgtz  $s1, .L80057874
/* 05855C 8005795C A2180185 */   sb    $t8, 0x185($s0)
.L80057960:
/* 058560 80057960 8FBF005C */  lw    $ra, 0x5c($sp)
.L80057964:
/* 058564 80057964 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 058568 80057968 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 05856C 8005796C C7B70020 */  lwc1  $f23, 0x20($sp)
/* 058570 80057970 C7B60024 */  lwc1  $f22, 0x24($sp)
/* 058574 80057974 C7B90028 */  lwc1  $f25, 0x28($sp)
/* 058578 80057978 C7B8002C */  lwc1  $f24, 0x2c($sp)
/* 05857C 8005797C C7BB0030 */  lwc1  $f27, 0x30($sp)
/* 058580 80057980 C7BA0034 */  lwc1  $f26, 0x34($sp)
/* 058584 80057984 C7BD0038 */  lwc1  $f29, 0x38($sp)
/* 058588 80057988 C7BC003C */  lwc1  $f28, 0x3c($sp)
/* 05858C 8005798C 8FB00040 */  lw    $s0, 0x40($sp)
/* 058590 80057990 8FB10044 */  lw    $s1, 0x44($sp)
/* 058594 80057994 8FB20048 */  lw    $s2, 0x48($sp)
/* 058598 80057998 8FB3004C */  lw    $s3, 0x4c($sp)
/* 05859C 8005799C 8FB40050 */  lw    $s4, 0x50($sp)
/* 0585A0 800579A0 8FB50054 */  lw    $s5, 0x54($sp)
/* 0585A4 800579A4 8FB60058 */  lw    $s6, 0x58($sp)
/* 0585A8 800579A8 03E00008 */  jr    $ra
/* 0585AC 800579AC 27BD0090 */   addiu $sp, $sp, 0x90
