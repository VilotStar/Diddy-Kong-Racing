glabel func_800249F0
/* 0255F0 800249F0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0255F4 800249F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0255F8 800249F8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0255FC 800249FC AFB10018 */  sw    $s1, 0x18($sp)
/* 025600 80024A00 00808825 */  move  $s1, $a0
/* 025604 80024A04 00A09025 */  move  $s2, $a1
/* 025608 80024A08 AFB30020 */  sw    $s3, 0x20($sp)
/* 02560C 80024A0C AFB00014 */  sw    $s0, 0x14($sp)
/* 025610 80024A10 AFA60030 */  sw    $a2, 0x30($sp)
/* 025614 80024A14 0C01AF6C */  jal   func_8006BDB0
/* 025618 80024A18 AFA70034 */   sw    $a3, 0x34($sp)
/* 02561C 80024A1C 3C048012 */  lui   $a0, %hi(D_8011B0F8) # $a0, 0x8012
/* 025620 80024A20 3C05800E */  lui   $a1, %hi(D_800DC91C) # $a1, 0x800e
/* 025624 80024A24 24A5C91C */  addiu $a1, %lo(D_800DC91C) # addiu $a1, $a1, -0x36e4
/* 025628 80024A28 2484B0F8 */  addiu $a0, %lo(D_8011B0F8) # addiu $a0, $a0, -0x4f08
/* 02562C 80024A2C ACA20000 */  sw    $v0, ($a1)
/* 025630 80024A30 AC800000 */  sw    $zero, ($a0)
/* 025634 80024A34 3C018012 */  lui   $at, %hi(D_8011B100) # $at, 0x8012
/* 025638 80024A38 AC20B100 */  sw    $zero, %lo(D_8011B100)($at)
/* 02563C 80024A3C 3C018012 */  lui   $at, %hi(D_8011B104) # $at, 0x8012
/* 025640 80024A40 AC20B104 */  sw    $zero, %lo(D_8011B104)($at)
/* 025644 80024A44 3C018012 */  lui   $at, %hi(D_8011B108) # $at, 0x8012
/* 025648 80024A48 AC20B108 */  sw    $zero, %lo(D_8011B108)($at)
/* 02564C 80024A4C 3C018012 */  lui   $at, %hi(D_8011B10C) # $at, 0x8012
/* 025650 80024A50 AC20B10C */  sw    $zero, %lo(D_8011B10C)($at)
/* 025654 80024A54 8CAE0000 */  lw    $t6, ($a1)
/* 025658 80024A58 24010006 */  li    $at, 6
/* 02565C 80024A5C 81C3004C */  lb    $v1, 0x4c($t6)
/* 025660 80024A60 00000000 */  nop   
/* 025664 80024A64 10610002 */  beq   $v1, $at, .L80024A70
/* 025668 80024A68 24010007 */   li    $at, 7
/* 02566C 80024A6C 14610002 */  bne   $v1, $at, .L80024A78
.L80024A70:
/* 025670 80024A70 240F0001 */   li    $t7, 1
/* 025674 80024A74 AC8F0000 */  sw    $t7, ($a0)
.L80024A78:
/* 025678 80024A78 0C00B031 */  jal   func_8002C0C4
/* 02567C 80024A7C 02202025 */   move  $a0, $s1
/* 025680 80024A80 8FB80030 */  lw    $t8, 0x30($sp)
/* 025684 80024A84 3C108012 */  lui   $s0, %hi(D_8011D384) # $s0, 0x8012
/* 025688 80024A88 2610D384 */  addiu $s0, %lo(D_8011D384) # addiu $s0, $s0, -0x2c7c
/* 02568C 80024A8C 2B010002 */  slti  $at, $t8, 2
/* 025690 80024A90 1020001E */  beqz  $at, .L80024B0C
/* 025694 80024A94 AE000000 */   sw    $zero, ($s0)
/* 025698 80024A98 3C02800E */  lui   $v0, %hi(D_800DC918) # $v0, 0x800e
/* 02569C 80024A9C 8C42C918 */  lw    $v0, %lo(D_800DC918)($v0)
/* 0256A0 80024AA0 00003025 */  move  $a2, $zero
/* 0256A4 80024AA4 8444001A */  lh    $a0, 0x1a($v0)
/* 0256A8 80024AA8 00001825 */  move  $v1, $zero
/* 0256AC 80024AAC 18800017 */  blez  $a0, .L80024B0C
/* 0256B0 80024AB0 24050001 */   li    $a1, 1
.L80024AB4:
/* 0256B4 80024AB4 8C590004 */  lw    $t9, 4($v0)
/* 0256B8 80024AB8 24C60001 */  addiu $a2, $a2, 1
/* 0256BC 80024ABC 03234021 */  addu  $t0, $t9, $v1
/* 0256C0 80024AC0 8109002B */  lb    $t1, 0x2b($t0)
/* 0256C4 80024AC4 00000000 */  nop   
/* 0256C8 80024AC8 1120000E */  beqz  $t1, .L80024B04
/* 0256CC 80024ACC 00C4082A */   slt   $at, $a2, $a0
/* 0256D0 80024AD0 8E0A0000 */  lw    $t2, ($s0)
/* 0256D4 80024AD4 00000000 */  nop   
/* 0256D8 80024AD8 254B0001 */  addiu $t3, $t2, 1
/* 0256DC 80024ADC AE0B0000 */  sw    $t3, ($s0)
/* 0256E0 80024AE0 8C4C0004 */  lw    $t4, 4($v0)
/* 0256E4 80024AE4 3C02800E */  lui   $v0, %hi(D_800DC918) # $v0, 0x800e
/* 0256E8 80024AE8 01836821 */  addu  $t5, $t4, $v1
/* 0256EC 80024AEC A1A5002B */  sb    $a1, 0x2b($t5)
/* 0256F0 80024AF0 8C42C918 */  lw    $v0, %lo(D_800DC918)($v0)
/* 0256F4 80024AF4 00000000 */  nop   
/* 0256F8 80024AF8 8444001A */  lh    $a0, 0x1a($v0)
/* 0256FC 80024AFC 00000000 */  nop   
/* 025700 80024B00 00C4082A */  slt   $at, $a2, $a0
.L80024B04:
/* 025704 80024B04 1420FFEB */  bnez  $at, .L80024AB4
/* 025708 80024B08 24630044 */   addiu $v1, $v1, 0x44
.L80024B0C:
/* 02570C 80024B0C 0C027B20 */  jal   func_8009EC80
/* 025710 80024B10 00000000 */   nop   
/* 025714 80024B14 1040000B */  beqz  $v0, .L80024B44
/* 025718 80024B18 3C0E800E */   lui   $t6, %hi(D_800DC91C) # $t6, 0x800e
/* 02571C 80024B1C 8DCEC91C */  lw    $t6, %lo(D_800DC91C)($t6)
/* 025720 80024B20 00000000 */  nop   
/* 025724 80024B24 81C3004C */  lb    $v1, 0x4c($t6)
/* 025728 80024B28 00000000 */  nop   
/* 02572C 80024B2C 10600003 */  beqz  $v1, .L80024B3C
/* 025730 80024B30 306F0040 */   andi  $t7, $v1, 0x40
/* 025734 80024B34 11E00004 */  beqz  $t7, .L80024B48
/* 025738 80024B38 8FA60030 */   lw    $a2, 0x30($sp)
.L80024B3C:
/* 02573C 80024B3C 10000004 */  b     .L80024B50
/* 025740 80024B40 24060002 */   li    $a2, 2
.L80024B44:
/* 025744 80024B44 8FA60030 */  lw    $a2, 0x30($sp)
.L80024B48:
/* 025748 80024B48 00000000 */  nop   
/* 02574C 80024B4C 24C60001 */  addiu $a2, $a2, 1
.L80024B50:
/* 025750 80024B50 8E180000 */  lw    $t8, ($s0)
/* 025754 80024B54 00000000 */  nop   
/* 025758 80024B58 13000006 */  beqz  $t8, .L80024B74
/* 02575C 80024B5C 3C04800E */   lui   $a0, %hi(D_800DC918) # $a0, 0x800e
/* 025760 80024B60 3C05800E */  lui   $a1, %hi(D_800DC91C) # $a1, 0x800e
/* 025764 80024B64 8CA5C91C */  lw    $a1, %lo(D_800DC91C)($a1)
/* 025768 80024B68 8C84C918 */  lw    $a0, %lo(D_800DC918)($a0)
/* 02576C 80024B6C 0C02E0AD */  jal   func_800B82B4
/* 025770 80024B70 00000000 */   nop   
.L80024B74:
/* 025774 80024B74 8FA40030 */  lw    $a0, 0x30($sp)
/* 025778 80024B78 0C01994B */  jal   func_8006652C
/* 02577C 80024B7C 00000000 */   nop   
/* 025780 80024B80 0C009FF1 */  jal   func_80027FC4
/* 025784 80024B84 02402025 */   move  $a0, $s2
/* 025788 80024B88 3C018012 */  lui   $at, %hi(D_8011B110) # $at, 0x8012
/* 02578C 80024B8C AC20B110 */  sw    $zero, %lo(D_8011B110)($at)
/* 025790 80024B90 3C018012 */  lui   $at, %hi(D_8011B114) # $at, 0x8012
/* 025794 80024B94 3C190001 */  lui   $t9, 1
/* 025798 80024B98 0C0044E4 */  jal   func_80011390
/* 02579C 80024B9C AC39B114 */   sw    $t9, %lo(D_8011B114)($at)
/* 0257A0 80024BA0 8FA40040 */  lw    $a0, 0x40($sp)
/* 0257A4 80024BA4 0C00323E */  jal   func_8000C8F8
/* 0257A8 80024BA8 00002825 */   move  $a1, $zero
/* 0257AC 80024BAC 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0257B0 80024BB0 0C00323E */  jal   func_8000C8F8
/* 0257B4 80024BB4 24050001 */   li    $a1, 1
/* 0257B8 80024BB8 8FB00038 */  lw    $s0, 0x38($sp)
/* 0257BC 80024BBC 8FA80030 */  lw    $t0, 0x30($sp)
/* 0257C0 80024BC0 3C138012 */  lui   $s3, %hi(D_8011D37C) # $s3, 0x8012
/* 0257C4 80024BC4 2673D37C */  addiu $s3, %lo(D_8011D37C) # addiu $s3, $s3, -0x2c84
/* 0257C8 80024BC8 8FA40034 */  lw    $a0, 0x34($sp)
/* 0257CC 80024BCC 8FA60030 */  lw    $a2, 0x30($sp)
/* 0257D0 80024BD0 02002825 */  move  $a1, $s0
/* 0257D4 80024BD4 0C00331F */  jal   func_8000CC7C
/* 0257D8 80024BD8 AE680000 */   sw    $t0, ($s3)
/* 0257DC 80024BDC 24040048 */  li    $a0, 72
/* 0257E0 80024BE0 0C002C08 */  jal   func_8000B020
/* 0257E4 80024BE4 24050040 */   li    $a1, 64
/* 0257E8 80024BE8 16200008 */  bnez  $s1, .L80024C0C
/* 0257EC 80024BEC 3C04800E */   lui   $a0, 0x800e
/* 0257F0 80024BF0 16000006 */  bnez  $s0, .L80024C0C
/* 0257F4 80024BF4 00000000 */   nop   
/* 0257F8 80024BF8 3C04800E */  lui   $a0, %hi(D_800DC87C) # $a0, 0x800e
/* 0257FC 80024BFC 0C030076 */  jal   func_800C01D8
/* 025800 80024C00 2484C87C */   addiu $a0, %lo(D_800DC87C) # addiu $a0, $a0, -0x3784
/* 025804 80024C04 10000004 */  b     .L80024C18
/* 025808 80024C08 8E640000 */   lw    $a0, ($s3)
.L80024C0C:
/* 02580C 80024C0C 0C030076 */  jal   func_800C01D8
/* 025810 80024C10 2484C874 */   addiu $a0, $a0, -0x378c
/* 025814 80024C14 8E640000 */  lw    $a0, ($s3)
.L80024C18:
/* 025818 80024C18 0C01994B */  jal   func_8006652C
/* 02581C 80024C1C 00000000 */   nop   
/* 025820 80024C20 8E690000 */  lw    $t1, ($s3)
/* 025824 80024C24 3C018012 */  lui   $at, %hi(D_8011B0FC) # $at, 0x8012
/* 025828 80024C28 3C13FFFF */  lui   $s3, (0xFFFF00FF >> 16) # lui $s3, 0xffff
/* 02582C 80024C2C 3C118012 */  lui   $s1, %hi(D_8011D350) # $s1, 0x8012
/* 025830 80024C30 3C128012 */  lui   $s2, %hi(D_8011D320) # $s2, 0x8012
/* 025834 80024C34 3C108012 */  lui   $s0, %hi(D_8011D338) # $s0, 0x8012
/* 025838 80024C38 AC20B0FC */  sw    $zero, %lo(D_8011B0FC)($at)
/* 02583C 80024C3C 2610D338 */  addiu $s0, %lo(D_8011D338) # addiu $s0, $s0, -0x2cc8
/* 025840 80024C40 2652D320 */  addiu $s2, %lo(D_8011D320) # addiu $s2, $s2, -0x2ce0
/* 025844 80024C44 2631D350 */  addiu $s1, %lo(D_8011D350) # addiu $s1, $s1, -0x2cb0
/* 025848 80024C48 367300FF */  ori   $s3, (0xFFFF00FF & 0xFFFF) # ori $s3, $s3, 0xff
/* 02584C 80024C4C AFA90030 */  sw    $t1, 0x30($sp)
.L80024C50:
/* 025850 80024C50 24040C80 */  li    $a0, 3200
/* 025854 80024C54 0C01C327 */  jal   func_80070C9C
/* 025858 80024C58 02602825 */   move  $a1, $s3
/* 02585C 80024C5C AE220000 */  sw    $v0, ($s1)
/* 025860 80024C60 24043200 */  li    $a0, 12800
/* 025864 80024C64 0C01C327 */  jal   func_80070C9C
/* 025868 80024C68 02602825 */   move  $a1, $s3
/* 02586C 80024C6C AE420000 */  sw    $v0, ($s2)
/* 025870 80024C70 24044E20 */  li    $a0, 20000
/* 025874 80024C74 0C01C327 */  jal   func_80070C9C
/* 025878 80024C78 02602825 */   move  $a1, $s3
/* 02587C 80024C7C 3C0A8012 */  lui   $t2, %hi(D_8011D348) # $t2, 0x8012
/* 025880 80024C80 254AD348 */  addiu $t2, %lo(D_8011D348) # addiu $t2, $t2, -0x2cb8
/* 025884 80024C84 26100004 */  addiu $s0, $s0, 4
/* 025888 80024C88 26310004 */  addiu $s1, $s1, 4
/* 02588C 80024C8C 26520004 */  addiu $s2, $s2, 4
/* 025890 80024C90 160AFFEF */  bne   $s0, $t2, .L80024C50
/* 025894 80024C94 AE02FFFC */   sw    $v0, -4($s0)
/* 025898 80024C98 3C108012 */  lui   $s0, %hi(D_8011B0C8) # $s0, 0x8012
/* 02589C 80024C9C 2610B0C8 */  addiu $s0, %lo(D_8011B0C8) # addiu $s0, $s0, -0x4f38
/* 0258A0 80024CA0 AE000000 */  sw    $zero, ($s0)
/* 0258A4 80024CA4 24040001 */  li    $a0, 1
/* 0258A8 80024CA8 24050001 */  li    $a1, 1
/* 0258AC 80024CAC 0C00B637 */  jal   func_8002D8DC
/* 0258B0 80024CB0 00003025 */   move  $a2, $zero
/* 0258B4 80024CB4 24040002 */  li    $a0, 2
/* 0258B8 80024CB8 24050002 */  li    $a1, 2
/* 0258BC 80024CBC 0C00B637 */  jal   func_8002D8DC
/* 0258C0 80024CC0 00003025 */   move  $a2, $zero
/* 0258C4 80024CC4 240B0001 */  li    $t3, 1
/* 0258C8 80024CC8 AE0B0000 */  sw    $t3, ($s0)
/* 0258CC 80024CCC 24040001 */  li    $a0, 1
/* 0258D0 80024CD0 24050001 */  li    $a1, 1
/* 0258D4 80024CD4 0C00B637 */  jal   func_8002D8DC
/* 0258D8 80024CD8 00003025 */   move  $a2, $zero
/* 0258DC 80024CDC 24040002 */  li    $a0, 2
/* 0258E0 80024CE0 24050002 */  li    $a1, 2
/* 0258E4 80024CE4 0C00B637 */  jal   func_8002D8DC
/* 0258E8 80024CE8 00003025 */   move  $a2, $zero
/* 0258EC 80024CEC AE000000 */  sw    $zero, ($s0)
/* 0258F0 80024CF0 3C02800E */  lui   $v0, %hi(D_800DC91C) # $v0, 0x800e
/* 0258F4 80024CF4 8C42C91C */  lw    $v0, %lo(D_800DC91C)($v0)
/* 0258F8 80024CF8 3C018012 */  lui   $at, %hi(D_8011B0E1) # $at, 0x8012
/* 0258FC 80024CFC 904C00B7 */  lbu   $t4, 0xb7($v0)
/* 025900 80024D00 00000000 */  nop   
/* 025904 80024D04 1180000D */  beqz  $t4, .L80024D3C
/* 025908 80024D08 8FBF0024 */   lw    $ra, 0x24($sp)
/* 02590C 80024D0C 904D00B4 */  lbu   $t5, 0xb4($v0)
/* 025910 80024D10 8FA40030 */  lw    $a0, 0x30($sp)
/* 025914 80024D14 A02DB0E1 */  sb    $t5, %lo(D_8011B0E1)($at)
/* 025918 80024D18 904E00B5 */  lbu   $t6, 0xb5($v0)
/* 02591C 80024D1C 3C018012 */  lui   $at, %hi(D_8011B0E2) # $at, 0x8012
/* 025920 80024D20 A02EB0E2 */  sb    $t6, %lo(D_8011B0E2)($at)
/* 025924 80024D24 904F00B6 */  lbu   $t7, 0xb6($v0)
/* 025928 80024D28 3C018012 */  lui   $at, %hi(D_8011B0E3) # $at, 0x8012
/* 02592C 80024D2C 24840001 */  addiu $a0, $a0, 1
/* 025930 80024D30 0C009544 */  jal   func_80025510
/* 025934 80024D34 A02FB0E3 */   sb    $t7, %lo(D_8011B0E3)($at)
/* 025938 80024D38 8FBF0024 */  lw    $ra, 0x24($sp)
.L80024D3C:
/* 02593C 80024D3C 8FB00014 */  lw    $s0, 0x14($sp)
/* 025940 80024D40 8FB10018 */  lw    $s1, 0x18($sp)
/* 025944 80024D44 8FB2001C */  lw    $s2, 0x1c($sp)
/* 025948 80024D48 8FB30020 */  lw    $s3, 0x20($sp)
/* 02594C 80024D4C 03E00008 */  jr    $ra
/* 025950 80024D50 27BD0028 */   addiu $sp, $sp, 0x28
