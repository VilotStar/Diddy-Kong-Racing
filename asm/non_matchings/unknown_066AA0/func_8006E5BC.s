glabel func_8006E5BC
/* 06F1BC 8006E5BC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 06F1C0 8006E5C0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 06F1C4 8006E5C4 AFB60030 */  sw    $s6, 0x30($sp)
/* 06F1C8 8006E5C8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 06F1CC 8006E5CC AFB40028 */  sw    $s4, 0x28($sp)
/* 06F1D0 8006E5D0 AFB30024 */  sw    $s3, 0x24($sp)
/* 06F1D4 8006E5D4 AFB20020 */  sw    $s2, 0x20($sp)
/* 06F1D8 8006E5D8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 06F1DC 8006E5DC 0C0270F2 */  jal   func_8009C3C8
/* 06F1E0 8006E5E0 AFB00018 */   sw    $s0, 0x18($sp)
/* 06F1E4 8006E5E4 3C108012 */  lui   $s0, %hi(gSettingsPtr) # $s0, 0x8012
/* 06F1E8 8006E5E8 26103510 */  addiu $s0, %lo(gSettingsPtr) # addiu $s0, $s0, 0x3510
/* 06F1EC 8006E5EC 8E0E0000 */  lw    $t6, ($s0)
/* 06F1F0 8006E5F0 00008825 */  move  $s1, $zero
/* 06F1F4 8006E5F4 00009825 */  move  $s3, $zero
/* 06F1F8 8006E5F8 24160007 */  li    $s6, 7
/* 06F1FC 8006E5FC 24150005 */  li    $s5, 5
/* 06F200 8006E600 24140008 */  li    $s4, 8
/* 06F204 8006E604 24120006 */  li    $s2, 6
/* 06F208 8006E608 A1C2004A */  sb    $v0, 0x4a($t6)
.L8006E60C:
/* 06F20C 8006E60C 8E0F0000 */  lw    $t7, ($s0)
/* 06F210 8006E610 02202025 */  move  $a0, $s1
/* 06F214 8006E614 01F3C021 */  addu  $t8, $t7, $s3
/* 06F218 8006E618 0C02708A */  jal   func_8009C228
/* 06F21C 8006E61C A3000058 */   sb    $zero, 0x58($t8)
/* 06F220 8006E620 8E190000 */  lw    $t9, ($s0)
/* 06F224 8006E624 00000000 */  nop   
/* 06F228 8006E628 03334021 */  addu  $t0, $t9, $s3
/* 06F22C 8006E62C A1020059 */  sb    $v0, 0x59($t0)
/* 06F230 8006E630 8E030000 */  lw    $v1, ($s0)
/* 06F234 8006E634 00000000 */  nop   
/* 06F238 8006E638 9069004A */  lbu   $t1, 0x4a($v1)
/* 06F23C 8006E63C 00735021 */  addu  $t2, $v1, $s3
/* 06F240 8006E640 29210002 */  slti  $at, $t1, 2
/* 06F244 8006E644 14200003 */  bnez  $at, .L8006E654
/* 06F248 8006E648 00000000 */   nop   
/* 06F24C 8006E64C 1000000E */  b     .L8006E688
/* 06F250 8006E650 A151005A */   sb    $s1, 0x5a($t2)
.L8006E654:
/* 06F254 8006E654 0C027B20 */  jal   is_in_two_player_adventure
/* 06F258 8006E658 00000000 */   nop   
/* 06F25C 8006E65C 10400006 */  beqz  $v0, .L8006E678
/* 06F260 8006E660 00000000 */   nop   
/* 06F264 8006E664 8E0C0000 */  lw    $t4, ($s0)
/* 06F268 8006E668 02B15823 */  subu  $t3, $s5, $s1
/* 06F26C 8006E66C 01936821 */  addu  $t5, $t4, $s3
/* 06F270 8006E670 10000005 */  b     .L8006E688
/* 06F274 8006E674 A1AB005A */   sb    $t3, 0x5a($t5)
.L8006E678:
/* 06F278 8006E678 8E0F0000 */  lw    $t7, ($s0)
/* 06F27C 8006E67C 02D17023 */  subu  $t6, $s6, $s1
/* 06F280 8006E680 01F3C021 */  addu  $t8, $t7, $s3
/* 06F284 8006E684 A30E005A */  sb    $t6, 0x5a($t8)
.L8006E688:
/* 06F288 8006E688 8E190000 */  lw    $t9, ($s0)
/* 06F28C 8006E68C 00001025 */  move  $v0, $zero
/* 06F290 8006E690 03334021 */  addu  $t0, $t9, $s3
/* 06F294 8006E694 A100005B */  sb    $zero, 0x5b($t0)
.L8006E698:
/* 06F298 8006E698 00115080 */  sll   $t2, $s1, 2
/* 06F29C 8006E69C 8E090000 */  lw    $t1, ($s0)
/* 06F2A0 8006E6A0 01515023 */  subu  $t2, $t2, $s1
/* 06F2A4 8006E6A4 000A50C0 */  sll   $t2, $t2, 3
/* 06F2A8 8006E6A8 012A6021 */  addu  $t4, $t1, $t2
/* 06F2AC 8006E6AC 01825821 */  addu  $t3, $t4, $v0
/* 06F2B0 8006E6B0 24420002 */  addiu $v0, $v0, 2
/* 06F2B4 8006E6B4 28410008 */  slti  $at, $v0, 8
/* 06F2B8 8006E6B8 1420FFF7 */  bnez  $at, .L8006E698
/* 06F2BC 8006E6BC A560005C */   sh    $zero, 0x5c($t3)
/* 06F2C0 8006E6C0 8E0D0000 */  lw    $t5, ($s0)
/* 06F2C4 8006E6C4 00001025 */  move  $v0, $zero
/* 06F2C8 8006E6C8 01B37821 */  addu  $t7, $t5, $s3
/* 06F2CC 8006E6CC A5E00064 */  sh    $zero, 0x64($t7)
.L8006E6D0:
/* 06F2D0 8006E6D0 0011C080 */  sll   $t8, $s1, 2
/* 06F2D4 8006E6D4 8E0E0000 */  lw    $t6, ($s0)
/* 06F2D8 8006E6D8 0311C023 */  subu  $t8, $t8, $s1
/* 06F2DC 8006E6DC 0018C0C0 */  sll   $t8, $t8, 3
/* 06F2E0 8006E6E0 01D8C821 */  addu  $t9, $t6, $t8
/* 06F2E4 8006E6E4 03224021 */  addu  $t0, $t9, $v0
/* 06F2E8 8006E6E8 24420002 */  addiu $v0, $v0, 2
/* 06F2EC 8006E6EC 1452FFF8 */  bne   $v0, $s2, .L8006E6D0
/* 06F2F0 8006E6F0 A5000066 */   sh    $zero, 0x66($t0)
/* 06F2F4 8006E6F4 26310001 */  addiu $s1, $s1, 1
/* 06F2F8 8006E6F8 1634FFC4 */  bne   $s1, $s4, .L8006E60C
/* 06F2FC 8006E6FC 26730018 */   addiu $s3, $s3, 0x18
/* 06F300 8006E700 8E090000 */  lw    $t1, ($s0)
/* 06F304 8006E704 00000000 */  nop   
/* 06F308 8006E708 A1200114 */  sb    $zero, 0x114($t1)
/* 06F30C 8006E70C 8E0A0000 */  lw    $t2, ($s0)
/* 06F310 8006E710 00000000 */  nop   
/* 06F314 8006E714 A1400115 */  sb    $zero, 0x115($t2)
/* 06F318 8006E718 8E0C0000 */  lw    $t4, ($s0)
/* 06F31C 8006E71C 00000000 */  nop   
/* 06F320 8006E720 A1800116 */  sb    $zero, 0x116($t4)
/* 06F324 8006E724 8E0B0000 */  lw    $t3, ($s0)
/* 06F328 8006E728 00000000 */  nop   
/* 06F32C 8006E72C A1600117 */  sb    $zero, 0x117($t3)
/* 06F330 8006E730 8E0D0000 */  lw    $t5, ($s0)
/* 06F334 8006E734 00000000 */  nop   
/* 06F338 8006E738 A1A00048 */  sb    $zero, 0x48($t5)
/* 06F33C 8006E73C 8E0F0000 */  lw    $t7, ($s0)
/* 06F340 8006E740 00000000 */  nop   
/* 06F344 8006E744 A1E00049 */  sb    $zero, 0x49($t7)
/* 06F348 8006E748 8FBF0034 */  lw    $ra, 0x34($sp)
/* 06F34C 8006E74C 8FB60030 */  lw    $s6, 0x30($sp)
/* 06F350 8006E750 8FB5002C */  lw    $s5, 0x2c($sp)
/* 06F354 8006E754 8FB40028 */  lw    $s4, 0x28($sp)
/* 06F358 8006E758 8FB30024 */  lw    $s3, 0x24($sp)
/* 06F35C 8006E75C 8FB20020 */  lw    $s2, 0x20($sp)
/* 06F360 8006E760 8FB1001C */  lw    $s1, 0x1c($sp)
/* 06F364 8006E764 8FB00018 */  lw    $s0, 0x18($sp)
/* 06F368 8006E768 03E00008 */  jr    $ra
/* 06F36C 8006E76C 27BD0038 */   addiu $sp, $sp, 0x38

