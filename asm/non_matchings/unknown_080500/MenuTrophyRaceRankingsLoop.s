glabel MenuTrophyRaceRankingsLoop
/* 099BD4 80098FD4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 099BD8 80098FD8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 099BDC 80098FDC AFA40050 */  sw    $a0, 0x50($sp)
/* 099BE0 80098FE0 0C01BAA4 */  jal   func_8006EA90
/* 099BE4 80098FE4 AFA0003C */   sw    $zero, 0x3c($sp)
/* 099BE8 80098FE8 3C05800E */  lui   $a1, %hi(D_800DF47C) # $a1, 0x800e
/* 099BEC 80098FEC 24A5F47C */  addiu $a1, %lo(D_800DF47C) # addiu $a1, $a1, -0xb84
/* 099BF0 80098FF0 8CA30000 */  lw    $v1, ($a1)
/* 099BF4 80098FF4 8FA40050 */  lw    $a0, 0x50($sp)
/* 099BF8 80098FF8 2861FFED */  slti  $at, $v1, -0x13
/* 099BFC 80098FFC 14200008 */  bnez  $at, .L80099020
/* 099C00 80099000 00405825 */   move  $t3, $v0
/* 099C04 80099004 28610014 */  slti  $at, $v1, 0x14
/* 099C08 80099008 10200005 */  beqz  $at, .L80099020
/* 099C0C 8009900C 00000000 */   nop   
/* 099C10 80099010 0C0263AF */  jal   func_80098EBC
/* 099C14 80099014 AFA2002C */   sw    $v0, 0x2c($sp)
/* 099C18 80099018 8FAB002C */  lw    $t3, 0x2c($sp)
/* 099C1C 8009901C 00000000 */  nop   
.L80099020:
/* 099C20 80099020 0C026FC8 */  jal   func_8009BF20
/* 099C24 80099024 AFAB002C */   sw    $t3, 0x2c($sp)
/* 099C28 80099028 3C028012 */  lui   $v0, %hi(D_801263E0) # $v0, 0x8012
/* 099C2C 8009902C 8C4263E0 */  lw    $v0, %lo(D_801263E0)($v0)
/* 099C30 80099030 8FA40050 */  lw    $a0, 0x50($sp)
/* 099C34 80099034 3C05800E */  lui   $a1, %hi(D_800DF47C) # $a1, 0x800e
/* 099C38 80099038 8FAB002C */  lw    $t3, 0x2c($sp)
/* 099C3C 8009903C 1040000B */  beqz  $v0, .L8009906C
/* 099C40 80099040 24A5F47C */   addiu $a1, %lo(D_800DF47C) # addiu $a1, $a1, -0xb84
/* 099C44 80099044 24010001 */  li    $at, 1
/* 099C48 80099048 1041001B */  beq   $v0, $at, .L800990B8
/* 099C4C 8009904C 24010002 */   li    $at, 2
/* 099C50 80099050 10410026 */  beq   $v0, $at, .L800990EC
/* 099C54 80099054 3C038012 */   lui   $v1, %hi(D_801263D8) # $v1, 0x8012
/* 099C58 80099058 24010003 */  li    $at, 3
/* 099C5C 8009905C 104100B1 */  beq   $v0, $at, .L80099324
/* 099C60 80099060 00000000 */   nop   
/* 099C64 80099064 10000161 */  b     .L800995EC
/* 099C68 80099068 8FBF001C */   lw    $ra, 0x1c($sp)
.L8009906C:
/* 099C6C 8009906C 0C0207D3 */  jal   func_80081F4C
/* 099C70 80099070 00000000 */   nop   
/* 099C74 80099074 1040015C */  beqz  $v0, .L800995E8
/* 099C78 80099078 240E0001 */   li    $t6, 1
/* 099C7C 8009907C 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 099C80 80099080 AC2E63E0 */  sw    $t6, %lo(D_801263E0)($at)
/* 099C84 80099084 0C0261DD */  jal   func_80098774
/* 099C88 80099088 24040001 */   li    $a0, 1
/* 099C8C 8009908C 44800000 */  mtc1  $zero, $f0
/* 099C90 80099090 3C04800E */  lui   $a0, %hi(D_800E1048) # $a0, 0x800e
/* 099C94 80099094 44060000 */  mfc1  $a2, $f0
/* 099C98 80099098 44070000 */  mfc1  $a3, $f0
/* 099C9C 8009909C 24841048 */  addiu $a0, %lo(D_800E1048) # addiu $a0, $a0, 0x1048
/* 099CA0 800990A0 3C053F00 */  lui   $a1, 0x3f00
/* 099CA4 800990A4 AFA00010 */  sw    $zero, 0x10($sp)
/* 099CA8 800990A8 0C020795 */  jal   func_80081E54
/* 099CAC 800990AC AFA00014 */   sw    $zero, 0x14($sp)
/* 099CB0 800990B0 1000014E */  b     .L800995EC
/* 099CB4 800990B4 8FBF001C */   lw    $ra, 0x1c($sp)
.L800990B8:
/* 099CB8 800990B8 0C0207D3 */  jal   func_80081F4C
/* 099CBC 800990BC 00000000 */   nop   
/* 099CC0 800990C0 10400149 */  beqz  $v0, .L800995E8
/* 099CC4 800990C4 240F0002 */   li    $t7, 2
/* 099CC8 800990C8 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 099CCC 800990CC 3C05800E */  lui   $a1, %hi(D_800E1048) # $a1, 0x800e
/* 099CD0 800990D0 AC2F63E0 */  sw    $t7, %lo(D_801263E0)($at)
/* 099CD4 800990D4 24A51048 */  addiu $a1, %lo(D_800E1048) # addiu $a1, $a1, 0x1048
/* 099CD8 800990D8 24040001 */  li    $a0, 1
/* 099CDC 800990DC 0C02087B */  jal   DrawMenuText
/* 099CE0 800990E0 3C063F80 */   lui   $a2, 0x3f80
/* 099CE4 800990E4 10000141 */  b     .L800995EC
/* 099CE8 800990E8 8FBF001C */   lw    $ra, 0x1c($sp)
.L800990EC:
/* 099CEC 800990EC 246363D8 */  addiu $v1, %lo(D_801263D8) # addiu $v1, $v1, 0x63d8
/* 099CF0 800990F0 8C780000 */  lw    $t8, ($v1)
/* 099CF4 800990F4 3C07800E */  lui   $a3, %hi(D_800E0FE4) # $a3, 0x800e
/* 099CF8 800990F8 0304C821 */  addu  $t9, $t8, $a0
/* 099CFC 800990FC 2B21000B */  slti  $at, $t9, 0xb
/* 099D00 80099100 14200026 */  bnez  $at, .L8009919C
/* 099D04 80099104 AC790000 */   sw    $t9, ($v1)
/* 099D08 80099108 272DFFF6 */  addiu $t5, $t9, -0xa
/* 099D0C 8009910C AC6D0000 */  sw    $t5, ($v1)
/* 099D10 80099110 8CE70FE4 */  lw    $a3, %lo(D_800E0FE4)($a3)
/* 099D14 80099114 00004025 */  move  $t0, $zero
/* 099D18 80099118 18E00019 */  blez  $a3, .L80099180
/* 099D1C 8009911C 00002825 */   move  $a1, $zero
/* 099D20 80099120 3C038012 */  lui   $v1, %hi(D_801263F8) # $v1, 0x8012
/* 099D24 80099124 246363F8 */  addiu $v1, %lo(D_801263F8) # addiu $v1, $v1, 0x63f8
/* 099D28 80099128 24060018 */  li    $a2, 24
.L8009912C:
/* 099D2C 8009912C 8C640000 */  lw    $a0, ($v1)
/* 099D30 80099130 00000000 */  nop   
/* 099D34 80099134 1880000E */  blez  $a0, .L80099170
/* 099D38 80099138 00000000 */   nop   
/* 099D3C 8009913C 00A60019 */  multu $a1, $a2
/* 099D40 80099140 248EFFFF */  addiu $t6, $a0, -1
/* 099D44 80099144 AC6E0000 */  sw    $t6, ($v1)
/* 099D48 80099148 3C07800E */  lui   $a3, %hi(D_800E0FE4) # $a3, 0x800e
/* 099D4C 8009914C 24080001 */  li    $t0, 1
/* 099D50 80099150 00007812 */  mflo  $t7
/* 099D54 80099154 016F1021 */  addu  $v0, $t3, $t7
/* 099D58 80099158 8C580054 */  lw    $t8, 0x54($v0)
/* 099D5C 8009915C 00000000 */  nop   
/* 099D60 80099160 27190001 */  addiu $t9, $t8, 1
/* 099D64 80099164 AC590054 */  sw    $t9, 0x54($v0)
/* 099D68 80099168 8CE70FE4 */  lw    $a3, %lo(D_800E0FE4)($a3)
/* 099D6C 8009916C 00000000 */  nop   
.L80099170:
/* 099D70 80099170 24A50001 */  addiu $a1, $a1, 1
/* 099D74 80099174 00A7082A */  slt   $at, $a1, $a3
/* 099D78 80099178 1420FFEC */  bnez  $at, .L8009912C
/* 099D7C 8009917C 24630004 */   addiu $v1, $v1, 4
.L80099180:
/* 099D80 80099180 11000006 */  beqz  $t0, .L8009919C
/* 099D84 80099184 2404005E */   li    $a0, 94
/* 099D88 80099188 00002825 */  move  $a1, $zero
/* 099D8C 8009918C 0C000741 */  jal   func_80001D04
/* 099D90 80099190 AFAB002C */   sw    $t3, 0x2c($sp)
/* 099D94 80099194 8FAB002C */  lw    $t3, 0x2c($sp)
/* 099D98 80099198 00000000 */  nop   
.L8009919C:
/* 099D9C 8009919C 3C068012 */  lui   $a2, %hi(D_80126A68) # $a2, 0x8012
/* 099DA0 800991A0 24C66A68 */  addiu $a2, %lo(D_80126A68) # addiu $a2, $a2, 0x6a68
/* 099DA4 800991A4 3C0D800E */  lui   $t5, %hi(D_800DF4BC) # $t5, 0x800e
/* 099DA8 800991A8 8CC20000 */  lw    $v0, ($a2)
/* 099DAC 800991AC 8DADF4BC */  lw    $t5, %lo(D_800DF4BC)($t5)
/* 099DB0 800991B0 00004025 */  move  $t0, $zero
/* 099DB4 800991B4 00002825 */  move  $a1, $zero
/* 099DB8 800991B8 19A00023 */  blez  $t5, .L80099248
/* 099DBC 800991BC AFA20040 */   sw    $v0, 0x40($sp)
/* 099DC0 800991C0 3C078012 */  lui   $a3, %hi(D_80126464) # $a3, 0x8012
/* 099DC4 800991C4 24E76464 */  addiu $a3, %lo(D_80126464) # addiu $a3, $a3, 0x6464
.L800991C8:
/* 099DC8 800991C8 00A02025 */  move  $a0, $a1
/* 099DCC 800991CC AFA5004C */  sw    $a1, 0x4c($sp)
/* 099DD0 800991D0 AFA70020 */  sw    $a3, 0x20($sp)
/* 099DD4 800991D4 AFA80044 */  sw    $t0, 0x44($sp)
/* 099DD8 800991D8 0C01A955 */  jal   func_8006A554
/* 099DDC 800991DC AFAB002C */   sw    $t3, 0x2c($sp)
/* 099DE0 800991E0 8FA70020 */  lw    $a3, 0x20($sp)
/* 099DE4 800991E4 8FA80044 */  lw    $t0, 0x44($sp)
/* 099DE8 800991E8 80E30000 */  lb    $v1, ($a3)
/* 099DEC 800991EC 8FA5004C */  lw    $a1, 0x4c($sp)
/* 099DF0 800991F0 3C068012 */  lui   $a2, %hi(D_80126A68) # $a2, 0x8012
/* 099DF4 800991F4 8FAB002C */  lw    $t3, 0x2c($sp)
/* 099DF8 800991F8 24C66A68 */  addiu $a2, %lo(D_80126A68) # addiu $a2, $a2, 0x6a68
/* 099DFC 800991FC 04610005 */  bgez  $v1, .L80099214
/* 099E00 80099200 01024025 */   or    $t0, $t0, $v0
/* 099E04 80099204 8CCE0000 */  lw    $t6, ($a2)
/* 099E08 80099208 00000000 */  nop   
/* 099E0C 8009920C 25CF0001 */  addiu $t7, $t6, 1
/* 099E10 80099210 ACCF0000 */  sw    $t7, ($a2)
.L80099214:
/* 099E14 80099214 18600005 */  blez  $v1, .L8009922C
/* 099E18 80099218 3C0D800E */   lui   $t5, %hi(D_800DF4BC) # $t5, 0x800e
/* 099E1C 8009921C 8CD80000 */  lw    $t8, ($a2)
/* 099E20 80099220 00000000 */  nop   
/* 099E24 80099224 2719FFFF */  addiu $t9, $t8, -1
/* 099E28 80099228 ACD90000 */  sw    $t9, ($a2)
.L8009922C:
/* 099E2C 8009922C 8DADF4BC */  lw    $t5, %lo(D_800DF4BC)($t5)
/* 099E30 80099230 24A50001 */  addiu $a1, $a1, 1
/* 099E34 80099234 00AD082A */  slt   $at, $a1, $t5
/* 099E38 80099238 1420FFE3 */  bnez  $at, .L800991C8
/* 099E3C 8009923C 24E70001 */   addiu $a3, $a3, 1
/* 099E40 80099240 8CC20000 */  lw    $v0, ($a2)
/* 099E44 80099244 00000000 */  nop   
.L80099248:
/* 099E48 80099248 04410003 */  bgez  $v0, .L80099258
/* 099E4C 8009924C 3C038012 */   lui   $v1, %hi(D_80126C14) # $v1, 0x8012
/* 099E50 80099250 ACC00000 */  sw    $zero, ($a2)
/* 099E54 80099254 00001025 */  move  $v0, $zero
.L80099258:
/* 099E58 80099258 8C636C14 */  lw    $v1, %lo(D_80126C14)($v1)
/* 099E5C 8009925C 240400EB */  li    $a0, 235
/* 099E60 80099260 0043082A */  slt   $at, $v0, $v1
/* 099E64 80099264 14200003 */  bnez  $at, .L80099274
/* 099E68 80099268 00002825 */   move  $a1, $zero
/* 099E6C 8009926C 2462FFFF */  addiu $v0, $v1, -1
/* 099E70 80099270 ACC20000 */  sw    $v0, ($a2)
.L80099274:
/* 099E74 80099274 8FAF0040 */  lw    $t7, 0x40($sp)
/* 099E78 80099278 00000000 */  nop   
/* 099E7C 8009927C 11E20008 */  beq   $t7, $v0, .L800992A0
/* 099E80 80099280 31189000 */   andi  $t8, $t0, 0x9000
/* 099E84 80099284 AFA80044 */  sw    $t0, 0x44($sp)
/* 099E88 80099288 0C000741 */  jal   func_80001D04
/* 099E8C 8009928C AFAB002C */   sw    $t3, 0x2c($sp)
/* 099E90 80099290 8FA80044 */  lw    $t0, 0x44($sp)
/* 099E94 80099294 8FAB002C */  lw    $t3, 0x2c($sp)
/* 099E98 80099298 00000000 */  nop   
/* 099E9C 8009929C 31189000 */  andi  $t8, $t0, 0x9000
.L800992A0:
/* 099EA0 800992A0 130000D1 */  beqz  $t8, .L800995E8
/* 099EA4 800992A4 2404FF80 */   li    $a0, -128
/* 099EA8 800992A8 00002825 */  move  $a1, $zero
/* 099EAC 800992AC AFA0004C */  sw    $zero, 0x4c($sp)
/* 099EB0 800992B0 0C000326 */  jal   func_80000C98
/* 099EB4 800992B4 AFAB002C */   sw    $t3, 0x2c($sp)
/* 099EB8 800992B8 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 099EBC 800992BC 0C030076 */  jal   func_800C01D8
/* 099EC0 800992C0 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 099EC4 800992C4 3C0D800E */  lui   $t5, %hi(D_800E0FE4) # $t5, 0x800e
/* 099EC8 800992C8 8DAD0FE4 */  lw    $t5, %lo(D_800E0FE4)($t5)
/* 099ECC 800992CC 8FA5004C */  lw    $a1, 0x4c($sp)
/* 099ED0 800992D0 8FAB002C */  lw    $t3, 0x2c($sp)
/* 099ED4 800992D4 24190003 */  li    $t9, 3
/* 099ED8 800992D8 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 099EDC 800992DC 19A000C2 */  blez  $t5, .L800995E8
/* 099EE0 800992E0 AC3963E0 */   sw    $t9, %lo(D_801263E0)($at)
/* 099EE4 800992E4 3C038012 */  lui   $v1, %hi(D_801263F8) # $v1, 0x8012
/* 099EE8 800992E8 246363F8 */  addiu $v1, %lo(D_801263F8) # addiu $v1, $v1, 0x63f8
/* 099EEC 800992EC 01601025 */  move  $v0, $t3
.L800992F0:
/* 099EF0 800992F0 8C4E0054 */  lw    $t6, 0x54($v0)
/* 099EF4 800992F4 8C6F0000 */  lw    $t7, ($v1)
/* 099EF8 800992F8 3C19800E */  lui   $t9, %hi(D_800E0FE4) # $t9, 0x800e
/* 099EFC 800992FC 01CFC021 */  addu  $t8, $t6, $t7
/* 099F00 80099300 AC580054 */  sw    $t8, 0x54($v0)
/* 099F04 80099304 8F390FE4 */  lw    $t9, %lo(D_800E0FE4)($t9)
/* 099F08 80099308 24A50001 */  addiu $a1, $a1, 1
/* 099F0C 8009930C 00B9082A */  slt   $at, $a1, $t9
/* 099F10 80099310 24630004 */  addiu $v1, $v1, 4
/* 099F14 80099314 1420FFF6 */  bnez  $at, .L800992F0
/* 099F18 80099318 24420018 */   addiu $v0, $v0, 0x18
/* 099F1C 8009931C 100000B3 */  b     .L800995EC
/* 099F20 80099320 8FBF001C */   lw    $ra, 0x1c($sp)
.L80099324:
/* 099F24 80099324 8CAD0000 */  lw    $t5, ($a1)
/* 099F28 80099328 00000000 */  nop   
/* 099F2C 8009932C 01A47021 */  addu  $t6, $t5, $a0
/* 099F30 80099330 29C1001F */  slti  $at, $t6, 0x1f
/* 099F34 80099334 142000AC */  bnez  $at, .L800995E8
/* 099F38 80099338 ACAE0000 */   sw    $t6, ($a1)
/* 099F3C 8009933C 0C026580 */  jal   func_80099600
/* 099F40 80099340 AFAB002C */   sw    $t3, 0x2c($sp)
/* 099F44 80099344 0C031588 */  jal   func_800C5620
/* 099F48 80099348 24040007 */   li    $a0, 7
/* 099F4C 8009934C 0C031525 */  jal   func_800C5494
/* 099F50 80099350 24040007 */   li    $a0, 7
/* 099F54 80099354 3C18800E */  lui   $t8, %hi(D_800E0FEC) # $t8, 0x800e
/* 099F58 80099358 8F180FEC */  lw    $t8, %lo(D_800E0FEC)($t8)
/* 099F5C 8009935C 8FAB002C */  lw    $t3, 0x2c($sp)
/* 099F60 80099360 2B010004 */  slti  $at, $t8, 4
/* 099F64 80099364 10200005 */  beqz  $at, .L8009937C
/* 099F68 80099368 3C07800E */   lui   $a3, %hi(D_800E0FE4) # $a3, 0x800e
/* 099F6C 8009936C 0C0204F4 */  jal   MenuInit
/* 099F70 80099370 24040014 */   li    $a0, 20
/* 099F74 80099374 1000009D */  b     .L800995EC
/* 099F78 80099378 8FBF001C */   lw    $ra, 0x1c($sp)
.L8009937C:
/* 099F7C 8009937C 8CE70FE4 */  lw    $a3, %lo(D_800E0FE4)($a3)
/* 099F80 80099380 00001825 */  move  $v1, $zero
/* 099F84 80099384 18E0002B */  blez  $a3, .L80099434
/* 099F88 80099388 00002825 */   move  $a1, $zero
/* 099F8C 8009938C 3C068012 */  lui   $a2, %hi(D_80126420) # $a2, 0x8012
/* 099F90 80099390 3C0A8012 */  lui   $t2, %hi(D_80126438) # $t2, 0x8012
/* 099F94 80099394 3C088012 */  lui   $t0, %hi(D_80126430) # $t0, 0x8012
/* 099F98 80099398 8FAC0034 */  lw    $t4, 0x34($sp)
/* 099F9C 8009939C 25086430 */  addiu $t0, %lo(D_80126430) # addiu $t0, $t0, 0x6430
/* 099FA0 800993A0 254A6438 */  addiu $t2, %lo(D_80126438) # addiu $t2, $t2, 0x6438
/* 099FA4 800993A4 24C66420 */  addiu $a2, %lo(D_80126420) # addiu $a2, $a2, 0x6420
/* 099FA8 800993A8 24090018 */  li    $t1, 24
.L800993AC:
/* 099FAC 800993AC 90D90000 */  lbu   $t9, ($a2)
/* 099FB0 800993B0 01056821 */  addu  $t5, $t0, $a1
/* 099FB4 800993B4 1320001A */  beqz  $t9, .L80099420
/* 099FB8 800993B8 00000000 */   nop   
/* 099FBC 800993BC 91AE0000 */  lbu   $t6, ($t5)
/* 099FC0 800993C0 0143C021 */  addu  $t8, $t2, $v1
/* 099FC4 800993C4 01C90019 */  multu $t6, $t1
/* 099FC8 800993C8 010C6821 */  addu  $t5, $t0, $t4
/* 099FCC 800993CC 00007812 */  mflo  $t7
/* 099FD0 800993D0 016F2021 */  addu  $a0, $t3, $t7
/* 099FD4 800993D4 80820059 */  lb    $v0, 0x59($a0)
/* 099FD8 800993D8 14600005 */  bnez  $v1, .L800993F0
/* 099FDC 800993DC 00000000 */   nop   
/* 099FE0 800993E0 00A06025 */  move  $t4, $a1
/* 099FE4 800993E4 A3020000 */  sb    $v0, ($t8)
/* 099FE8 800993E8 1000000D */  b     .L80099420
/* 099FEC 800993EC 24630001 */   addiu $v1, $v1, 1
.L800993F0:
/* 099FF0 800993F0 91AE0000 */  lbu   $t6, ($t5)
/* 099FF4 800993F4 8C990054 */  lw    $t9, 0x54($a0)
/* 099FF8 800993F8 01C90019 */  multu $t6, $t1
/* 099FFC 800993FC 01437021 */  addu  $t6, $t2, $v1
/* 09A000 80099400 00007812 */  mflo  $t7
/* 09A004 80099404 016FC021 */  addu  $t8, $t3, $t7
/* 09A008 80099408 8F0D0054 */  lw    $t5, 0x54($t8)
/* 09A00C 8009940C 00000000 */  nop   
/* 09A010 80099410 172D0003 */  bne   $t9, $t5, .L80099420
/* 09A014 80099414 00000000 */   nop   
/* 09A018 80099418 A1C20000 */  sb    $v0, ($t6)
/* 09A01C 8009941C 24630001 */  addiu $v1, $v1, 1
.L80099420:
/* 09A020 80099420 24A50001 */  addiu $a1, $a1, 1
/* 09A024 80099424 00A7082A */  slt   $at, $a1, $a3
/* 09A028 80099428 1420FFE0 */  bnez  $at, .L800993AC
/* 09A02C 8009942C 24C60001 */   addiu $a2, $a2, 1
/* 09A030 80099430 AFAC0034 */  sw    $t4, 0x34($sp)
.L80099434:
/* 09A034 80099434 3C0F800E */  lui   $t7, %hi(D_800DF4BC) # $t7, 0x800e
/* 09A038 80099438 8DEFF4BC */  lw    $t7, %lo(D_800DF4BC)($t7)
/* 09A03C 8009943C 3C0A8012 */  lui   $t2, %hi(D_80126438) # $t2, 0x8012
/* 09A040 80099440 8FAC0034 */  lw    $t4, 0x34($sp)
/* 09A044 80099444 24010001 */  li    $at, 1
/* 09A048 80099448 15E1000C */  bne   $t7, $at, .L8009947C
/* 09A04C 8009944C 254A6438 */   addiu $t2, %lo(D_80126438) # addiu $t2, $t2, 0x6438
/* 09A050 80099450 AFA30048 */  sw    $v1, 0x48($sp)
/* 09A054 80099454 AFAB002C */  sw    $t3, 0x2c($sp)
/* 09A058 80099458 0C027B20 */  jal   is_in_two_player_adventure
/* 09A05C 8009945C AFAC0034 */   sw    $t4, 0x34($sp)
/* 09A060 80099460 8FA30048 */  lw    $v1, 0x48($sp)
/* 09A064 80099464 3C0A8012 */  lui   $t2, %hi(D_80126438) # $t2, 0x8012
/* 09A068 80099468 8FAB002C */  lw    $t3, 0x2c($sp)
/* 09A06C 8009946C 8FAC0034 */  lw    $t4, 0x34($sp)
/* 09A070 80099470 14400002 */  bnez  $v0, .L8009947C
/* 09A074 80099474 254A6438 */   addiu $t2, %lo(D_80126438) # addiu $t2, $t2, 0x6438
/* 09A078 80099478 00001825 */  move  $v1, $zero
.L8009947C:
/* 09A07C 8009947C 2418FFFF */  li    $t8, -1
/* 09A080 80099480 0143C821 */  addu  $t9, $t2, $v1
/* 09A084 80099484 A3380000 */  sb    $t8, ($t9)
/* 09A088 80099488 3C0D800E */  lui   $t5, %hi(D_800DF4B8) # $t5, 0x800e
/* 09A08C 8009948C 8DADF4B8 */  lw    $t5, %lo(D_800DF4B8)($t5)
/* 09A090 80099490 24010001 */  li    $at, 1
/* 09A094 80099494 15A1000C */  bne   $t5, $at, .L800994C8
/* 09A098 80099498 240F0001 */   li    $t7, 1
/* 09A09C 8009949C 29810003 */  slti  $at, $t4, 3
/* 09A0A0 800994A0 14200007 */  bnez  $at, .L800994C0
/* 09A0A4 800994A4 240E0105 */   li    $t6, 261
/* 09A0A8 800994A8 2404000F */  li    $a0, 15
/* 09A0AC 800994AC 0C0204F4 */  jal   MenuInit
/* 09A0B0 800994B0 AFAC0034 */   sw    $t4, 0x34($sp)
/* 09A0B4 800994B4 8FAC0034 */  lw    $t4, 0x34($sp)
/* 09A0B8 800994B8 10000033 */  b     .L80099588
/* 09A0BC 800994BC 29810003 */   slti  $at, $t4, 3
.L800994C0:
/* 09A0C0 800994C0 10000030 */  b     .L80099584
/* 09A0C4 800994C4 AFAE003C */   sw    $t6, 0x3c($sp)
.L800994C8:
/* 09A0C8 800994C8 AFAF003C */  sw    $t7, 0x3c($sp)
/* 09A0CC 800994CC 91640048 */  lbu   $a0, 0x48($t3)
/* 09A0D0 800994D0 AFAC0034 */  sw    $t4, 0x34($sp)
/* 09A0D4 800994D4 0C01AC75 */  jal   func_8006B1D4
/* 09A0D8 800994D8 AFAB002C */   sw    $t3, 0x2c($sp)
/* 09A0DC 800994DC 8FAB002C */  lw    $t3, 0x2c($sp)
/* 09A0E0 800994E0 3C03800E */  lui   $v1, %hi(D_800DF450) # $v1, 0x800e
/* 09A0E4 800994E4 8FAC0034 */  lw    $t4, 0x34($sp)
/* 09A0E8 800994E8 2463F450 */  addiu $v1, %lo(D_800DF450) # addiu $v1, $v1, -0xbb0
/* 09A0EC 800994EC A1620049 */  sb    $v0, 0x49($t3)
/* 09A0F0 800994F0 80780000 */  lb    $t8, ($v1)
/* 09A0F4 800994F4 00000000 */  nop   
/* 09A0F8 800994F8 13000023 */  beqz  $t8, .L80099588
/* 09A0FC 800994FC 29810003 */   slti  $at, $t4, 3
/* 09A100 80099500 A0600000 */  sb    $zero, ($v1)
/* 09A104 80099504 91790049 */  lbu   $t9, 0x49($t3)
/* 09A108 80099508 29810003 */  slti  $at, $t4, 3
/* 09A10C 8009950C 372D0200 */  ori   $t5, $t9, 0x200
/* 09A110 80099510 1020001C */  beqz  $at, .L80099584
/* 09A114 80099514 AFAD003C */   sw    $t5, 0x3c($sp)
/* 09A118 80099518 91650048 */  lbu   $a1, 0x48($t3)
/* 09A11C 8009951C 9564000E */  lhu   $a0, 0xe($t3)
/* 09A120 80099520 24A5FFFF */  addiu $a1, $a1, -1
/* 09A124 80099524 00057040 */  sll   $t6, $a1, 1
/* 09A128 80099528 24180003 */  li    $t8, 3
/* 09A12C 8009952C 030C1023 */  subu  $v0, $t8, $t4
/* 09A130 80099530 01C41807 */  srav  $v1, $a0, $t6
/* 09A134 80099534 306F0003 */  andi  $t7, $v1, 3
/* 09A138 80099538 30590003 */  andi  $t9, $v0, 3
/* 09A13C 8009953C 01F9082A */  slt   $at, $t7, $t9
/* 09A140 80099540 01C02825 */  move  $a1, $t6
/* 09A144 80099544 1020000F */  beqz  $at, .L80099584
/* 09A148 80099548 03201025 */   move  $v0, $t9
/* 09A14C 8009954C 240D0003 */  li    $t5, 3
/* 09A150 80099550 01CD7004 */  sllv  $t6, $t5, $t6
/* 09A154 80099554 01C07827 */  not   $t7, $t6
/* 09A158 80099558 008FC824 */  and   $t9, $a0, $t7
/* 09A15C 8009955C 00A26804 */  sllv  $t5, $v0, $a1
/* 09A160 80099560 A579000E */  sh    $t9, 0xe($t3)
/* 09A164 80099564 032D7025 */  or    $t6, $t9, $t5
/* 09A168 80099568 A56E000E */  sh    $t6, 0xe($t3)
/* 09A16C 8009956C 0C027068 */  jal   get_save_file_index
/* 09A170 80099570 AFAC0034 */   sw    $t4, 0x34($sp)
/* 09A174 80099574 0C01BB12 */  jal   func_8006EC48
/* 09A178 80099578 00402025 */   move  $a0, $v0
/* 09A17C 8009957C 8FAC0034 */  lw    $t4, 0x34($sp)
/* 09A180 80099580 00000000 */  nop   
.L80099584:
/* 09A184 80099584 29810003 */  slti  $at, $t4, 3
.L80099588:
/* 09A188 80099588 10200015 */  beqz  $at, .L800995E0
/* 09A18C 8009958C 2404001F */   li    $a0, 31
/* 09A190 80099590 0C0078A7 */  jal   func_8001E29C
/* 09A194 80099594 AFAC0034 */   sw    $t4, 0x34($sp)
/* 09A198 80099598 3C0F800E */  lui   $t7, %hi(gIsInTrophyRace) # $t7, 0x800e
/* 09A19C 8009959C 8DEF0FE8 */  lw    $t7, %lo(gIsInTrophyRace)($t7)
/* 09A1A0 800995A0 8FAC0034 */  lw    $t4, 0x34($sp)
/* 09A1A4 800995A4 000FC080 */  sll   $t8, $t7, 2
/* 09A1A8 800995A8 3C0A8012 */  lui   $t2, %hi(D_80126438) # $t2, 0x8012
/* 09A1AC 800995AC 030FC023 */  subu  $t8, $t8, $t7
/* 09A1B0 800995B0 254A6438 */  addiu $t2, %lo(D_80126438) # addiu $t2, $t2, 0x6438
/* 09A1B4 800995B4 8FA6003C */  lw    $a2, 0x3c($sp)
/* 09A1B8 800995B8 030C2821 */  addu  $a1, $t8, $t4
/* 09A1BC 800995BC 24A5FFFD */  addiu $a1, $a1, -3
/* 09A1C0 800995C0 AFA0003C */  sw    $zero, 0x3c($sp)
/* 09A1C4 800995C4 AFAA0014 */  sw    $t2, 0x14($sp)
/* 09A1C8 800995C8 00402025 */  move  $a0, $v0
/* 09A1CC 800995CC 00003825 */  move  $a3, $zero
/* 09A1D0 800995D0 0C026AF6 */  jal   func_8009ABD8
/* 09A1D4 800995D4 AFA00010 */   sw    $zero, 0x10($sp)
/* 09A1D8 800995D8 0C0204F4 */  jal   MenuInit
/* 09A1DC 800995DC 24040017 */   li    $a0, 23
.L800995E0:
/* 09A1E0 800995E0 3C01800E */  lui   $at, %hi(gIsInTrophyRace) # $at, 0x800e
/* 09A1E4 800995E4 AC200FE8 */  sw    $zero, %lo(gIsInTrophyRace)($at)
.L800995E8:
/* 09A1E8 800995E8 8FBF001C */  lw    $ra, 0x1c($sp)
.L800995EC:
/* 09A1EC 800995EC 3C018012 */  lui   $at, %hi(D_801263C4) # $at, 0x8012
/* 09A1F0 800995F0 8FA2003C */  lw    $v0, 0x3c($sp)
/* 09A1F4 800995F4 AC2063C4 */  sw    $zero, %lo(D_801263C4)($at)
/* 09A1F8 800995F8 03E00008 */  jr    $ra
/* 09A1FC 800995FC 27BD0050 */   addiu $sp, $sp, 0x50

