glabel func_80064638
/* 065238 80064638 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 06523C 8006463C AFBF001C */  sw    $ra, 0x1c($sp)
/* 065240 80064640 AFB00018 */  sw    $s0, 0x18($sp)
/* 065244 80064644 AFA40060 */  sw    $a0, 0x60($sp)
/* 065248 80064648 AFA60068 */  sw    $a2, 0x68($sp)
/* 06524C 8006464C AFA7006C */  sw    $a3, 0x6c($sp)
/* 065250 80064650 8C83001C */  lw    $v1, 0x1c($a0)
/* 065254 80064654 8C820014 */  lw    $v0, 0x14($a0)
/* 065258 80064658 00037840 */  sll   $t7, $v1, 1
/* 06525C 8006465C 00A2082B */  sltu  $at, $a1, $v0
/* 065260 80064660 10200002 */  beqz  $at, .L8006466C
/* 065264 80064664 004F4021 */   addu  $t0, $v0, $t7
/* 065268 80064668 00AF2821 */  addu  $a1, $a1, $t7
.L8006466C:
/* 06526C 8006466C 8FA6006C */  lw    $a2, 0x6c($sp)
/* 065270 80064670 8FB90070 */  lw    $t9, 0x70($sp)
/* 065274 80064674 0006C040 */  sll   $t8, $a2, 1
/* 065278 80064678 03053821 */  addu  $a3, $t8, $a1
/* 06527C 8006467C 0107082B */  sltu  $at, $t0, $a3
/* 065280 80064680 1020003C */  beqz  $at, .L80064774
/* 065284 80064684 03003025 */   move  $a2, $t8
/* 065288 80064688 8FA20070 */  lw    $v0, 0x70($sp)
/* 06528C 8006468C 3C0B0800 */  lui   $t3, 0x800
/* 065290 80064690 01054823 */  subu  $t1, $t0, $a1
/* 065294 80064694 AC4B0000 */  sw    $t3, ($v0)
/* 065298 80064698 8FAF0068 */  lw    $t7, 0x68($sp)
/* 06529C 8006469C 00096043 */  sra   $t4, $t1, 1
/* 0652A0 800646A0 000C6840 */  sll   $t5, $t4, 1
/* 0652A4 800646A4 31B9FFFF */  andi  $t9, $t5, 0xffff
/* 0652A8 800646A8 000FC400 */  sll   $t8, $t7, 0x10
/* 0652AC 800646AC 03195825 */  or    $t3, $t8, $t9
/* 0652B0 800646B0 24500008 */  addiu $s0, $v0, 8
/* 0652B4 800646B4 02005025 */  move  $t2, $s0
/* 0652B8 800646B8 3C0C0600 */  lui   $t4, 0x600
/* 0652BC 800646BC AC4B0004 */  sw    $t3, 4($v0)
/* 0652C0 800646C0 AD4C0000 */  sw    $t4, ($t2)
/* 0652C4 800646C4 AFAA0044 */  sw    $t2, 0x44($sp)
/* 0652C8 800646C8 AFAD0024 */  sw    $t5, 0x24($sp)
/* 0652CC 800646CC AFA8004C */  sw    $t0, 0x4c($sp)
/* 0652D0 800646D0 AFA70028 */  sw    $a3, 0x28($sp)
/* 0652D4 800646D4 AFA6002C */  sw    $a2, 0x2c($sp)
/* 0652D8 800646D8 26100008 */  addiu $s0, $s0, 8
/* 0652DC 800646DC 0C03233C */  jal   func_800C8CF0
/* 0652E0 800646E0 00A02025 */   move  $a0, $a1
/* 0652E4 800646E4 8FAA0044 */  lw    $t2, 0x44($sp)
/* 0652E8 800646E8 8FA70028 */  lw    $a3, 0x28($sp)
/* 0652EC 800646EC 8FA8004C */  lw    $t0, 0x4c($sp)
/* 0652F0 800646F0 8FA90024 */  lw    $t1, 0x24($sp)
/* 0652F4 800646F4 02001825 */  move  $v1, $s0
/* 0652F8 800646F8 3C0D0800 */  lui   $t5, 0x800
/* 0652FC 800646FC AD420004 */  sw    $v0, 4($t2)
/* 065300 80064700 AC6D0000 */  sw    $t5, ($v1)
/* 065304 80064704 8FAE0068 */  lw    $t6, 0x68($sp)
/* 065308 80064708 00E85823 */  subu  $t3, $a3, $t0
/* 06530C 8006470C 000B6043 */  sra   $t4, $t3, 1
/* 065310 80064710 012EC021 */  addu  $t8, $t1, $t6
/* 065314 80064714 000C6840 */  sll   $t5, $t4, 1
/* 065318 80064718 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 06531C 8006471C 0018CC00 */  sll   $t9, $t8, 0x10
/* 065320 80064720 032E7825 */  or    $t7, $t9, $t6
/* 065324 80064724 26100008 */  addiu $s0, $s0, 8
/* 065328 80064728 AC6F0004 */  sw    $t7, 4($v1)
/* 06532C 8006472C 02002825 */  move  $a1, $s0
/* 065330 80064730 3C180600 */  lui   $t8, 0x600
/* 065334 80064734 ACB80000 */  sw    $t8, ($a1)
/* 065338 80064738 8FAB0060 */  lw    $t3, 0x60($sp)
/* 06533C 8006473C 26100008 */  addiu $s0, $s0, 8
/* 065340 80064740 8D640014 */  lw    $a0, 0x14($t3)
/* 065344 80064744 0C03233C */  jal   func_800C8CF0
/* 065348 80064748 AFA5003C */   sw    $a1, 0x3c($sp)
/* 06534C 8006474C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 065350 80064750 8FA5003C */  lw    $a1, 0x3c($sp)
/* 065354 80064754 02001825 */  move  $v1, $s0
/* 065358 80064758 3C0C0800 */  lui   $t4, 0x800
/* 06535C 8006475C 30CDFFFF */  andi  $t5, $a2, 0xffff
/* 065360 80064760 ACA20004 */  sw    $v0, 4($a1)
/* 065364 80064764 AC6D0004 */  sw    $t5, 4($v1)
/* 065368 80064768 AC6C0000 */  sw    $t4, ($v1)
/* 06536C 8006476C 10000013 */  b     .L800647BC
/* 065370 80064770 26100008 */   addiu $s0, $s0, 8
.L80064774:
/* 065374 80064774 3C0E0800 */  lui   $t6, 0x800
/* 065378 80064778 AF2E0000 */  sw    $t6, ($t9)
/* 06537C 8006477C 8FB80068 */  lw    $t8, 0x68($sp)
/* 065380 80064780 30CCFFFF */  andi  $t4, $a2, 0xffff
/* 065384 80064784 00185C00 */  sll   $t3, $t8, 0x10
/* 065388 80064788 016C6825 */  or    $t5, $t3, $t4
/* 06538C 8006478C 27300008 */  addiu $s0, $t9, 8
/* 065390 80064790 AF2D0004 */  sw    $t5, 4($t9)
/* 065394 80064794 3C190600 */  lui   $t9, 0x600
/* 065398 80064798 02001825 */  move  $v1, $s0
/* 06539C 8006479C AC790000 */  sw    $t9, ($v1)
/* 0653A0 800647A0 AFA30030 */  sw    $v1, 0x30($sp)
/* 0653A4 800647A4 26100008 */  addiu $s0, $s0, 8
/* 0653A8 800647A8 0C03233C */  jal   func_800C8CF0
/* 0653AC 800647AC 00A02025 */   move  $a0, $a1
/* 0653B0 800647B0 8FA30030 */  lw    $v1, 0x30($sp)
/* 0653B4 800647B4 00000000 */  nop   
/* 0653B8 800647B8 AC620004 */  sw    $v0, 4($v1)
.L800647BC:
/* 0653BC 800647BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0653C0 800647C0 02001025 */  move  $v0, $s0
/* 0653C4 800647C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0653C8 800647C8 03E00008 */  jr    $ra
/* 0653CC 800647CC 27BD0060 */   addiu $sp, $sp, 0x60
