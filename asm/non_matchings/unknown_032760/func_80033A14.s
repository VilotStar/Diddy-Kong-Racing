glabel func_80033A14
/* 034614 80033A14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 034618 80033A18 AFBF0024 */  sw    $ra, 0x24($sp)
/* 03461C 80033A1C AFB00020 */  sw    $s0, 0x20($sp)
/* 034620 80033A20 E7B50018 */  swc1  $f21, 0x18($sp)
/* 034624 80033A24 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 034628 80033A28 8C8E0028 */  lw    $t6, 0x28($a0)
/* 03462C 80033A2C 908F0003 */  lbu   $t7, 3($a0)
/* 034630 80033A30 448E2000 */  mtc1  $t6, $f4
/* 034634 80033A34 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 034638 80033A38 44814000 */  mtc1  $at, $f8
/* 03463C 80033A3C 468021A0 */  cvt.s.w $f6, $f4
/* 034640 80033A40 25F8FFFF */  addiu $t8, $t7, -1
/* 034644 80033A44 2F010005 */  sltiu $at, $t8, 5
/* 034648 80033A48 00808025 */  move  $s0, $a0
/* 03464C 80033A4C 10200067 */  beqz  $at, .L80033BEC
/* 034650 80033A50 46083503 */   div.s $f20, $f6, $f8
/* 034654 80033A54 0018C080 */  sll   $t8, $t8, 2
/* 034658 80033A58 3C01800E */  lui   $at, 0x800e
/* 03465C 80033A5C 00380821 */  addu  $at, $at, $t8
/* 034660 80033A60 8C385F80 */  lw    $t8, 0x5f80($at)
/* 034664 80033A64 00000000 */  nop   
/* 034668 80033A68 03000008 */  jr    $t8
/* 03466C 80033A6C 00000000 */   nop   
/* 034670 80033A70 3C018012 */  lui   $at, %hi(D_8011D4C0) # $at, 0x8012
/* 034674 80033A74 C42CD4C0 */  lwc1  $f12, %lo(D_8011D4C0)($at)
/* 034678 80033A78 0C0326B4 */  jal   sqrtf
/* 03467C 80033A7C 00000000 */   nop   
/* 034680 80033A80 C610006C */  lwc1  $f16, 0x6c($s0)
/* 034684 80033A84 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 034688 80033A88 46100482 */  mul.s $f18, $f0, $f16
/* 03468C 80033A8C 44815000 */  mtc1  $at, $f10
/* 034690 80033A90 00000000 */  nop   
/* 034694 80033A94 46125081 */  sub.s $f2, $f10, $f18
/* 034698 80033A98 4602A502 */  mul.s $f20, $f20, $f2
/* 03469C 80033A9C 10000054 */  b     .L80033BF0
/* 0346A0 80033AA0 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0346A4 80033AA4 3C018012 */  lui   $at, %hi(D_8011D4C0) # $at, 0x8012
/* 0346A8 80033AA8 C42CD4C0 */  lwc1  $f12, %lo(D_8011D4C0)($at)
/* 0346AC 80033AAC 0C0326B4 */  jal   sqrtf
/* 0346B0 80033AB0 00000000 */   nop   
/* 0346B4 80033AB4 C604006C */  lwc1  $f4, 0x6c($s0)
/* 0346B8 80033AB8 00000000 */  nop   
/* 0346BC 80033ABC 46040302 */  mul.s $f12, $f0, $f4
/* 0346C0 80033AC0 0C0326B4 */  jal   sqrtf
/* 0346C4 80033AC4 00000000 */   nop   
/* 0346C8 80033AC8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0346CC 80033ACC 44813000 */  mtc1  $at, $f6
/* 0346D0 80033AD0 00000000 */  nop   
/* 0346D4 80033AD4 46003201 */  sub.s $f8, $f6, $f0
/* 0346D8 80033AD8 4608A502 */  mul.s $f20, $f20, $f8
/* 0346DC 80033ADC 10000044 */  b     .L80033BF0
/* 0346E0 80033AE0 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0346E4 80033AE4 3C018012 */  lui   $at, %hi(D_8011D4C0) # $at, 0x8012
/* 0346E8 80033AE8 C42CD4C0 */  lwc1  $f12, %lo(D_8011D4C0)($at)
/* 0346EC 80033AEC 0C0326B4 */  jal   sqrtf
/* 0346F0 80033AF0 00000000 */   nop   
/* 0346F4 80033AF4 C610006C */  lwc1  $f16, 0x6c($s0)
/* 0346F8 80033AF8 3C014680 */  li    $at, 0x46800000 # 16384.000000
/* 0346FC 80033AFC 46100282 */  mul.s $f10, $f0, $f16
/* 034700 80033B00 44819000 */  mtc1  $at, $f18
/* 034704 80033B04 00000000 */  nop   
/* 034708 80033B08 46125102 */  mul.s $f4, $f10, $f18
/* 03470C 80033B0C 4459F800 */  cfc1  $t9, $31
/* 034710 80033B10 00000000 */  nop   
/* 034714 80033B14 37210003 */  ori   $at, $t9, 3
/* 034718 80033B18 38210002 */  xori  $at, $at, 2
/* 03471C 80033B1C 44C1F800 */  ctc1  $at, $31
/* 034720 80033B20 00000000 */  nop   
/* 034724 80033B24 460021A4 */  cvt.w.s $f6, $f4
/* 034728 80033B28 44043000 */  mfc1  $a0, $f6
/* 03472C 80033B2C 44D9F800 */  ctc1  $t9, $31
/* 034730 80033B30 00044400 */  sll   $t0, $a0, 0x10
/* 034734 80033B34 0C01C1FE */  jal   func_800707F8
/* 034738 80033B38 00082403 */   sra   $a0, $t0, 0x10
/* 03473C 80033B3C 4600A502 */  mul.s $f20, $f20, $f0
/* 034740 80033B40 1000002B */  b     .L80033BF0
/* 034744 80033B44 8FBF0024 */   lw    $ra, 0x24($sp)
/* 034748 80033B48 3C018012 */  lui   $at, %hi(D_8011D4C0) # $at, 0x8012
/* 03474C 80033B4C C42CD4C0 */  lwc1  $f12, %lo(D_8011D4C0)($at)
/* 034750 80033B50 0C0326B4 */  jal   sqrtf
/* 034754 80033B54 00000000 */   nop   
/* 034758 80033B58 C608006C */  lwc1  $f8, 0x6c($s0)
/* 03475C 80033B5C 3C014680 */  li    $at, 0x46800000 # 16384.000000
/* 034760 80033B60 46080402 */  mul.s $f16, $f0, $f8
/* 034764 80033B64 44815000 */  mtc1  $at, $f10
/* 034768 80033B68 00000000 */  nop   
/* 03476C 80033B6C 460A8482 */  mul.s $f18, $f16, $f10
/* 034770 80033B70 444AF800 */  cfc1  $t2, $31
/* 034774 80033B74 00000000 */  nop   
/* 034778 80033B78 35410003 */  ori   $at, $t2, 3
/* 03477C 80033B7C 38210002 */  xori  $at, $at, 2
/* 034780 80033B80 44C1F800 */  ctc1  $at, $31
/* 034784 80033B84 00000000 */  nop   
/* 034788 80033B88 46009124 */  cvt.w.s $f4, $f18
/* 03478C 80033B8C 44042000 */  mfc1  $a0, $f4
/* 034790 80033B90 44CAF800 */  ctc1  $t2, $31
/* 034794 80033B94 00045C00 */  sll   $t3, $a0, 0x10
/* 034798 80033B98 0C01C1FE */  jal   func_800707F8
/* 03479C 80033B9C 000B2403 */   sra   $a0, $t3, 0x10
/* 0347A0 80033BA0 46000182 */  mul.s $f6, $f0, $f0
/* 0347A4 80033BA4 00000000 */  nop   
/* 0347A8 80033BA8 4606A502 */  mul.s $f20, $f20, $f6
/* 0347AC 80033BAC 1000000F */  b     .L80033BEC
/* 0347B0 80033BB0 00000000 */   nop   
/* 0347B4 80033BB4 3C018012 */  lui   $at, %hi(D_8011D4C0) # $at, 0x8012
/* 0347B8 80033BB8 C42CD4C0 */  lwc1  $f12, %lo(D_8011D4C0)($at)
/* 0347BC 80033BBC 0C0326B4 */  jal   sqrtf
/* 0347C0 80033BC0 00000000 */   nop   
/* 0347C4 80033BC4 C610006C */  lwc1  $f16, 0x6c($s0)
/* 0347C8 80033BC8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0347CC 80033BCC 46100282 */  mul.s $f10, $f0, $f16
/* 0347D0 80033BD0 44814000 */  mtc1  $at, $f8
/* 0347D4 80033BD4 00000000 */  nop   
/* 0347D8 80033BD8 460A4081 */  sub.s $f2, $f8, $f10
/* 0347DC 80033BDC 46021082 */  mul.s $f2, $f2, $f2
/* 0347E0 80033BE0 00000000 */  nop   
/* 0347E4 80033BE4 4602A502 */  mul.s $f20, $f20, $f2
/* 0347E8 80033BE8 00000000 */  nop   
.L80033BEC:
/* 0347EC 80033BEC 8FBF0024 */  lw    $ra, 0x24($sp)
.L80033BF0:
/* 0347F0 80033BF0 4600A006 */  mov.s $f0, $f20
/* 0347F4 80033BF4 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 0347F8 80033BF8 C7B50018 */  lwc1  $f21, 0x18($sp)
/* 0347FC 80033BFC 8FB00020 */  lw    $s0, 0x20($sp)
/* 034800 80033C00 03E00008 */  jr    $ra
/* 034804 80033C04 27BD0028 */   addiu $sp, $sp, 0x28
