glabel func_80042090
/* 042C90 80042090 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 042C94 80042094 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042C98 80042098 AFA5001C */  sw    $a1, 0x1c($sp)
/* 042C9C 8004209C 00803025 */  move  $a2, $a0
/* 042CA0 800420A0 AFA60018 */  sw    $a2, 0x18($sp)
/* 042CA4 800420A4 00002025 */  move  $a0, $zero
/* 042CA8 800420A8 0C01BE53 */  jal   func_8006F94C
/* 042CAC 800420AC 24050400 */   li    $a1, 1024
/* 042CB0 800420B0 8FA60018 */  lw    $a2, 0x18($sp)
/* 042CB4 800420B4 240F0001 */  li    $t7, 1
/* 042CB8 800420B8 8CCE0078 */  lw    $t6, 0x78($a2)
/* 042CBC 800420BC 00000000 */  nop   
/* 042CC0 800420C0 01C2082A */  slt   $at, $t6, $v0
/* 042CC4 800420C4 14200003 */  bnez  $at, .L800420D4
/* 042CC8 800420C8 00000000 */   nop   
/* 042CCC 800420CC 10000002 */  b     .L800420D8
/* 042CD0 800420D0 ACCF0074 */   sw    $t7, 0x74($a2)
.L800420D4:
/* 042CD4 800420D4 ACC00074 */  sw    $zero, 0x74($a2)
.L800420D8:
/* 042CD8 800420D8 0C0270F2 */  jal   func_8009C3C8
/* 042CDC 800420DC AFA60018 */   sw    $a2, 0x18($sp)
/* 042CE0 800420E0 8FA60018 */  lw    $a2, 0x18($sp)
/* 042CE4 800420E4 28410002 */  slti  $at, $v0, 2
/* 042CE8 800420E8 10200005 */  beqz  $at, .L80042100
/* 042CEC 800420EC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 042CF0 800420F0 8FA5001C */  lw    $a1, 0x1c($sp)
/* 042CF4 800420F4 0C02BF0F */  jal   func_800AFC3C
/* 042CF8 800420F8 00C02025 */   move  $a0, $a2
/* 042CFC 800420FC 8FBF0014 */  lw    $ra, 0x14($sp)
.L80042100:
/* 042D00 80042100 27BD0018 */  addiu $sp, $sp, 0x18
/* 042D04 80042104 03E00008 */  jr    $ra
/* 042D08 80042108 00000000 */   nop   
