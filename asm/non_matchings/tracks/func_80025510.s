glabel func_80025510
/* 026110 80025510 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 026114 80025514 3C068012 */  lui   $a2, %hi(D_8011D4BC) # $a2, 0x8012
/* 026118 80025518 3C098012 */  lui   $t1, %hi(D_8011D4BA) # $t1, 0x8012
/* 02611C 8002551C 2529D4BA */  addiu $t1, %lo(D_8011D4BA) # addiu $t1, $t1, -0x2b46
/* 026120 80025520 24C6D4BC */  addiu $a2, %lo(D_8011D4BC) # addiu $a2, $a2, -0x2b44
/* 026124 80025524 AFB00018 */  sw    $s0, 0x18($sp)
/* 026128 80025528 240E00AF */  li    $t6, 175
/* 02612C 8002552C 240F002D */  li    $t7, 45
/* 026130 80025530 28810002 */  slti  $at, $a0, 2
/* 026134 80025534 00808025 */  move  $s0, $a0
/* 026138 80025538 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02613C 8002553C A52E0000 */  sh    $t6, ($t1)
/* 026140 80025540 14200005 */  bnez  $at, .L80025558
/* 026144 80025544 A4CF0000 */   sh    $t7, ($a2)
/* 026148 80025548 84D80000 */  lh    $t8, ($a2)
/* 02614C 8002554C 00000000 */  nop   
/* 026150 80025550 0018C843 */  sra   $t9, $t8, 1
/* 026154 80025554 A4D90000 */  sh    $t9, ($a2)
.L80025558:
/* 026158 80025558 84C80000 */  lh    $t0, ($a2)
/* 02615C 8002555C 85230000 */  lh    $v1, ($t1)
/* 026160 80025560 00083880 */  sll   $a3, $t0, 2
/* 026164 80025564 00076880 */  sll   $t5, $a3, 2
/* 026168 80025568 01A76821 */  addu  $t5, $t5, $a3
/* 02616C 8002556C 000D6840 */  sll   $t5, $t5, 1
/* 026170 80025570 00087140 */  sll   $t6, $t0, 5
/* 026174 80025574 000350C0 */  sll   $t2, $v1, 3
/* 026178 80025578 254B0030 */  addiu $t3, $t2, 0x30
/* 02617C 8002557C 25A700C8 */  addiu $a3, $t5, 0xc8
/* 026180 80025580 25C800A0 */  addiu $t0, $t6, 0xa0
/* 026184 80025584 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* 026188 80025588 246C0005 */  addiu $t4, $v1, 5
/* 02618C 8002558C AFAB0030 */  sw    $t3, 0x30($sp)
/* 026190 80025590 AFAC002C */  sw    $t4, 0x2c($sp)
/* 026194 80025594 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 026198 80025598 AFA80024 */  sw    $t0, 0x24($sp)
/* 02619C 8002559C AFA70028 */  sw    $a3, 0x28($sp)
/* 0261A0 800255A0 0C01C327 */  jal   allocate_from_main_pool_safe
/* 0261A4 800255A4 00102100 */   sll   $a0, $s0, 4
/* 0261A8 800255A8 8FA70028 */  lw    $a3, 0x28($sp)
/* 0261AC 800255AC 8FA80024 */  lw    $t0, 0x24($sp)
/* 0261B0 800255B0 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0261B4 800255B4 00E85021 */  addu  $t2, $a3, $t0
/* 0261B8 800255B8 000A5840 */  sll   $t3, $t2, 1
/* 0261BC 800255BC 01700019 */  multu $t3, $s0
/* 0261C0 800255C0 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0261C4 800255C4 3C068012 */  lui   $a2, %hi(D_8011D474) # $a2, 0x8012
/* 0261C8 800255C8 24C6D474 */  addiu $a2, %lo(D_8011D474) # addiu $a2, $a2, -0x2b8c
/* 0261CC 800255CC 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* 0261D0 800255D0 01F8C821 */  addu  $t9, $t7, $t8
/* 0261D4 800255D4 ACC20000 */  sw    $v0, ($a2)
/* 0261D8 800255D8 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 0261DC 800255DC 00006012 */  mflo  $t4
/* 0261E0 800255E0 032C2021 */  addu  $a0, $t9, $t4
/* 0261E4 800255E4 0C01C327 */  jal   allocate_from_main_pool_safe
/* 0261E8 800255E8 00000000 */   nop   
/* 0261EC 800255EC 3C04800E */  lui   $a0, %hi(D_800DC924) # $a0, 0x800e
/* 0261F0 800255F0 2484C924 */  addiu $a0, %lo(D_800DC924) # addiu $a0, $a0, -0x36dc
/* 0261F4 800255F4 3C068012 */  lui   $a2, %hi(D_8011D474) # $a2, 0x8012
/* 0261F8 800255F8 8FA70028 */  lw    $a3, 0x28($sp)
/* 0261FC 800255FC 8FA80024 */  lw    $t0, 0x24($sp)
/* 026200 80025600 24C6D474 */  addiu $a2, %lo(D_8011D474) # addiu $a2, $a2, -0x2b8c
/* 026204 80025604 1040006C */  beqz  $v0, .L800257B8
/* 026208 80025608 AC820000 */   sw    $v0, ($a0)
/* 02620C 8002560C 8FAD0030 */  lw    $t5, 0x30($sp)
/* 026210 80025610 3C018012 */  lui   $at, %hi(D_8011D478) # $at, 0x8012
/* 026214 80025614 AC22D478 */  sw    $v0, %lo(D_8011D478)($at)
/* 026218 80025618 8FAE002C */  lw    $t6, 0x2c($sp)
/* 02621C 8002561C 3C018012 */  lui   $at, %hi(D_8011D47C) # $at, 0x8012
/* 026220 80025620 004D1821 */  addu  $v1, $v0, $t5
/* 026224 80025624 AC23D47C */  sw    $v1, %lo(D_8011D47C)($at)
/* 026228 80025628 006E1821 */  addu  $v1, $v1, $t6
/* 02622C 8002562C 24630008 */  addiu $v1, $v1, 8
/* 026230 80025630 2401FFF8 */  li    $at, -8
/* 026234 80025634 00617824 */  and   $t7, $v1, $at
/* 026238 80025638 01E01825 */  move  $v1, $t7
/* 02623C 8002563C 1A00005E */  blez  $s0, .L800257B8
/* 026240 80025640 00002025 */   move  $a0, $zero
/* 026244 80025644 32090003 */  andi  $t1, $s0, 3
/* 026248 80025648 11200016 */  beqz  $t1, .L800256A4
/* 02624C 8002564C 01202825 */   move  $a1, $t1
/* 026250 80025650 00001100 */  sll   $v0, $zero, 4
.L80025654:
/* 026254 80025654 8CD80000 */  lw    $t8, ($a2)
/* 026258 80025658 24840001 */  addiu $a0, $a0, 1
/* 02625C 8002565C 03025021 */  addu  $t2, $t8, $v0
/* 026260 80025660 AD430000 */  sw    $v1, ($t2)
/* 026264 80025664 8CCB0000 */  lw    $t3, ($a2)
/* 026268 80025668 00681821 */  addu  $v1, $v1, $t0
/* 02626C 8002566C 0162C821 */  addu  $t9, $t3, $v0
/* 026270 80025670 AF230004 */  sw    $v1, 4($t9)
/* 026274 80025674 8CCC0000 */  lw    $t4, ($a2)
/* 026278 80025678 00681821 */  addu  $v1, $v1, $t0
/* 02627C 8002567C 01826821 */  addu  $t5, $t4, $v0
/* 026280 80025680 ADA30008 */  sw    $v1, 8($t5)
/* 026284 80025684 8CCE0000 */  lw    $t6, ($a2)
/* 026288 80025688 00671821 */  addu  $v1, $v1, $a3
/* 02628C 8002568C 01C27821 */  addu  $t7, $t6, $v0
/* 026290 80025690 ADE3000C */  sw    $v1, 0xc($t7)
/* 026294 80025694 00671821 */  addu  $v1, $v1, $a3
/* 026298 80025698 14A4FFEE */  bne   $a1, $a0, .L80025654
/* 02629C 8002569C 24420010 */   addiu $v0, $v0, 0x10
/* 0262A0 800256A0 10900045 */  beq   $a0, $s0, .L800257B8
.L800256A4:
/* 0262A4 800256A4 00041100 */   sll   $v0, $a0, 4
/* 0262A8 800256A8 00102900 */  sll   $a1, $s0, 4
.L800256AC:
/* 0262AC 800256AC 8CD80000 */  lw    $t8, ($a2)
/* 0262B0 800256B0 00000000 */  nop   
/* 0262B4 800256B4 03025021 */  addu  $t2, $t8, $v0
/* 0262B8 800256B8 AD430000 */  sw    $v1, ($t2)
/* 0262BC 800256BC 8CCB0000 */  lw    $t3, ($a2)
/* 0262C0 800256C0 00681821 */  addu  $v1, $v1, $t0
/* 0262C4 800256C4 0162C821 */  addu  $t9, $t3, $v0
/* 0262C8 800256C8 AF230004 */  sw    $v1, 4($t9)
/* 0262CC 800256CC 8CCC0000 */  lw    $t4, ($a2)
/* 0262D0 800256D0 00681821 */  addu  $v1, $v1, $t0
/* 0262D4 800256D4 01826821 */  addu  $t5, $t4, $v0
/* 0262D8 800256D8 ADA30008 */  sw    $v1, 8($t5)
/* 0262DC 800256DC 8CCE0000 */  lw    $t6, ($a2)
/* 0262E0 800256E0 00671821 */  addu  $v1, $v1, $a3
/* 0262E4 800256E4 01C27821 */  addu  $t7, $t6, $v0
/* 0262E8 800256E8 ADE3000C */  sw    $v1, 0xc($t7)
/* 0262EC 800256EC 8CD80000 */  lw    $t8, ($a2)
/* 0262F0 800256F0 00671821 */  addu  $v1, $v1, $a3
/* 0262F4 800256F4 03025021 */  addu  $t2, $t8, $v0
/* 0262F8 800256F8 AD430010 */  sw    $v1, 0x10($t2)
/* 0262FC 800256FC 8CCB0000 */  lw    $t3, ($a2)
/* 026300 80025700 00681821 */  addu  $v1, $v1, $t0
/* 026304 80025704 0162C821 */  addu  $t9, $t3, $v0
/* 026308 80025708 AF230014 */  sw    $v1, 0x14($t9)
/* 02630C 8002570C 8CCC0000 */  lw    $t4, ($a2)
/* 026310 80025710 00681821 */  addu  $v1, $v1, $t0
/* 026314 80025714 01826821 */  addu  $t5, $t4, $v0
/* 026318 80025718 ADA30018 */  sw    $v1, 0x18($t5)
/* 02631C 8002571C 8CCE0000 */  lw    $t6, ($a2)
/* 026320 80025720 00671821 */  addu  $v1, $v1, $a3
/* 026324 80025724 01C27821 */  addu  $t7, $t6, $v0
/* 026328 80025728 ADE3001C */  sw    $v1, 0x1c($t7)
/* 02632C 8002572C 8CD80000 */  lw    $t8, ($a2)
/* 026330 80025730 00671821 */  addu  $v1, $v1, $a3
/* 026334 80025734 03025021 */  addu  $t2, $t8, $v0
/* 026338 80025738 AD430020 */  sw    $v1, 0x20($t2)
/* 02633C 8002573C 8CCB0000 */  lw    $t3, ($a2)
/* 026340 80025740 00681821 */  addu  $v1, $v1, $t0
/* 026344 80025744 0162C821 */  addu  $t9, $t3, $v0
/* 026348 80025748 AF230024 */  sw    $v1, 0x24($t9)
/* 02634C 8002574C 8CCC0000 */  lw    $t4, ($a2)
/* 026350 80025750 00681821 */  addu  $v1, $v1, $t0
/* 026354 80025754 01826821 */  addu  $t5, $t4, $v0
/* 026358 80025758 ADA30028 */  sw    $v1, 0x28($t5)
/* 02635C 8002575C 8CCE0000 */  lw    $t6, ($a2)
/* 026360 80025760 00671821 */  addu  $v1, $v1, $a3
/* 026364 80025764 01C27821 */  addu  $t7, $t6, $v0
/* 026368 80025768 ADE3002C */  sw    $v1, 0x2c($t7)
/* 02636C 8002576C 8CD80000 */  lw    $t8, ($a2)
/* 026370 80025770 00671821 */  addu  $v1, $v1, $a3
/* 026374 80025774 03025021 */  addu  $t2, $t8, $v0
/* 026378 80025778 AD430030 */  sw    $v1, 0x30($t2)
/* 02637C 8002577C 8CCB0000 */  lw    $t3, ($a2)
/* 026380 80025780 00681821 */  addu  $v1, $v1, $t0
/* 026384 80025784 0162C821 */  addu  $t9, $t3, $v0
/* 026388 80025788 AF230034 */  sw    $v1, 0x34($t9)
/* 02638C 8002578C 8CCC0000 */  lw    $t4, ($a2)
/* 026390 80025790 00681821 */  addu  $v1, $v1, $t0
/* 026394 80025794 01826821 */  addu  $t5, $t4, $v0
/* 026398 80025798 ADA30038 */  sw    $v1, 0x38($t5)
/* 02639C 8002579C 8CCE0000 */  lw    $t6, ($a2)
/* 0263A0 800257A0 00671821 */  addu  $v1, $v1, $a3
/* 0263A4 800257A4 01C27821 */  addu  $t7, $t6, $v0
/* 0263A8 800257A8 ADE3003C */  sw    $v1, 0x3c($t7)
/* 0263AC 800257AC 24420040 */  addiu $v0, $v0, 0x40
/* 0263B0 800257B0 1445FFBE */  bne   $v0, $a1, .L800256AC
/* 0263B4 800257B4 00671821 */   addu  $v1, $v1, $a3
.L800257B8:
/* 0263B8 800257B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0263BC 800257BC 3C018012 */  lui   $at, %hi(D_8011D4B4) # $at, 0x8012
/* 0263C0 800257C0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0263C4 800257C4 A020D4B4 */  sb    $zero, %lo(D_8011D4B4)($at)
/* 0263C8 800257C8 03E00008 */  jr    $ra
/* 0263CC 800257CC 27BD0038 */   addiu $sp, $sp, 0x38
