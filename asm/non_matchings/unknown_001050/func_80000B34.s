glabel func_80000B34
/* 001734 80000B34 3C0F800E */  lui   $t7, %hi(D_800DC648) # $t7, 0x800e
/* 001738 80000B38 8DEFC648 */  lw    $t7, %lo(D_800DC648)($t7)
/* 00173C 80000B3C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001740 80000B40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001744 80000B44 AFA40018 */  sw    $a0, 0x18($sp)
/* 001748 80000B48 15E00021 */  bnez  $t7, .L80000BD0
/* 00174C 80000B4C 308E00FF */   andi  $t6, $a0, 0xff
/* 001750 80000B50 3C18800E */  lui   $t8, %hi(D_800DC654) # $t8, 0x800e
/* 001754 80000B54 8F18C654 */  lw    $t8, %lo(D_800DC654)($t8)
/* 001758 80000B58 3C028011 */  lui   $v0, %hi(D_80115D04) # $v0, 0x8011
/* 00175C 80000B5C 1300001C */  beqz  $t8, .L80000BD0
/* 001760 80000B60 24425D04 */   addiu $v0, %lo(D_80115D04) # addiu $v0, $v0, 0x5d04
/* 001764 80000B64 A04E0000 */  sb    $t6, ($v0)
/* 001768 80000B68 3C08800E */  lui   $t0, %hi(D_800DC640) # $t0, 0x800e
/* 00176C 80000B6C 9108C640 */  lbu   $t0, %lo(D_800DC640)($t0)
/* 001770 80000B70 2419007F */  li    $t9, 127
/* 001774 80000B74 3C01800E */  lui   $at, %hi(D_800DC638) # $at, 0x800e
/* 001778 80000B78 11000006 */  beqz  $t0, .L80000B94
/* 00177C 80000B7C A039C638 */   sb    $t9, %lo(D_800DC638)($at)
/* 001780 80000B80 3C05800E */  lui   $a1, %hi(D_800DC630) # $a1, 0x800e
/* 001784 80000B84 8CA5C630 */  lw    $a1, %lo(D_800DC630)($a1)
/* 001788 80000B88 90440000 */  lbu   $a0, ($v0)
/* 00178C 80000B8C 0C0008AF */  jal   func_800022BC
/* 001790 80000B90 00000000 */   nop   
.L80000B94:
/* 001794 80000B94 3C04800E */  lui   $a0, %hi(D_800DC630) # $a0, 0x800e
/* 001798 80000B98 8C84C630 */  lw    $a0, %lo(D_800DC630)($a0)
/* 00179C 80000B9C 0C031E24 */  jal   func_800C7890
/* 0017A0 80000BA0 00000000 */   nop   
/* 0017A4 80000BA4 3C018011 */  lui   $at, %hi(D_80115D08) # $at, 0x8011
/* 0017A8 80000BA8 0C031E34 */  jal   func_800C78D0
/* 0017AC 80000BAC AC225D08 */   sw    $v0, %lo(D_80115D08)($at)
/* 0017B0 80000BB0 3C01800E */  lui   $at, %hi(D_800DC64C) # $at, 0x800e
/* 0017B4 80000BB4 AC22C64C */  sw    $v0, %lo(D_800DC64C)($at)
/* 0017B8 80000BB8 3C018011 */  lui   $at, %hi(D_80115D40) # $at, 0x8011
/* 0017BC 80000BBC 24090001 */  li    $t1, 1
/* 0017C0 80000BC0 A0295D40 */  sb    $t1, %lo(D_80115D40)($at)
/* 0017C4 80000BC4 3C018011 */  lui   $at, %hi(D_80115F7C) # $at, 0x8011
/* 0017C8 80000BC8 240AFFFF */  li    $t2, -1
/* 0017CC 80000BCC AC2A5F7C */  sw    $t2, %lo(D_80115F7C)($at)
.L80000BD0:
/* 0017D0 80000BD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0017D4 80000BD4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0017D8 80000BD8 03E00008 */  jr    $ra
/* 0017DC 80000BDC 00000000 */   nop   
