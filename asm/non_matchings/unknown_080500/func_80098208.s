glabel func_80098208
/* 098E08 80098208 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 098E0C 8009820C AFBF0014 */  sw    $ra, 0x14($sp)
/* 098E10 80098210 0C01BAA4 */  jal   func_8006EA90
/* 098E14 80098214 00000000 */   nop   
/* 098E18 80098218 904E0048 */  lbu   $t6, 0x48($v0)
/* 098E1C 8009821C 3C01800E */  lui   $at, %hi(gIsInTrophyRace) # $at, 0x800e
/* 098E20 80098220 AC2E0FE8 */  sw    $t6, %lo(gIsInTrophyRace)($at)
/* 098E24 80098224 3C01800E */  lui   $at, %hi(D_800E0FEC) # $at, 0x800e
/* 098E28 80098228 AC200FEC */  sw    $zero, %lo(D_800E0FEC)($at)
/* 098E2C 8009822C 8C58004C */  lw    $t8, 0x4c($v0)
/* 098E30 80098230 904F0049 */  lbu   $t7, 0x49($v0)
/* 098E34 80098234 3C01800E */  lui   $at, %hi(D_800DF450) # $at, 0x800e
/* 098E38 80098238 A30F0000 */  sb    $t7, ($t8)
/* 098E3C 8009823C 8C59004C */  lw    $t9, 0x4c($v0)
/* 098E40 80098240 24090001 */  li    $t1, 1
/* 098E44 80098244 A320000F */  sb    $zero, 0xf($t9)
/* 098E48 80098248 8C48004C */  lw    $t0, 0x4c($v0)
/* 098E4C 8009824C 00002025 */  move  $a0, $zero
/* 098E50 80098250 A1000001 */  sb    $zero, 1($t0)
/* 098E54 80098254 0C00392F */  jal   func_8000E4BC
/* 098E58 80098258 A029F450 */   sb    $t1, %lo(D_800DF450)($at)
/* 098E5C 8009825C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 098E60 80098260 27BD0018 */  addiu $sp, $sp, 0x18
/* 098E64 80098264 03E00008 */  jr    $ra
/* 098E68 80098268 00000000 */   nop   

