glabel func_80093A40
/* 094640 80093A40 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 094644 80093A44 AFBF001C */  sw    $ra, 0x1c($sp)
/* 094648 80093A48 AFB10018 */  sw    $s1, 0x18($sp)
/* 09464C 80093A4C AFB00014 */  sw    $s0, 0x14($sp)
/* 094650 80093A50 0C01C8A6 */  jal   func_80072298
/* 094654 80093A54 00002025 */   move  $a0, $zero
/* 094658 80093A58 0C01BAA4 */  jal   get_settings
/* 09465C 80093A5C 00000000 */   nop   
/* 094660 80093A60 3C11800E */  lui   $s1, %hi(D_800E098C) # $s1, 0x800e
/* 094664 80093A64 2631098C */  addiu $s1, %lo(D_800E098C) # addiu $s1, $s1, 0x98c
/* 094668 80093A68 240EFFFF */  li    $t6, -1
/* 09466C 80093A6C AFA20024 */  sw    $v0, 0x24($sp)
/* 094670 80093A70 AE2E0000 */  sw    $t6, ($s1)
/* 094674 80093A74 0C0270F6 */  jal   func_8009C3D8
/* 094678 80093A78 00008025 */   move  $s0, $zero
/* 09467C 80093A7C 18400014 */  blez  $v0, .L80093AD0
/* 094680 80093A80 00000000 */   nop   
/* 094684 80093A84 8E2F0000 */  lw    $t7, ($s1)
/* 094688 80093A88 00000000 */  nop   
/* 09468C 80093A8C 05E10010 */  bgez  $t7, .L80093AD0
/* 094690 80093A90 00000000 */   nop   
.L80093A94:
/* 094694 80093A94 0C01A94A */  jal   func_8006A528
/* 094698 80093A98 02002025 */   move  $a0, $s0
/* 09469C 80093A9C 30581000 */  andi  $t8, $v0, 0x1000
/* 0946A0 80093AA0 13000002 */  beqz  $t8, .L80093AAC
/* 0946A4 80093AA4 00000000 */   nop   
/* 0946A8 80093AA8 AE300000 */  sw    $s0, ($s1)
.L80093AAC:
/* 0946AC 80093AAC 0C0270F6 */  jal   func_8009C3D8
/* 0946B0 80093AB0 26100001 */   addiu $s0, $s0, 1
/* 0946B4 80093AB4 0202082A */  slt   $at, $s0, $v0
/* 0946B8 80093AB8 10200005 */  beqz  $at, .L80093AD0
/* 0946BC 80093ABC 00000000 */   nop   
/* 0946C0 80093AC0 8E390000 */  lw    $t9, ($s1)
/* 0946C4 80093AC4 00000000 */  nop   
/* 0946C8 80093AC8 0720FFF2 */  bltz  $t9, .L80093A94
/* 0946CC 80093ACC 00000000 */   nop   
.L80093AD0:
/* 0946D0 80093AD0 8E280000 */  lw    $t0, ($s1)
/* 0946D4 80093AD4 3C05800E */  lui   $a1, %hi(D_800E0984) # $a1, 0x800e
/* 0946D8 80093AD8 05010002 */  bgez  $t0, .L80093AE4
/* 0946DC 80093ADC 24A50984 */   addiu $a1, %lo(D_800E0984) # addiu $a1, $a1, 0x984
/* 0946E0 80093AE0 AE200000 */  sw    $zero, ($s1)
.L80093AE4:
/* 0946E4 80093AE4 3C06800E */  lui   $a2, %hi(D_800DF4A0) # $a2, 0x800e
/* 0946E8 80093AE8 24C6F4A0 */  addiu $a2, %lo(D_800DF4A0) # addiu $a2, $a2, -0xb60
/* 0946EC 80093AEC 8CC30000 */  lw    $v1, ($a2)
/* 0946F0 80093AF0 3C118012 */  lui   $s1, %hi(D_80126A40) # $s1, 0x8012
/* 0946F4 80093AF4 8C690188 */  lw    $t1, 0x188($v1)
/* 0946F8 80093AF8 26316A40 */  addiu $s1, %lo(D_80126A40) # addiu $s1, $s1, 0x6a40
/* 0946FC 80093AFC 24070001 */  li    $a3, 1
/* 094700 80093B00 ACA70000 */  sw    $a3, ($a1)
/* 094704 80093B04 3C0A800E */  lui   $t2, %hi(gTrophyRaceWorldId) # $t2, 0x800e
/* 094708 80093B08 AE290000 */  sw    $t1, ($s1)
/* 09470C 80093B0C 8D4A0FE8 */  lw    $t2, %lo(gTrophyRaceWorldId)($t2)
/* 094710 80093B10 8FAB0024 */  lw    $t3, 0x24($sp)
/* 094714 80093B14 15400073 */  bnez  $t2, .L80093CE4
/* 094718 80093B18 00000000 */   nop   
/* 09471C 80093B1C 91640049 */  lbu   $a0, 0x49($t3)
/* 094720 80093B20 0C01AC53 */  jal   func_8006B14C
/* 094724 80093B24 00000000 */   nop   
/* 094728 80093B28 8FAC0024 */  lw    $t4, 0x24($sp)
/* 09472C 80093B2C 3C05800E */  lui   $a1, %hi(D_800E0984) # $a1, 0x800e
/* 094730 80093B30 918D0048 */  lbu   $t5, 0x48($t4)
/* 094734 80093B34 3C06800E */  lui   $a2, %hi(D_800DF4A0) # $a2, 0x800e
/* 094738 80093B38 24C6F4A0 */  addiu $a2, %lo(D_800DF4A0) # addiu $a2, $a2, -0xb60
/* 09473C 80093B3C 24A50984 */  addiu $a1, %lo(D_800E0984) # addiu $a1, $a1, 0x984
/* 094740 80093B40 24070001 */  li    $a3, 1
/* 094744 80093B44 15A00012 */  bnez  $t5, .L80093B90
/* 094748 80093B48 00408025 */   move  $s0, $v0
/* 09474C 80093B4C 0C008D07 */  jal   func_8002341C
/* 094750 80093B50 00000000 */   nop   
/* 094754 80093B54 3C05800E */  lui   $a1, %hi(D_800E0984) # $a1, 0x800e
/* 094758 80093B58 3C06800E */  lui   $a2, %hi(D_800DF4A0) # $a2, 0x800e
/* 09475C 80093B5C 24C6F4A0 */  addiu $a2, %lo(D_800DF4A0) # addiu $a2, $a2, -0xb60
/* 094760 80093B60 24A50984 */  addiu $a1, %lo(D_800E0984) # addiu $a1, $a1, 0x984
/* 094764 80093B64 1040000A */  beqz  $v0, .L80093B90
/* 094768 80093B68 24070001 */   li    $a3, 1
/* 09476C 80093B6C 8CCE0000 */  lw    $t6, ($a2)
/* 094770 80093B70 24180002 */  li    $t8, 2
/* 094774 80093B74 8DCF0200 */  lw    $t7, 0x200($t6)
/* 094778 80093B78 ACB80000 */  sw    $t8, ($a1)
/* 09477C 80093B7C 3C02800E */  lui   $v0, %hi(D_800DF4B8) # $v0, 0x800e
/* 094780 80093B80 AE2F0004 */  sw    $t7, 4($s1)
/* 094784 80093B84 8C42F4B8 */  lw    $v0, %lo(D_800DF4B8)($v0)
/* 094788 80093B88 1000003F */  b     .L80093C88
/* 09478C 80093B8C 00000000 */   nop   
.L80093B90:
/* 094790 80093B90 8FB90024 */  lw    $t9, 0x24($sp)
/* 094794 80093B94 24010008 */  li    $at, 8
/* 094798 80093B98 93280048 */  lbu   $t0, 0x48($t9)
/* 09479C 80093B9C 3C02800E */  lui   $v0, 0x800e
/* 0947A0 80093BA0 1900002B */  blez  $t0, .L80093C50
/* 0947A4 80093BA4 00000000 */   nop   
/* 0947A8 80093BA8 12010029 */  beq   $s0, $at, .L80093C50
/* 0947AC 80093BAC 32090040 */   andi  $t1, $s0, 0x40
/* 0947B0 80093BB0 11200012 */  beqz  $t1, .L80093BFC
/* 0947B4 80093BB4 3C02800E */   lui   $v0, %hi(D_800DF4B8) # $v0, 0x800e
/* 0947B8 80093BB8 8CC30000 */  lw    $v1, ($a2)
/* 0947BC 80093BBC 3C0B800E */  lui   $t3, %hi(D_800DF4B8) # $t3, 0x800e
/* 0947C0 80093BC0 8C6A01FC */  lw    $t2, 0x1fc($v1)
/* 0947C4 80093BC4 240E0003 */  li    $t6, 3
/* 0947C8 80093BC8 AE2A0004 */  sw    $t2, 4($s1)
/* 0947CC 80093BCC 8D6BF4B8 */  lw    $t3, %lo(D_800DF4B8)($t3)
/* 0947D0 80093BD0 00000000 */  nop   
/* 0947D4 80093BD4 15600004 */  bnez  $t3, .L80093BE8
/* 0947D8 80093BD8 00000000 */   nop   
/* 0947DC 80093BDC 8C6C0064 */  lw    $t4, 0x64($v1)
/* 0947E0 80093BE0 10000004 */  b     .L80093BF4
/* 0947E4 80093BE4 AE2C0008 */   sw    $t4, 8($s1)
.L80093BE8:
/* 0947E8 80093BE8 8C6D0060 */  lw    $t5, 0x60($v1)
/* 0947EC 80093BEC 00000000 */  nop   
/* 0947F0 80093BF0 AE2D0008 */  sw    $t5, 8($s1)
.L80093BF4:
/* 0947F4 80093BF4 10000013 */  b     .L80093C44
/* 0947F8 80093BF8 ACAE0000 */   sw    $t6, ($a1)
.L80093BFC:
/* 0947FC 80093BFC 16000011 */  bnez  $s0, .L80093C44
/* 094800 80093C00 24090003 */   li    $t1, 3
/* 094804 80093C04 8CC30000 */  lw    $v1, ($a2)
/* 094808 80093C08 3C18800E */  lui   $t8, %hi(D_800DF4B8) # $t8, 0x800e
/* 09480C 80093C0C 8C6F01F8 */  lw    $t7, 0x1f8($v1)
/* 094810 80093C10 00000000 */  nop   
/* 094814 80093C14 AE2F0004 */  sw    $t7, 4($s1)
/* 094818 80093C18 8F18F4B8 */  lw    $t8, %lo(D_800DF4B8)($t8)
/* 09481C 80093C1C 00000000 */  nop   
/* 094820 80093C20 17000004 */  bnez  $t8, .L80093C34
/* 094824 80093C24 00000000 */   nop   
/* 094828 80093C28 8C790064 */  lw    $t9, 0x64($v1)
/* 09482C 80093C2C 10000004 */  b     .L80093C40
/* 094830 80093C30 AE390008 */   sw    $t9, 8($s1)
.L80093C34:
/* 094834 80093C34 8C680060 */  lw    $t0, 0x60($v1)
/* 094838 80093C38 00000000 */  nop   
/* 09483C 80093C3C AE280008 */  sw    $t0, 8($s1)
.L80093C40:
/* 094840 80093C40 ACA90000 */  sw    $t1, ($a1)
.L80093C44:
/* 094844 80093C44 8C42F4B8 */  lw    $v0, %lo(D_800DF4B8)($v0)
/* 094848 80093C48 1000000F */  b     .L80093C88
/* 09484C 80093C4C 00000000 */   nop   
.L80093C50:
/* 094850 80093C50 8C42F4B8 */  lw    $v0, -0xb48($v0)
/* 094854 80093C54 24010008 */  li    $at, 8
/* 094858 80093C58 1440000B */  bnez  $v0, .L80093C88
/* 09485C 80093C5C 00000000 */   nop   
/* 094860 80093C60 16010009 */  bne   $s0, $at, .L80093C88
/* 094864 80093C64 00000000 */   nop   
/* 094868 80093C68 8CC30000 */  lw    $v1, ($a2)
/* 09486C 80093C6C 240C0003 */  li    $t4, 3
/* 094870 80093C70 8C6A01F8 */  lw    $t2, 0x1f8($v1)
/* 094874 80093C74 00000000 */  nop   
/* 094878 80093C78 AE2A0004 */  sw    $t2, 4($s1)
/* 09487C 80093C7C 8C6B0064 */  lw    $t3, 0x64($v1)
/* 094880 80093C80 ACAC0000 */  sw    $t4, ($a1)
/* 094884 80093C84 AE2B0008 */  sw    $t3, 8($s1)
.L80093C88:
/* 094888 80093C88 3C03800E */  lui   $v1, %hi(D_800DF4A0) # $v1, 0x800e
/* 09488C 80093C8C 8C63F4A0 */  lw    $v1, %lo(D_800DF4A0)($v1)
/* 094890 80093C90 14E2000C */  bne   $a3, $v0, .L80093CC4
/* 094894 80093C94 3C0D800E */   lui   $t5, %hi(D_800DF4BC) # $t5, 0x800e
/* 094898 80093C98 8DADF4BC */  lw    $t5, %lo(D_800DF4BC)($t5)
/* 09489C 80093C9C 00000000 */  nop   
/* 0948A0 80093CA0 14ED0008 */  bne   $a3, $t5, .L80093CC4
/* 0948A4 80093CA4 00000000 */   nop   
/* 0948A8 80093CA8 8CA20000 */  lw    $v0, ($a1)
/* 0948AC 80093CAC 8C6E0068 */  lw    $t6, 0x68($v1)
/* 0948B0 80093CB0 00027880 */  sll   $t7, $v0, 2
/* 0948B4 80093CB4 022FC021 */  addu  $t8, $s1, $t7
/* 0948B8 80093CB8 24590001 */  addiu $t9, $v0, 1
/* 0948BC 80093CBC AF0E0000 */  sw    $t6, ($t8)
/* 0948C0 80093CC0 ACB90000 */  sw    $t9, ($a1)
.L80093CC4:
/* 0948C4 80093CC4 8CA20000 */  lw    $v0, ($a1)
/* 0948C8 80093CC8 8C68020C */  lw    $t0, 0x20c($v1)
/* 0948CC 80093CCC 00024880 */  sll   $t1, $v0, 2
/* 0948D0 80093CD0 02295021 */  addu  $t2, $s1, $t1
/* 0948D4 80093CD4 244B0001 */  addiu $t3, $v0, 1
/* 0948D8 80093CD8 AD480000 */  sw    $t0, ($t2)
/* 0948DC 80093CDC 10000008 */  b     .L80093D00
/* 0948E0 80093CE0 ACAB0000 */   sw    $t3, ($a1)
.L80093CE4:
/* 0948E4 80093CE4 8CA20000 */  lw    $v0, ($a1)
/* 0948E8 80093CE8 8C6C0204 */  lw    $t4, 0x204($v1)
/* 0948EC 80093CEC 00026880 */  sll   $t5, $v0, 2
/* 0948F0 80093CF0 022D7821 */  addu  $t7, $s1, $t5
/* 0948F4 80093CF4 244E0001 */  addiu $t6, $v0, 1
/* 0948F8 80093CF8 ADEC0000 */  sw    $t4, ($t7)
/* 0948FC 80093CFC ACAE0000 */  sw    $t6, ($a1)
.L80093D00:
/* 094900 80093D00 3C018012 */  lui   $at, %hi(D_80126A68) # $at, 0x8012
/* 094904 80093D04 AC206A68 */  sw    $zero, %lo(D_80126A68)($at)
/* 094908 80093D08 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 09490C 80093D0C AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 094910 80093D10 3C01800E */  lui   $at, %hi(D_800DF47C) # $at, 0x800e
/* 094914 80093D14 AC20F47C */  sw    $zero, %lo(D_800DF47C)($at)
/* 094918 80093D18 3C018012 */  lui   $at, %hi(D_801263C4) # $at, 0x8012
/* 09491C 80093D1C AC2763C4 */  sw    $a3, %lo(D_801263C4)($at)
/* 094920 80093D20 3C01800E */  lui   $at, %hi(D_800E0988) # $at, 0x800e
/* 094924 80093D24 0C026F97 */  jal   func_8009BE5C
/* 094928 80093D28 AC200988 */   sw    $zero, %lo(D_800E0988)($at)
/* 09492C 80093D2C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 094930 80093D30 8FB00014 */  lw    $s0, 0x14($sp)
/* 094934 80093D34 8FB10018 */  lw    $s1, 0x18($sp)
/* 094938 80093D38 03E00008 */  jr    $ra
/* 09493C 80093D3C 27BD0030 */   addiu $sp, $sp, 0x30

