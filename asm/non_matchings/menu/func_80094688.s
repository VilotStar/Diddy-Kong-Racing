glabel func_80094688
/* 095288 80094688 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09528C 8009468C AFBF001C */  sw    $ra, 0x1c($sp)
/* 095290 80094690 AFA40030 */  sw    $a0, 0x30($sp)
/* 095294 80094694 AFA50034 */  sw    $a1, 0x34($sp)
/* 095298 80094698 0C01C8A6 */  jal   func_80072298
/* 09529C 8009469C 00002025 */   move  $a0, $zero
/* 0952A0 800946A0 0C01AF6C */  jal   func_8006BDB0
/* 0952A4 800946A4 00000000 */   nop   
/* 0952A8 800946A8 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0952AC 800946AC 3C018012 */  lui   $at, %hi(D_80126C28) # $at, 0x8012
/* 0952B0 800946B0 AFA20028 */  sw    $v0, 0x28($sp)
/* 0952B4 800946B4 0C027B20 */  jal   is_in_two_player_adventure
/* 0952B8 800946B8 A02E6C28 */   sb    $t6, %lo(D_80126C28)($at)
/* 0952BC 800946BC 10400003 */  beqz  $v0, .L800946CC
/* 0952C0 800946C0 00000000 */   nop   
/* 0952C4 800946C4 0C009278 */  jal   func_800249E0
/* 0952C8 800946C8 00002025 */   move  $a0, $zero
.L800946CC:
/* 0952CC 800946CC 3C018012 */  lui   $at, %hi(D_80126A90) # $at, 0x8012
/* 0952D0 800946D0 3C0F800E */  lui   $t7, %hi(gNumberOfActivePlayers) # $t7, 0x800e
/* 0952D4 800946D4 8DEFF4BC */  lw    $t7, %lo(gNumberOfActivePlayers)($t7)
/* 0952D8 800946D8 AC206A90 */  sw    $zero, %lo(D_80126A90)($at)
/* 0952DC 800946DC 24010001 */  li    $at, 1
/* 0952E0 800946E0 15E1003F */  bne   $t7, $at, .L800947E0
/* 0952E4 800946E4 3C18800E */   lui   $t8, %hi(gTrophyRaceWorldId) # $t8, 0x800e
/* 0952E8 800946E8 8F180FE8 */  lw    $t8, %lo(gTrophyRaceWorldId)($t8)
/* 0952EC 800946EC 00000000 */  nop   
/* 0952F0 800946F0 1700003C */  bnez  $t8, .L800947E4
/* 0952F4 800946F4 240B0007 */   li    $t3, 7
/* 0952F8 800946F8 0C0270B4 */  jal   is_in_tracks_mode
/* 0952FC 800946FC 00000000 */   nop   
/* 095300 80094700 24060001 */  li    $a2, 1
/* 095304 80094704 14460011 */  bne   $v0, $a2, .L8009474C
/* 095308 80094708 3C048012 */   lui   $a0, %hi(D_80126C14) # $a0, 0x8012
/* 09530C 8009470C 3C02800E */  lui   $v0, %hi(D_800DF4A0) # $v0, 0x800e
/* 095310 80094710 8C42F4A0 */  lw    $v0, %lo(D_800DF4A0)($v0)
/* 095314 80094714 3C058012 */  lui   $a1, %hi(D_80126BF0) # $a1, 0x8012
/* 095318 80094718 8C59005C */  lw    $t9, 0x5c($v0)
/* 09531C 8009471C 24A56BF0 */  addiu $a1, %lo(D_80126BF0) # addiu $a1, $a1, 0x6bf0
/* 095320 80094720 ACB90000 */  sw    $t9, ($a1)
/* 095324 80094724 8C480060 */  lw    $t0, 0x60($v0)
/* 095328 80094728 24846C14 */  addiu $a0, %lo(D_80126C14) # addiu $a0, $a0, 0x6c14
/* 09532C 8009472C ACA80004 */  sw    $t0, 4($a1)
/* 095330 80094730 8C490068 */  lw    $t1, 0x68($v0)
/* 095334 80094734 240A0003 */  li    $t2, 3
/* 095338 80094738 AC8A0000 */  sw    $t2, ($a0)
/* 09533C 8009473C 3C018012 */  lui   $at, %hi(D_80126A90) # $at, 0x8012
/* 095340 80094740 ACA90008 */  sw    $t1, 8($a1)
/* 095344 80094744 1000001C */  b     .L800947B8
/* 095348 80094748 AC266A90 */   sw    $a2, %lo(D_80126A90)($at)
.L8009474C:
/* 09534C 8009474C 8FAB0030 */  lw    $t3, 0x30($sp)
/* 095350 80094750 00000000 */  nop   
/* 095354 80094754 1560000A */  bnez  $t3, .L80094780
/* 095358 80094758 3C02800E */   lui   $v0, %hi(D_800DF4A0) # $v0, 0x800e
/* 09535C 8009475C 8C42F4A0 */  lw    $v0, %lo(D_800DF4A0)($v0)
/* 095360 80094760 3C048012 */  lui   $a0, %hi(D_80126C14) # $a0, 0x8012
/* 095364 80094764 8C4C005C */  lw    $t4, 0x5c($v0)
/* 095368 80094768 3C058012 */  lui   $a1, %hi(D_80126BF0) # $a1, 0x8012
/* 09536C 8009476C 24A56BF0 */  addiu $a1, %lo(D_80126BF0) # addiu $a1, $a1, 0x6bf0
/* 095370 80094770 24846C14 */  addiu $a0, %lo(D_80126C14) # addiu $a0, $a0, 0x6c14
/* 095374 80094774 AC860000 */  sw    $a2, ($a0)
/* 095378 80094778 10000008 */  b     .L8009479C
/* 09537C 8009477C ACAC0000 */   sw    $t4, ($a1)
.L80094780:
/* 095380 80094780 3C048012 */  lui   $a0, %hi(D_80126C14) # $a0, 0x8012
/* 095384 80094784 24846C14 */  addiu $a0, %lo(D_80126C14) # addiu $a0, $a0, 0x6c14
/* 095388 80094788 AC800000 */  sw    $zero, ($a0)
/* 09538C 8009478C 3C02800E */  lui   $v0, %hi(D_800DF4A0) # $v0, 0x800e
/* 095390 80094790 3C058012 */  lui   $a1, %hi(D_80126BF0) # $a1, 0x8012
/* 095394 80094794 8C42F4A0 */  lw    $v0, %lo(D_800DF4A0)($v0)
/* 095398 80094798 24A56BF0 */  addiu $a1, %lo(D_80126BF0) # addiu $a1, $a1, 0x6bf0
.L8009479C:
/* 09539C 8009479C 8C830000 */  lw    $v1, ($a0)
/* 0953A0 800947A0 8C4D0064 */  lw    $t5, 0x64($v0)
/* 0953A4 800947A4 00037080 */  sll   $t6, $v1, 2
/* 0953A8 800947A8 00AE7821 */  addu  $t7, $a1, $t6
/* 0953AC 800947AC 24780001 */  addiu $t8, $v1, 1
/* 0953B0 800947B0 ADED0000 */  sw    $t5, ($t7)
/* 0953B4 800947B4 AC980000 */  sw    $t8, ($a0)
.L800947B8:
/* 0953B8 800947B8 8C830000 */  lw    $v1, ($a0)
/* 0953BC 800947BC 8C590070 */  lw    $t9, 0x70($v0)
/* 0953C0 800947C0 00034080 */  sll   $t0, $v1, 2
/* 0953C4 800947C4 00A84821 */  addu  $t1, $a1, $t0
/* 0953C8 800947C8 246A0001 */  addiu $t2, $v1, 1
/* 0953CC 800947CC AD390000 */  sw    $t9, ($t1)
/* 0953D0 800947D0 AC8A0000 */  sw    $t2, ($a0)
/* 0953D4 800947D4 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 0953D8 800947D8 10000004 */  b     .L800947EC
/* 0953DC 800947DC AC2063E0 */   sw    $zero, %lo(D_801263E0)($at)
.L800947E0:
/* 0953E0 800947E0 240B0007 */  li    $t3, 7
.L800947E4:
/* 0953E4 800947E4 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 0953E8 800947E8 AC2B63E0 */  sw    $t3, %lo(D_801263E0)($at)
.L800947EC:
/* 0953EC 800947EC 3C018012 */  lui   $at, %hi(D_80126CC0) # $at, 0x8012
/* 0953F0 800947F0 AC206CC0 */  sw    $zero, %lo(D_80126CC0)($at)
/* 0953F4 800947F4 3C018012 */  lui   $at, %hi(D_801263BC) # $at, 0x8012
/* 0953F8 800947F8 AC2063BC */  sw    $zero, %lo(D_801263BC)($at)
/* 0953FC 800947FC 3C018012 */  lui   $at, %hi(D_801263D8) # $at, 0x8012
/* 095400 80094800 AC2063D8 */  sw    $zero, %lo(D_801263D8)($at)
/* 095404 80094804 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 095408 80094808 AC20F47C */  sw    $zero, %lo(gMenuDelay)($at)
/* 09540C 8009480C 3C01800E */  lui   $at, %hi(D_800DF460) # $at, 0x800e
/* 095410 80094810 AC20F460 */  sw    $zero, %lo(D_800DF460)($at)
/* 095414 80094814 3C018012 */  lui   $at, %hi(D_80126A68) # $at, 0x8012
/* 095418 80094818 AC206A68 */  sw    $zero, %lo(D_80126A68)($at)
/* 09541C 8009481C 3C018012 */  lui   $at, %hi(gIgnorePlayerInput) # $at, 0x8012
/* 095420 80094820 240C0001 */  li    $t4, 1
/* 095424 80094824 AC2C63C4 */  sw    $t4, %lo(gIgnorePlayerInput)($at)
/* 095428 80094828 3C018012 */  lui   $at, %hi(D_80126C54) # $at, 0x8012
/* 09542C 8009482C 240EFFFF */  li    $t6, -1
/* 095430 80094830 AC2E6C54 */  sw    $t6, %lo(D_80126C54)($at)
/* 095434 80094834 3C01800E */  lui   $at, %hi(D_800E0988) # $at, 0x800e
/* 095438 80094838 AC200988 */  sw    $zero, %lo(D_800E0988)($at)
/* 09543C 8009483C 3C018012 */  lui   $at, %hi(D_80126C1C) # $at, 0x8012
/* 095440 80094840 AC206C1C */  sw    $zero, %lo(D_80126C1C)($at)
/* 095444 80094844 8FAD0028 */  lw    $t5, 0x28($sp)
/* 095448 80094848 3C018012 */  lui   $at, %hi(D_80126A98) # $at, 0x8012
/* 09544C 8009484C AC206A98 */  sw    $zero, %lo(D_80126A98)($at)
/* 095450 80094850 81AF004C */  lb    $t7, 0x4c($t5)
/* 095454 80094854 00000000 */  nop   
/* 095458 80094858 31F80040 */  andi  $t8, $t7, 0x40
/* 09545C 8009485C 13000005 */  beqz  $t8, .L80094874
/* 095460 80094860 00000000 */   nop   
/* 095464 80094864 0C00322D */  jal   func_8000C8B4
/* 095468 80094868 240400F0 */   li    $a0, 240
/* 09546C 8009486C 3C018012 */  lui   $at, %hi(gIgnorePlayerInput) # $at, 0x8012
/* 095470 80094870 AC2263C4 */  sw    $v0, %lo(gIgnorePlayerInput)($at)
.L80094874:
/* 095474 80094874 3C088012 */  lui   $t0, %hi(D_80126C28) # $t0, 0x8012
/* 095478 80094878 81086C28 */  lb    $t0, %lo(D_80126C28)($t0)
/* 09547C 8009487C 24190008 */  li    $t9, 8
/* 095480 80094880 11000005 */  beqz  $t0, .L80094898
/* 095484 80094884 3C018012 */   lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 095488 80094888 AC3963E0 */  sw    $t9, %lo(D_801263E0)($at)
/* 09548C 8009488C 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 095490 80094890 24090064 */  li    $t1, 100
/* 095494 80094894 AC29F47C */  sw    $t1, %lo(gMenuDelay)($at)
.L80094898:
/* 095498 80094898 0C01B683 */  jal   func_8006DA0C
/* 09549C 8009489C 00000000 */   nop   
/* 0954A0 800948A0 10400003 */  beqz  $v0, .L800948B0
/* 0954A4 800948A4 240A0007 */   li    $t2, 7
/* 0954A8 800948A8 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 0954AC 800948AC AC2A63E0 */  sw    $t2, %lo(D_801263E0)($at)
.L800948B0:
/* 0954B0 800948B0 0C026F97 */  jal   reset_controller_sticks
/* 0954B4 800948B4 00000000 */   nop   
/* 0954B8 800948B8 8FA40030 */  lw    $a0, 0x30($sp)
/* 0954BC 800948BC 0C01B638 */  jal   func_8006D8E0
/* 0954C0 800948C0 00000000 */   nop   
/* 0954C4 800948C4 0C01E948 */  jal   func_8007A520
/* 0954C8 800948C8 00000000 */   nop   
/* 0954CC 800948CC 3C058012 */  lui   $a1, %hi(D_8012647C) # $a1, 0x8012
/* 0954D0 800948D0 24A5647C */  addiu $a1, %lo(D_8012647C) # addiu $a1, $a1, 0x647c
/* 0954D4 800948D4 00025C03 */  sra   $t3, $v0, 0x10
/* 0954D8 800948D8 ACA20000 */  sw    $v0, ($a1)
/* 0954DC 800948DC 316CFFFF */  andi  $t4, $t3, 0xffff
/* 0954E0 800948E0 3C018012 */  lui   $at, %hi(D_80126480) # $at, 0x8012
/* 0954E4 800948E4 AC2C6480 */  sw    $t4, %lo(D_80126480)($at)
/* 0954E8 800948E8 304EFFFF */  andi  $t6, $v0, 0xffff
/* 0954EC 800948EC ACAE0000 */  sw    $t6, ($a1)
/* 0954F0 800948F0 3C188012 */  lui   $t8, %hi(D_80126480) # $t8, 0x8012
/* 0954F4 800948F4 8F186480 */  lw    $t8, %lo(D_80126480)($t8)
/* 0954F8 800948F8 000E7843 */  sra   $t7, $t6, 1
/* 0954FC 800948FC 3C018012 */  lui   $at, %hi(D_80126474) # $at, 0x8012
/* 095500 80094900 AC2F6474 */  sw    $t7, %lo(D_80126474)($at)
/* 095504 80094904 3C018012 */  lui   $at, %hi(D_80126478) # $at, 0x8012
/* 095508 80094908 3C19800E */  lui   $t9, %hi(gNumberOfActivePlayers) # $t9, 0x800e
/* 09550C 8009490C 00184043 */  sra   $t0, $t8, 1
/* 095510 80094910 8F39F4BC */  lw    $t9, %lo(gNumberOfActivePlayers)($t9)
/* 095514 80094914 AC286478 */  sw    $t0, %lo(D_80126478)($at)
/* 095518 80094918 24010001 */  li    $at, 1
/* 09551C 8009491C 17210049 */  bne   $t9, $at, .L80094A44
/* 095520 80094920 3C09800E */   lui   $t1, %hi(gTrophyRaceWorldId) # $t1, 0x800e
/* 095524 80094924 8D290FE8 */  lw    $t1, %lo(gTrophyRaceWorldId)($t1)
/* 095528 80094928 3C018012 */  lui   $at, %hi(D_80126C54) # $at, 0x8012
/* 09552C 8009492C 15200045 */  bnez  $t1, .L80094A44
/* 095530 80094930 3C0E800E */   lui   $t6, %hi(D_800E0710) # $t6, 0x800e
/* 095534 80094934 8FAA0028 */  lw    $t2, 0x28($sp)
/* 095538 80094938 AC206C54 */  sw    $zero, %lo(D_80126C54)($at)
/* 09553C 8009493C 81420000 */  lb    $v0, ($t2)
/* 095540 80094940 25CE0710 */  addiu $t6, %lo(D_800E0710) # addiu $t6, $t6, 0x710
/* 095544 80094944 2442FFFF */  addiu $v0, $v0, -1
/* 095548 80094948 00025880 */  sll   $t3, $v0, 2
/* 09554C 8009494C 01625823 */  subu  $t3, $t3, $v0
/* 095550 80094950 000B6040 */  sll   $t4, $t3, 1
/* 095554 80094954 018E1821 */  addu  $v1, $t4, $t6
/* 095558 80094958 84640000 */  lh    $a0, ($v1)
/* 09555C 8009495C 2401FFFF */  li    $at, -1
/* 095560 80094960 1081000C */  beq   $a0, $at, .L80094994
/* 095564 80094964 00000000 */   nop   
/* 095568 80094968 0C0271B5 */  jal   func_8009C6D4
/* 09556C 8009496C AFA30024 */   sw    $v1, 0x24($sp)
/* 095570 80094970 8FA30024 */  lw    $v1, 0x24($sp)
/* 095574 80094974 3C188012 */  lui   $t8, %hi(D_80126550) # $t8, 0x8012
/* 095578 80094978 846D0000 */  lh    $t5, ($v1)
/* 09557C 8009497C 3C018012 */  lui   $at, %hi(D_80126BB8) # $at, 0x8012
/* 095580 80094980 000D7880 */  sll   $t7, $t5, 2
/* 095584 80094984 030FC021 */  addu  $t8, $t8, $t7
/* 095588 80094988 8F186550 */  lw    $t8, %lo(D_80126550)($t8)
/* 09558C 8009498C 10000003 */  b     .L8009499C
/* 095590 80094990 AC386BB8 */   sw    $t8, %lo(D_80126BB8)($at)
.L80094994:
/* 095594 80094994 3C018012 */  lui   $at, %hi(D_80126BB8) # $at, 0x8012
/* 095598 80094998 AC206BB8 */  sw    $zero, %lo(D_80126BB8)($at)
.L8009499C:
/* 09559C 8009499C 84640002 */  lh    $a0, 2($v1)
/* 0955A0 800949A0 2401FFFF */  li    $at, -1
/* 0955A4 800949A4 1081000C */  beq   $a0, $at, .L800949D8
/* 0955A8 800949A8 00000000 */   nop   
/* 0955AC 800949AC 0C0271B5 */  jal   func_8009C6D4
/* 0955B0 800949B0 AFA30024 */   sw    $v1, 0x24($sp)
/* 0955B4 800949B4 8FA30024 */  lw    $v1, 0x24($sp)
/* 0955B8 800949B8 3C098012 */  lui   $t1, %hi(D_80126550) # $t1, 0x8012
/* 0955BC 800949BC 84680002 */  lh    $t0, 2($v1)
/* 0955C0 800949C0 3C018012 */  lui   $at, %hi(D_80126BBC) # $at, 0x8012
/* 0955C4 800949C4 0008C880 */  sll   $t9, $t0, 2
/* 0955C8 800949C8 01394821 */  addu  $t1, $t1, $t9
/* 0955CC 800949CC 8D296550 */  lw    $t1, %lo(D_80126550)($t1)
/* 0955D0 800949D0 10000003 */  b     .L800949E0
/* 0955D4 800949D4 AC296BBC */   sw    $t1, %lo(D_80126BBC)($at)
.L800949D8:
/* 0955D8 800949D8 3C018012 */  lui   $at, %hi(D_80126BBC) # $at, 0x8012
/* 0955DC 800949DC AC206BBC */  sw    $zero, %lo(D_80126BBC)($at)
.L800949E0:
/* 0955E0 800949E0 846A0004 */  lh    $t2, 4($v1)
/* 0955E4 800949E4 3C018012 */  lui   $at, %hi(D_80126BC0) # $at, 0x8012
/* 0955E8 800949E8 0C01B683 */  jal   func_8006DA0C
/* 0955EC 800949EC AC2A6BC0 */   sw    $t2, %lo(D_80126BC0)($at)
/* 0955F0 800949F0 14400008 */  bnez  $v0, .L80094A14
/* 0955F4 800949F4 3C048012 */   lui   $a0, %hi(D_80126BB8) # $a0, 0x8012
/* 0955F8 800949F8 3C058012 */  lui   $a1, %hi(D_80126BBC) # $a1, 0x8012
/* 0955FC 800949FC 3C068012 */  lui   $a2, %hi(D_80126BC0) # $a2, 0x8012
/* 095600 80094A00 8CC66BC0 */  lw    $a2, %lo(D_80126BC0)($a2)
/* 095604 80094A04 8CA56BBC */  lw    $a1, %lo(D_80126BBC)($a1)
/* 095608 80094A08 8C846BB8 */  lw    $a0, %lo(D_80126BB8)($a0)
/* 09560C 80094A0C 0C01E05C */  jal   func_80078170
/* 095610 80094A10 00000000 */   nop   
.L80094A14:
/* 095614 80094A14 00002025 */  move  $a0, $zero
/* 095618 80094A18 0C019A06 */  jal   func_80066818
/* 09561C 80094A1C 24050001 */   li    $a1, 1
/* 095620 80094A20 3C0B8012 */  lui   $t3, %hi(D_80126480) # $t3, 0x8012
/* 095624 80094A24 8D6B6480 */  lw    $t3, %lo(D_80126480)($t3)
/* 095628 80094A28 3C078012 */  lui   $a3, %hi(D_8012647C) # $a3, 0x8012
/* 09562C 80094A2C 8CE7647C */  lw    $a3, %lo(D_8012647C)($a3)
/* 095630 80094A30 00002025 */  move  $a0, $zero
/* 095634 80094A34 00002825 */  move  $a1, $zero
/* 095638 80094A38 00003025 */  move  $a2, $zero
/* 09563C 80094A3C 0C019A50 */  jal   func_80066940
/* 095640 80094A40 AFAB0010 */   sw    $t3, 0x10($sp)
.L80094A44:
/* 095644 80094A44 0C00025A */  jal   func_80000968
/* 095648 80094A48 24040002 */   li    $a0, 2
/* 09564C 80094A4C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 095650 80094A50 27BD0030 */  addiu $sp, $sp, 0x30
/* 095654 80094A54 03E00008 */  jr    $ra
/* 095658 80094A58 00000000 */   nop   

