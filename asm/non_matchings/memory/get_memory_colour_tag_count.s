glabel get_memory_colour_tag_count
/* 072624 80071A24 3C028012 */  lui   $v0, %hi(gMemoryPools+8) # $v0, 0x8012
/* 072628 80071A28 8C423588 */  lw    $v0, %lo(gMemoryPools+8)($v0)
/* 07262C 80071A2C 00001825 */  move  $v1, $zero
/* 072630 80071A30 00002825 */  move  $a1, $zero
/* 072634 80071A34 24060640 */  li    $a2, 1600
.L80071A38:
/* 072638 80071A38 844E0008 */  lh    $t6, 8($v0)
/* 07263C 80071A3C 24A50004 */  addiu $a1, $a1, 4
/* 072640 80071A40 11C00006 */  beqz  $t6, .L80071A5C
/* 072644 80071A44 00000000 */   nop   
/* 072648 80071A48 8C4F0010 */  lw    $t7, 0x10($v0)
/* 07264C 80071A4C 00000000 */  nop   
/* 072650 80071A50 148F0002 */  bne   $a0, $t7, .L80071A5C
/* 072654 80071A54 00000000 */   nop   
/* 072658 80071A58 24630001 */  addiu $v1, $v1, 1
.L80071A5C:
/* 07265C 80071A5C 8458001C */  lh    $t8, 0x1c($v0)
/* 072660 80071A60 24420014 */  addiu $v0, $v0, 0x14
/* 072664 80071A64 13000006 */  beqz  $t8, .L80071A80
/* 072668 80071A68 00000000 */   nop   
/* 07266C 80071A6C 8C590010 */  lw    $t9, 0x10($v0)
/* 072670 80071A70 00000000 */  nop   
/* 072674 80071A74 14990002 */  bne   $a0, $t9, .L80071A80
/* 072678 80071A78 00000000 */   nop   
/* 07267C 80071A7C 24630001 */  addiu $v1, $v1, 1
.L80071A80:
/* 072680 80071A80 8448001C */  lh    $t0, 0x1c($v0)
/* 072684 80071A84 24420014 */  addiu $v0, $v0, 0x14
/* 072688 80071A88 11000006 */  beqz  $t0, .L80071AA4
/* 07268C 80071A8C 00000000 */   nop   
/* 072690 80071A90 8C490010 */  lw    $t1, 0x10($v0)
/* 072694 80071A94 00000000 */  nop   
/* 072698 80071A98 14890002 */  bne   $a0, $t1, .L80071AA4
/* 07269C 80071A9C 00000000 */   nop   
/* 0726A0 80071AA0 24630001 */  addiu $v1, $v1, 1
.L80071AA4:
/* 0726A4 80071AA4 844A001C */  lh    $t2, 0x1c($v0)
/* 0726A8 80071AA8 24420014 */  addiu $v0, $v0, 0x14
/* 0726AC 80071AAC 11400006 */  beqz  $t2, .L80071AC8
/* 0726B0 80071AB0 00000000 */   nop   
/* 0726B4 80071AB4 8C4B0010 */  lw    $t3, 0x10($v0)
/* 0726B8 80071AB8 00000000 */  nop   
/* 0726BC 80071ABC 148B0002 */  bne   $a0, $t3, .L80071AC8
/* 0726C0 80071AC0 00000000 */   nop   
/* 0726C4 80071AC4 24630001 */  addiu $v1, $v1, 1
.L80071AC8:
/* 0726C8 80071AC8 14A6FFDB */  bne   $a1, $a2, .L80071A38
/* 0726CC 80071ACC 24420014 */   addiu $v0, $v0, 0x14
/* 0726D0 80071AD0 03E00008 */  jr    $ra
/* 0726D4 80071AD4 00601025 */   move  $v0, $v1