.late_rodata
glabel D_800E66F8
.double 0.87
glabel D_800E6700
.double 0.9
glabel D_800E6708
.double 0.3
glabel D_800E6710
.double 1.6
glabel D_800E6718
.double 0.025
glabel D_800E6720
.float 0.45
.word 0 # Padding
glabel D_800E6728
.double 0.97
glabel D_800E6730
.double 0.2
glabel D_800E6738
.double 0.2
glabel D_800E6740
.double 1.33
glabel D_800E6748
.double 0.53

.text
glabel func_80052D7C
/* 05397C 80052D7C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 053980 80052D80 AFBF0024 */  sw    $ra, 0x24($sp)
/* 053984 80052D84 AFA40040 */  sw    $a0, 0x40($sp)
/* 053988 80052D88 AFA60048 */  sw    $a2, 0x48($sp)
/* 05398C 80052D8C AFA7004C */  sw    $a3, 0x4c($sp)
/* 053990 80052D90 A3A00033 */  sb    $zero, 0x33($sp)
/* 053994 80052D94 90AE01FE */  lbu   $t6, 0x1fe($a1)
/* 053998 80052D98 24010001 */  li    $at, 1
/* 05399C 80052D9C 15C10007 */  bne   $t6, $at, .L80052DBC
/* 0539A0 80052DA0 00000000 */   nop   
/* 0539A4 80052DA4 84AF0000 */  lh    $t7, ($a1)
/* 0539A8 80052DA8 2401FFFF */  li    $at, -1
/* 0539AC 80052DAC 15E10003 */  bne   $t7, $at, .L80052DBC
/* 0539B0 80052DB0 2418003C */   li    $t8, 60
/* 0539B4 80052DB4 3C018012 */  lui   $at, %hi(gCurrentStickY) # $at, 0x8012
/* 0539B8 80052DB8 AC38D538 */  sw    $t8, %lo(gCurrentStickY)($at)
.L80052DBC:
/* 0539BC 80052DBC 90B901F0 */  lbu   $t9, 0x1f0($a1)
/* 0539C0 80052DC0 00000000 */  nop   
/* 0539C4 80052DC4 13200024 */  beqz  $t9, .L80052E58
/* 0539C8 80052DC8 00000000 */   nop   
/* 0539CC 80052DCC 84A80000 */  lh    $t0, ($a1)
/* 0539D0 80052DD0 2401FFFF */  li    $at, -1
/* 0539D4 80052DD4 11010004 */  beq   $t0, $at, .L80052DE8
/* 0539D8 80052DD8 3C038012 */   lui   $v1, %hi(gCurrentStickX) # $v1, 0x8012
/* 0539DC 80052DDC 80A301E1 */  lb    $v1, 0x1e1($a1)
/* 0539E0 80052DE0 10000004 */  b     .L80052DF4
/* 0539E4 80052DE4 00034880 */   sll   $t1, $v1, 2
.L80052DE8:
/* 0539E8 80052DE8 8C63D534 */  lw    $v1, %lo(gCurrentStickX)($v1)
/* 0539EC 80052DEC 00000000 */  nop   
/* 0539F0 80052DF0 00034880 */  sll   $t1, $v1, 2
.L80052DF4:
/* 0539F4 80052DF4 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0539F8 80052DF8 01234823 */  subu  $t1, $t1, $v1
/* 0539FC 80052DFC 00094840 */  sll   $t1, $t1, 1
/* 053A00 80052E00 012A0019 */  multu $t1, $t2
/* 053A04 80052E04 84A401A4 */  lh    $a0, 0x1a4($a1)
/* 053A08 80052E08 84AE01A0 */  lh    $t6, 0x1a0($a1)
/* 053A0C 80052E0C 3082FFFF */  andi  $v0, $a0, 0xffff
/* 053A10 80052E10 00021023 */  negu  $v0, $v0
/* 053A14 80052E14 34018001 */  li    $at, 32769
/* 053A18 80052E18 0041082A */  slt   $at, $v0, $at
/* 053A1C 80052E1C 00005812 */  mflo  $t3
/* 053A20 80052E20 000B6843 */  sra   $t5, $t3, 1
/* 053A24 80052E24 01CD7823 */  subu  $t7, $t6, $t5
/* 053A28 80052E28 14200004 */  bnez  $at, .L80052E3C
/* 053A2C 80052E2C A4AF01A0 */   sh    $t7, 0x1a0($a1)
/* 053A30 80052E30 3C01FFFF */  lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 053A34 80052E34 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 053A38 80052E38 00411021 */  addu  $v0, $v0, $at
.L80052E3C:
/* 053A3C 80052E3C 28418000 */  slti  $at, $v0, -0x8000
/* 053A40 80052E40 10200002 */  beqz  $at, .L80052E4C
/* 053A44 80052E44 3401FFFF */   li    $at, 65535
/* 053A48 80052E48 00411021 */  addu  $v0, $v0, $at
.L80052E4C:
/* 053A4C 80052E4C 0002C0C3 */  sra   $t8, $v0, 3
/* 053A50 80052E50 0098C821 */  addu  $t9, $a0, $t8
/* 053A54 80052E54 A4B901A4 */  sh    $t9, 0x1a4($a1)
.L80052E58:
/* 053A58 80052E58 8CA20018 */  lw    $v0, 0x18($a1)
/* 053A5C 80052E5C 00000000 */  nop   
/* 053A60 80052E60 10400005 */  beqz  $v0, .L80052E78
/* 053A64 80052E64 00402025 */   move  $a0, $v0
/* 053A68 80052E68 0C001223 */  jal   func_8000488C
/* 053A6C 80052E6C AFA50044 */   sw    $a1, 0x44($sp)
/* 053A70 80052E70 8FA50044 */  lw    $a1, 0x44($sp)
/* 053A74 80052E74 00000000 */  nop   
.L80052E78:
/* 053A78 80052E78 8CA20010 */  lw    $v0, 0x10($a1)
/* 053A7C 80052E7C 00000000 */  nop   
/* 053A80 80052E80 10400005 */  beqz  $v0, .L80052E98
/* 053A84 80052E84 00402025 */   move  $a0, $v0
/* 053A88 80052E88 0C001223 */  jal   func_8000488C
/* 053A8C 80052E8C AFA50044 */   sw    $a1, 0x44($sp)
/* 053A90 80052E90 8FA50044 */  lw    $a1, 0x44($sp)
/* 053A94 80052E94 00000000 */  nop   
.L80052E98:
/* 053A98 80052E98 8CA20014 */  lw    $v0, 0x14($a1)
/* 053A9C 80052E9C 00000000 */  nop   
/* 053AA0 80052EA0 10400005 */  beqz  $v0, .L80052EB8
/* 053AA4 80052EA4 00402025 */   move  $a0, $v0
/* 053AA8 80052EA8 0C001223 */  jal   func_8000488C
/* 053AAC 80052EAC AFA50044 */   sw    $a1, 0x44($sp)
/* 053AB0 80052EB0 8FA50044 */  lw    $a1, 0x44($sp)
/* 053AB4 80052EB4 00000000 */  nop   
.L80052EB8:
/* 053AB8 80052EB8 90A201FE */  lbu   $v0, 0x1fe($a1)
/* 053ABC 80052EBC 24010001 */  li    $at, 1
/* 053AC0 80052EC0 10410003 */  beq   $v0, $at, .L80052ED0
/* 053AC4 80052EC4 24010003 */   li    $at, 3
/* 053AC8 80052EC8 14410004 */  bne   $v0, $at, .L80052EDC
/* 053ACC 80052ECC 00000000 */   nop   
.L80052ED0:
/* 053AD0 80052ED0 80A801E1 */  lb    $t0, 0x1e1($a1)
/* 053AD4 80052ED4 00000000 */  nop   
/* 053AD8 80052ED8 A0A801E8 */  sb    $t0, 0x1e8($a1)
.L80052EDC:
/* 053ADC 80052EDC C4A600C0 */  lwc1  $f6, 0xc0($a1)
/* 053AE0 80052EE0 44802800 */  mtc1  $zero, $f5
/* 053AE4 80052EE4 44802000 */  mtc1  $zero, $f4
/* 053AE8 80052EE8 46003221 */  cvt.d.s $f8, $f6
/* 053AEC 80052EEC 46282032 */  c.eq.d $f4, $f8
/* 053AF0 80052EF0 00000000 */  nop   
/* 053AF4 80052EF4 45010063 */  bc1t  .L80053084
/* 053AF8 80052EF8 00000000 */   nop   
/* 053AFC 80052EFC 8FA90040 */  lw    $t1, 0x40($sp)
/* 053B00 80052F00 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 053B04 80052F04 C52A0020 */  lwc1  $f10, 0x20($t1)
/* 053B08 80052F08 44818800 */  mtc1  $at, $f17
/* 053B0C 80052F0C 44808000 */  mtc1  $zero, $f16
/* 053B10 80052F10 46005021 */  cvt.d.s $f0, $f10
/* 053B14 80052F14 4620803C */  c.lt.d $f16, $f0
/* 053B18 80052F18 44803000 */  mtc1  $zero, $f6
/* 053B1C 80052F1C 45000006 */  bc1f  .L80052F38
/* 053B20 80052F20 240F0001 */   li    $t7, 1
/* 053B24 80052F24 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 053B28 80052F28 44819000 */  mtc1  $at, $f18
/* 053B2C 80052F2C 00000000 */  nop   
/* 053B30 80052F30 E5320020 */  swc1  $f18, 0x20($t1)
/* 053B34 80052F34 46009021 */  cvt.d.s $f0, $f18
.L80052F38:
/* 053B38 80052F38 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 053B3C 80052F3C 44813800 */  mtc1  $at, $f7
/* 053B40 80052F40 8FAA0040 */  lw    $t2, 0x40($sp)
/* 053B44 80052F44 4626003C */  c.lt.d $f0, $f6
/* 053B48 80052F48 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 053B4C 80052F4C 45000004 */  bc1f  .L80052F60
/* 053B50 80052F50 3C0D8012 */   lui   $t5, %hi(gCurrentStickY) # $t5, 0x8012
/* 053B54 80052F54 44812000 */  mtc1  $at, $f4
/* 053B58 80052F58 00000000 */  nop   
/* 053B5C 80052F5C E5440020 */  swc1  $f4, 0x20($t2)
.L80052F60:
/* 053B60 80052F60 80AB01E1 */  lb    $t3, 0x1e1($a1)
/* 053B64 80052F64 3C028012 */  lui   $v0, %hi(gCurrentRacerInput) # $v0, 0x8012
/* 053B68 80052F68 A0AB01E8 */  sb    $t3, 0x1e8($a1)
/* 053B6C 80052F6C 8C42D528 */  lw    $v0, %lo(gCurrentRacerInput)($v0)
/* 053B70 80052F70 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 053B74 80052F74 304C8000 */  andi  $t4, $v0, 0x8000
/* 053B78 80052F78 1180000C */  beqz  $t4, .L80052FAC
/* 053B7C 80052F7C 304E4000 */   andi  $t6, $v0, 0x4000
/* 053B80 80052F80 C4A8002C */  lwc1  $f8, 0x2c($a1)
/* 053B84 80052F84 44818800 */  mtc1  $at, $f17
/* 053B88 80052F88 44808000 */  mtc1  $zero, $f16
/* 053B8C 80052F8C 460042A1 */  cvt.d.s $f10, $f8
/* 053B90 80052F90 46305481 */  sub.d $f18, $f10, $f16
/* 053B94 80052F94 3C028012 */  lui   $v0, %hi(gCurrentRacerInput) # $v0, 0x8012
/* 053B98 80052F98 462091A0 */  cvt.s.d $f6, $f18
/* 053B9C 80052F9C E4A6002C */  swc1  $f6, 0x2c($a1)
/* 053BA0 80052FA0 8C42D528 */  lw    $v0, %lo(gCurrentRacerInput)($v0)
/* 053BA4 80052FA4 00000000 */  nop   
/* 053BA8 80052FA8 304E4000 */  andi  $t6, $v0, 0x4000
.L80052FAC:
/* 053BAC 80052FAC 11C0000E */  beqz  $t6, .L80052FE8
/* 053BB0 80052FB0 00000000 */   nop   
/* 053BB4 80052FB4 8DADD538 */  lw    $t5, %lo(gCurrentStickY)($t5)
/* 053BB8 80052FB8 00000000 */  nop   
/* 053BBC 80052FBC 29A1FFE7 */  slti  $at, $t5, -0x19
/* 053BC0 80052FC0 10200009 */  beqz  $at, .L80052FE8
/* 053BC4 80052FC4 00000000 */   nop   
/* 053BC8 80052FC8 C4A4002C */  lwc1  $f4, 0x2c($a1)
/* 053BCC 80052FCC 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 053BD0 80052FD0 44815800 */  mtc1  $at, $f11
/* 053BD4 80052FD4 44805000 */  mtc1  $zero, $f10
/* 053BD8 80052FD8 46002221 */  cvt.d.s $f8, $f4
/* 053BDC 80052FDC 462A4400 */  add.d $f16, $f8, $f10
/* 053BE0 80052FE0 462084A0 */  cvt.s.d $f18, $f16
/* 053BE4 80052FE4 E4B2002C */  swc1  $f18, 0x2c($a1)
.L80052FE8:
/* 053BE8 80052FE8 3C01800E */  lui   $at, %hi(D_800E66F8 + 4) # $at, 0x800e
/* 053BEC 80052FEC A3AF0033 */  sb    $t7, 0x33($sp)
/* 053BF0 80052FF0 C4A60030 */  lwc1  $f6, 0x30($a1)
/* 053BF4 80052FF4 C42166F8 */  lwc1  $f1, %lo(D_800E66F8)($at)
/* 053BF8 80052FF8 C42066FC */  lwc1  $f0, %lo(D_800E66F8 + 4)($at)
/* 053BFC 80052FFC 46003121 */  cvt.d.s $f4, $f6
/* 053C00 80053000 46202202 */  mul.d $f8, $f4, $f0
/* 053C04 80053004 C4B0002C */  lwc1  $f16, 0x2c($a1)
/* 053C08 80053008 3C01800E */  lui   $at, %hi(D_800E6700) # $at, 0x800e
/* 053C0C 8005300C 460084A1 */  cvt.d.s $f18, $f16
/* 053C10 80053010 3C088012 */  lui   $t0, %hi(gCurrentStickX) # $t0, 0x8012
/* 053C14 80053014 46209182 */  mul.d $f6, $f18, $f0
/* 053C18 80053018 462042A0 */  cvt.s.d $f10, $f8
/* 053C1C 8005301C 3C078012 */  lui   $a3, %hi(D_8011D504) # $a3, 0x8012
/* 053C20 80053020 E4AA0030 */  swc1  $f10, 0x30($a1)
/* 053C24 80053024 3C068012 */  lui   $a2, %hi(D_8011D4F8) # $a2, 0x8012
/* 053C28 80053028 46203120 */  cvt.s.d $f4, $f6
/* 053C2C 8005302C 24C6D4F8 */  addiu $a2, %lo(D_8011D4F8) # addiu $a2, $a2, -0x2b08
/* 053C30 80053030 E4A4002C */  swc1  $f4, 0x2c($a1)
/* 053C34 80053034 8FA40040 */  lw    $a0, 0x40($sp)
/* 053C38 80053038 C4306704 */  lwc1  $f16, %lo(D_800E6700 + 4)($at)
/* 053C3C 8005303C C4880020 */  lwc1  $f8, 0x20($a0)
/* 053C40 80053040 C4316700 */  lwc1  $f17, %lo(D_800E6700)($at)
/* 053C44 80053044 460042A1 */  cvt.d.s $f10, $f8
/* 053C48 80053048 46305482 */  mul.d $f18, $f10, $f16
/* 053C4C 8005304C 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 053C50 80053050 44812000 */  mtc1  $at, $f4
/* 053C54 80053054 462091A0 */  cvt.s.d $f6, $f18
/* 053C58 80053058 E4860020 */  swc1  $f6, 0x20($a0)
/* 053C5C 8005305C 8D08D534 */  lw    $t0, %lo(gCurrentStickX)($t0)
/* 053C60 80053060 8FB90048 */  lw    $t9, 0x48($sp)
/* 053C64 80053064 80E7D504 */  lb    $a3, %lo(D_8011D504)($a3)
/* 053C68 80053068 AFA50044 */  sw    $a1, 0x44($sp)
/* 053C6C 8005306C E7A40018 */  swc1  $f4, 0x18($sp)
/* 053C70 80053070 AFA80014 */  sw    $t0, 0x14($sp)
/* 053C74 80053074 0C012538 */  jal   func_800494E0
/* 053C78 80053078 AFB90010 */   sw    $t9, 0x10($sp)
/* 053C7C 8005307C 8FA50044 */  lw    $a1, 0x44($sp)
/* 053C80 80053080 00000000 */  nop   
.L80053084:
/* 053C84 80053084 84A90000 */  lh    $t1, ($a1)
/* 053C88 80053088 2401FFFF */  li    $at, -1
/* 053C8C 8005308C 15210004 */  bne   $t1, $at, .L800530A0
/* 053C90 80053090 3C068012 */   lui   $a2, %hi(gCurrentCarSteerVel) # $a2, 0x8012
/* 053C94 80053094 80AA01E1 */  lb    $t2, 0x1e1($a1)
/* 053C98 80053098 00000000 */  nop   
/* 053C9C 8005309C A0AA01E8 */  sb    $t2, 0x1e8($a1)
.L800530A0:
/* 053CA0 800530A0 80A201D3 */  lb    $v0, 0x1d3($a1)
/* 053CA4 800530A4 3C01800E */  lui   $at, %hi(D_800E6708 + 4) # $at, 0x800e
/* 053CA8 800530A8 18400006 */  blez  $v0, .L800530C4
/* 053CAC 800530AC 24C6D554 */   addiu $a2, %lo(gCurrentCarSteerVel) # addiu $a2, $a2, -0x2aac
/* 053CB0 800530B0 8FAB0048 */  lw    $t3, 0x48($sp)
/* 053CB4 800530B4 00000000 */  nop   
/* 053CB8 800530B8 004B6023 */  subu  $t4, $v0, $t3
/* 053CBC 800530BC 10000002 */  b     .L800530C8
/* 053CC0 800530C0 A0AC01D3 */   sb    $t4, 0x1d3($a1)
.L800530C4:
/* 053CC4 800530C4 A0A001D3 */  sb    $zero, 0x1d3($a1)
.L800530C8:
/* 053CC8 800530C8 C4AA002C */  lwc1  $f10, 0x2c($a1)
/* 053CCC 800530CC 80A201E8 */  lb    $v0, 0x1e8($a1)
/* 053CD0 800530D0 C4296708 */  lwc1  $f9, %lo(D_800E6708)($at)
/* 053CD4 800530D4 C428670C */  lwc1  $f8, %lo(D_800E6708 + 4)($at)
/* 053CD8 800530D8 46005421 */  cvt.d.s $f16, $f10
/* 053CDC 800530DC 4630403C */  c.lt.d $f8, $f16
/* 053CE0 800530E0 00027080 */  sll   $t6, $v0, 2
/* 053CE4 800530E4 01C27023 */  subu  $t6, $t6, $v0
/* 053CE8 800530E8 45000007 */  bc1f  .L80053108
/* 053CEC 800530EC 000E1040 */   sll   $v0, $t6, 1
/* 053CF0 800530F0 80A201E1 */  lb    $v0, 0x1e1($a1)
/* 053CF4 800530F4 00000000 */  nop   
/* 053CF8 800530F8 00021023 */  negu  $v0, $v0
/* 053CFC 800530FC 00026880 */  sll   $t5, $v0, 2
/* 053D00 80053100 01A26823 */  subu  $t5, $t5, $v0
/* 053D04 80053104 000D1040 */  sll   $v0, $t5, 1
.L80053108:
/* 053D08 80053108 84AF01A0 */  lh    $t7, 0x1a0($a1)
/* 053D0C 8005310C 8CA80110 */  lw    $t0, 0x110($a1)
/* 053D10 80053110 01E2C823 */  subu  $t9, $t7, $v0
/* 053D14 80053114 A4B901A0 */  sh    $t9, 0x1a0($a1)
/* 053D18 80053118 ACC80000 */  sw    $t0, ($a2)
/* 053D1C 8005311C 80A901D3 */  lb    $t1, 0x1d3($a1)
/* 053D20 80053120 3C01C034 */  li    $at, 0xC0340000 # -2.812500
/* 053D24 80053124 1120000F */  beqz  $t1, .L80053164
/* 053D28 80053128 3C038012 */   lui   $v1, %hi(gCurrentStickY) # $v1, 0x8012
/* 053D2C 8005312C C4B2002C */  lwc1  $f18, 0x2c($a1)
/* 053D30 80053130 44813800 */  mtc1  $at, $f7
/* 053D34 80053134 44803000 */  mtc1  $zero, $f6
/* 053D38 80053138 46009021 */  cvt.d.s $f0, $f18
/* 053D3C 8005313C 4620303C */  c.lt.d $f6, $f0
/* 053D40 80053140 3C01800E */  lui   $at, %hi(D_800E6710 + 4) # $at, 0x800e
/* 053D44 80053144 45000007 */  bc1f  .L80053164
/* 053D48 80053148 00000000 */   nop   
/* 053D4C 8005314C C4256710 */  lwc1  $f5, %lo(D_800E6710)($at)
/* 053D50 80053150 C4246714 */  lwc1  $f4, %lo(D_800E6710 + 4)($at)
/* 053D54 80053154 00000000 */  nop   
/* 053D58 80053158 46240281 */  sub.d $f10, $f0, $f4
/* 053D5C 8005315C 46205220 */  cvt.s.d $f8, $f10
/* 053D60 80053160 E4A8002C */  swc1  $f8, 0x2c($a1)
.L80053164:
/* 053D64 80053164 8C63D538 */  lw    $v1, %lo(gCurrentStickY)($v1)
/* 053D68 80053168 8FAA0040 */  lw    $t2, 0x40($sp)
/* 053D6C 8005316C 28610032 */  slti  $at, $v1, 0x32
/* 053D70 80053170 10200004 */  beqz  $at, .L80053184
/* 053D74 80053174 2861FFCF */   slti  $at, $v1, -0x31
/* 053D78 80053178 14200002 */  bnez  $at, .L80053184
/* 053D7C 8005317C 00000000 */   nop   
/* 053D80 80053180 00001825 */  move  $v1, $zero
.L80053184:
/* 053D84 80053184 3C01800E */  lui   $at, %hi(D_800E6718 + 4) # $at, 0x800e
/* 053D88 80053188 C5500020 */  lwc1  $f16, 0x20($t2)
/* 053D8C 8005318C C4336718 */  lwc1  $f19, %lo(D_800E6718)($at)
/* 053D90 80053190 C432671C */  lwc1  $f18, %lo(D_800E6718 + 4)($at)
/* 053D94 80053194 46008021 */  cvt.d.s $f0, $f16
/* 053D98 80053198 46320182 */  mul.d $f6, $f0, $f18
/* 053D9C 8005319C C7A4004C */  lwc1  $f4, 0x4c($sp)
/* 053DA0 800531A0 3C018012 */  lui   $at, %hi(D_8011D56C) # $at, 0x8012
/* 053DA4 800531A4 460022A1 */  cvt.d.s $f10, $f4
/* 053DA8 800531A8 462A3202 */  mul.d $f8, $f6, $f10
/* 053DAC 800531AC 46280401 */  sub.d $f16, $f0, $f8
/* 053DB0 800531B0 462084A0 */  cvt.s.d $f18, $f16
/* 053DB4 800531B4 E5520020 */  swc1  $f18, 0x20($t2)
/* 053DB8 800531B8 90AB01F1 */  lbu   $t3, 0x1f1($a1)
/* 053DBC 800531BC C422D56C */  lwc1  $f2, %lo(D_8011D56C)($at)
/* 053DC0 800531C0 15600005 */  bnez  $t3, .L800531D8
/* 053DC4 800531C4 3C01800E */   lui   $at, %hi(D_800E6720) # $at, 0x800e
/* 053DC8 800531C8 90AC01F0 */  lbu   $t4, 0x1f0($a1)
/* 053DCC 800531CC 00000000 */  nop   
/* 053DD0 800531D0 11800010 */  beqz  $t4, .L80053214
/* 053DD4 800531D4 00000000 */   nop   
.L800531D8:
/* 053DD8 800531D8 8FAD0048 */  lw    $t5, 0x48($sp)
/* 053DDC 800531DC 84AE0160 */  lh    $t6, 0x160($a1)
/* 053DE0 800531E0 000D7880 */  sll   $t7, $t5, 2
/* 053DE4 800531E4 01ED7821 */  addu  $t7, $t7, $t5
/* 053DE8 800531E8 000F7A00 */  sll   $t7, $t7, 8
/* 053DEC 800531EC C4226720 */  lwc1  $f2, %lo(D_800E6720)($at)
/* 053DF0 800531F0 01CFC021 */  addu  $t8, $t6, $t7
/* 053DF4 800531F4 A4B80160 */  sh    $t8, 0x160($a1)
/* 053DF8 800531F8 8FA80048 */  lw    $t0, 0x48($sp)
/* 053DFC 800531FC 84B90162 */  lh    $t9, 0x162($a1)
/* 053E00 80053200 00084880 */  sll   $t1, $t0, 2
/* 053E04 80053204 01284823 */  subu  $t1, $t1, $t0
/* 053E08 80053208 00094A40 */  sll   $t1, $t1, 9
/* 053E0C 8005320C 03295021 */  addu  $t2, $t9, $t1
/* 053E10 80053210 A4AA0162 */  sh    $t2, 0x162($a1)
.L80053214:
/* 053E14 80053214 90A201FE */  lbu   $v0, 0x1fe($a1)
/* 053E18 80053218 24010001 */  li    $at, 1
/* 053E1C 8005321C 10410002 */  beq   $v0, $at, .L80053228
/* 053E20 80053220 24010003 */   li    $at, 3
/* 053E24 80053224 14410023 */  bne   $v0, $at, .L800532B4
.L80053228:
/* 053E28 80053228 3C01800E */   lui   $at, %hi(D_800E6728 + 4) # $at, 0x800e
/* 053E2C 8005322C C4A40030 */  lwc1  $f4, 0x30($a1)
/* 053E30 80053230 C4216728 */  lwc1  $f1, %lo(D_800E6728)($at)
/* 053E34 80053234 C420672C */  lwc1  $f0, %lo(D_800E6728 + 4)($at)
/* 053E38 80053238 460021A1 */  cvt.d.s $f6, $f4
/* 053E3C 8005323C 46203282 */  mul.d $f10, $f6, $f0
/* 053E40 80053240 C4B0002C */  lwc1  $f16, 0x2c($a1)
/* 053E44 80053244 28610033 */  slti  $at, $v1, 0x33
/* 053E48 80053248 460084A1 */  cvt.d.s $f18, $f16
/* 053E4C 8005324C 240B0001 */  li    $t3, 1
/* 053E50 80053250 46209102 */  mul.d $f4, $f18, $f0
/* 053E54 80053254 46205220 */  cvt.s.d $f8, $f10
/* 053E58 80053258 E4A80030 */  swc1  $f8, 0x30($a1)
/* 053E5C 8005325C 462021A0 */  cvt.s.d $f6, $f4
/* 053E60 80053260 E4A6002C */  swc1  $f6, 0x2c($a1)
/* 053E64 80053264 14200009 */  bnez  $at, .L8005328C
/* 053E68 80053268 A3AB0033 */   sb    $t3, 0x33($sp)
/* 053E6C 8005326C 3C01800E */  lui   $at, %hi(D_800E6730 + 4) # $at, 0x800e
/* 053E70 80053270 C4AA002C */  lwc1  $f10, 0x2c($a1)
/* 053E74 80053274 C4316730 */  lwc1  $f17, %lo(D_800E6730)($at)
/* 053E78 80053278 C4306734 */  lwc1  $f16, %lo(D_800E6730 + 4)($at)
/* 053E7C 8005327C 46005221 */  cvt.d.s $f8, $f10
/* 053E80 80053280 46304481 */  sub.d $f18, $f8, $f16
/* 053E84 80053284 46209120 */  cvt.s.d $f4, $f18
/* 053E88 80053288 E4A4002C */  swc1  $f4, 0x2c($a1)
.L8005328C:
/* 053E8C 8005328C 2861FFCE */  slti  $at, $v1, -0x32
/* 053E90 80053290 10200008 */  beqz  $at, .L800532B4
/* 053E94 80053294 3C01800E */   lui   $at, %hi(D_800E6738 + 4) # $at, 0x800e
/* 053E98 80053298 C4A6002C */  lwc1  $f6, 0x2c($a1)
/* 053E9C 8005329C C4296738 */  lwc1  $f9, %lo(D_800E6738)($at)
/* 053EA0 800532A0 C428673C */  lwc1  $f8, %lo(D_800E6738 + 4)($at)
/* 053EA4 800532A4 460032A1 */  cvt.d.s $f10, $f6
/* 053EA8 800532A8 46285400 */  add.d $f16, $f10, $f8
/* 053EAC 800532AC 462084A0 */  cvt.s.d $f18, $f16
/* 053EB0 800532B0 E4B2002C */  swc1  $f18, 0x2c($a1)
.L800532B4:
/* 053EB4 800532B4 83AC0033 */  lb    $t4, 0x33($sp)
/* 053EB8 800532B8 8FAD0040 */  lw    $t5, 0x40($sp)
/* 053EBC 800532BC 11800015 */  beqz  $t4, .L80053314
/* 053EC0 800532C0 28610033 */   slti  $at, $v1, 0x33
/* 053EC4 800532C4 ADA00074 */  sw    $zero, 0x74($t5)
/* 053EC8 800532C8 A0A001E6 */  sb    $zero, 0x1e6($a1)
/* 053ECC 800532CC 8FAE0048 */  lw    $t6, 0x48($sp)
/* 053ED0 800532D0 8CA2010C */  lw    $v0, 0x10c($a1)
/* 053ED4 800532D4 00A02025 */  move  $a0, $a1
/* 053ED8 800532D8 004E0019 */  multu $v0, $t6
/* 053EDC 800532DC 00007812 */  mflo  $t7
/* 053EE0 800532E0 000FC103 */  sra   $t8, $t7, 4
/* 053EE4 800532E4 00584023 */  subu  $t0, $v0, $t8
/* 053EE8 800532E8 ACA8010C */  sw    $t0, 0x10c($a1)
/* 053EEC 800532EC ACC00000 */  sw    $zero, ($a2)
/* 053EF0 800532F0 E7A2002C */  swc1  $f2, 0x2c($sp)
/* 053EF4 800532F4 AFA50044 */  sw    $a1, 0x44($sp)
/* 053EF8 800532F8 0C014D1E */  jal   handle_car_steering
/* 053EFC 800532FC AFA30038 */   sw    $v1, 0x38($sp)
/* 053F00 80053300 8FA30038 */  lw    $v1, 0x38($sp)
/* 053F04 80053304 8FA50044 */  lw    $a1, 0x44($sp)
/* 053F08 80053308 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 053F0C 8005330C 10000011 */  b     .L80053354
/* 053F10 80053310 80B901D3 */   lb    $t9, 0x1d3($a1)
.L80053314:
/* 053F14 80053314 14200006 */  bnez  $at, .L80053330
/* 053F18 80053318 3C01800E */   lui   $at, %hi(D_800E6740 + 4) # $at, 0x800e
/* 053F1C 8005331C C4276740 */  lwc1  $f7, %lo(D_800E6740)($at)
/* 053F20 80053320 C4266744 */  lwc1  $f6, %lo(D_800E6740 + 4)($at)
/* 053F24 80053324 46001121 */  cvt.d.s $f4, $f2
/* 053F28 80053328 46262282 */  mul.d $f10, $f4, $f6
/* 053F2C 8005332C 462050A0 */  cvt.s.d $f2, $f10
.L80053330:
/* 053F30 80053330 2861FFCE */  slti  $at, $v1, -0x32
/* 053F34 80053334 10200006 */  beqz  $at, .L80053350
/* 053F38 80053338 3C01800E */   lui   $at, %hi(D_800E6748 + 4) # $at, 0x800e
/* 053F3C 8005333C C4316748 */  lwc1  $f17, %lo(D_800E6748)($at)
/* 053F40 80053340 C430674C */  lwc1  $f16, %lo(D_800E6748 + 4)($at)
/* 053F44 80053344 46001221 */  cvt.d.s $f8, $f2
/* 053F48 80053348 46304482 */  mul.d $f18, $f8, $f16
/* 053F4C 8005334C 462090A0 */  cvt.s.d $f2, $f18
.L80053350:
/* 053F50 80053350 80B901D3 */  lb    $t9, 0x1d3($a1)
.L80053354:
/* 053F54 80053354 00031823 */  negu  $v1, $v1
/* 053F58 80053358 13200007 */  beqz  $t9, .L80053378
/* 053F5C 8005335C 00034980 */   sll   $t1, $v1, 6
/* 053F60 80053360 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 053F64 80053364 44813800 */  mtc1  $at, $f7
/* 053F68 80053368 44803000 */  mtc1  $zero, $f6
/* 053F6C 8005336C 46001121 */  cvt.d.s $f4, $f2
/* 053F70 80053370 46262282 */  mul.d $f10, $f4, $f6
/* 053F74 80053374 462050A0 */  cvt.s.d $f2, $f10
.L80053378:
/* 053F78 80053378 8FAB0040 */  lw    $t3, 0x40($sp)
/* 053F7C 8005337C 312AFFFF */  andi  $t2, $t1, 0xffff
/* 053F80 80053380 85640002 */  lh    $a0, 2($t3)
/* 053F84 80053384 34018001 */  li    $at, 32769
/* 053F88 80053388 308CFFFF */  andi  $t4, $a0, 0xffff
/* 053F8C 8005338C 014C1023 */  subu  $v0, $t2, $t4
/* 053F90 80053390 0041082A */  slt   $at, $v0, $at
/* 053F94 80053394 14200003 */  bnez  $at, .L800533A4
/* 053F98 80053398 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 053F9C 8005339C 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 053FA0 800533A0 00411021 */  addu  $v0, $v0, $at
.L800533A4:
/* 053FA4 800533A4 28418000 */  slti  $at, $v0, -0x8000
/* 053FA8 800533A8 10200002 */  beqz  $at, .L800533B4
/* 053FAC 800533AC 3401FFFF */   li    $at, 65535
/* 053FB0 800533B0 00411021 */  addu  $v0, $v0, $at
.L800533B4:
/* 053FB4 800533B4 8FAF0040 */  lw    $t7, 0x40($sp)
/* 053FB8 800533B8 000268C3 */  sra   $t5, $v0, 3
/* 053FBC 800533BC 008D7021 */  addu  $t6, $a0, $t5
/* 053FC0 800533C0 A5EE0002 */  sh    $t6, 2($t7)
/* 053FC4 800533C4 C7B0004C */  lwc1  $f16, 0x4c($sp)
/* 053FC8 800533C8 C5E80020 */  lwc1  $f8, 0x20($t7)
/* 053FCC 800533CC 46101482 */  mul.s $f18, $f2, $f16
/* 053FD0 800533D0 44803800 */  mtc1  $zero, $f7
/* 053FD4 800533D4 44803000 */  mtc1  $zero, $f6
/* 053FD8 800533D8 3C014034 */  li    $at, 0x40340000 # 2.812500
/* 053FDC 800533DC 46124101 */  sub.s $f4, $f8, $f18
/* 053FE0 800533E0 E5E40020 */  swc1  $f4, 0x20($t7)
/* 053FE4 800533E4 C4AA00C0 */  lwc1  $f10, 0xc0($a1)
/* 053FE8 800533E8 00000000 */  nop   
/* 053FEC 800533EC 46005421 */  cvt.d.s $f16, $f10
/* 053FF0 800533F0 46303032 */  c.eq.d $f6, $f16
/* 053FF4 800533F4 00000000 */  nop   
/* 053FF8 800533F8 45000019 */  bc1f  .L80053460
/* 053FFC 800533FC 8FA80040 */   lw    $t0, 0x40($sp)
/* 054000 80053400 44815800 */  mtc1  $at, $f11
/* 054004 80053404 44805000 */  mtc1  $zero, $f10
/* 054008 80053408 46002207 */  neg.s $f8, $f4
/* 05400C 8005340C 460044A1 */  cvt.d.s $f18, $f8
/* 054010 80053410 462A9182 */  mul.d $f6, $f18, $f10
/* 054014 80053414 4458F800 */  cfc1  $t8, $31
/* 054018 80053418 00000000 */  nop   
/* 05401C 8005341C 37010003 */  ori   $at, $t8, 3
/* 054020 80053420 38210002 */  xori  $at, $at, 2
/* 054024 80053424 44C1F800 */  ctc1  $at, $31
/* 054028 80053428 00000000 */  nop   
/* 05402C 8005342C 46203424 */  cvt.w.d $f16, $f6
/* 054030 80053430 44038000 */  mfc1  $v1, $f16
/* 054034 80053434 44D8F800 */  ctc1  $t8, $31
/* 054038 80053438 28610032 */  slti  $at, $v1, 0x32
/* 05403C 8005343C 10200003 */  beqz  $at, .L8005344C
/* 054040 80053440 28610080 */   slti  $at, $v1, 0x80
/* 054044 80053444 24030032 */  li    $v1, 50
/* 054048 80053448 28610080 */  slti  $at, $v1, 0x80
.L8005344C:
/* 05404C 8005344C 14200002 */  bnez  $at, .L80053458
/* 054050 80053450 00000000 */   nop   
/* 054054 80053454 2403007F */  li    $v1, 127
.L80053458:
/* 054058 80053458 A0A301E0 */  sb    $v1, 0x1e0($a1)
/* 05405C 8005345C 8FA80040 */  lw    $t0, 0x40($sp)
.L80053460:
/* 054060 80053460 00000000 */  nop   
/* 054064 80053464 AD000074 */  sw    $zero, 0x74($t0)
/* 054068 80053468 8FBF0024 */  lw    $ra, 0x24($sp)
/* 05406C 8005346C 27BD0040 */  addiu $sp, $sp, 0x40
/* 054070 80053470 03E00008 */  jr    $ra
/* 054074 80053474 00000000 */   nop   

