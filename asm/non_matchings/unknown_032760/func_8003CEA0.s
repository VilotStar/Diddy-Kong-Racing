glabel func_8003CEA0
/* 03DAA0 8003CEA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03DAA4 8003CEA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03DAA8 8003CEA8 AFA40018 */  sw    $a0, 0x18($sp)
/* 03DAAC 8003CEAC AFA5001C */  sw    $a1, 0x1c($sp)
/* 03DAB0 8003CEB0 8C82004C */  lw    $v0, 0x4c($a0)
/* 03DAB4 8003CEB4 00802825 */  move  $a1, $a0
/* 03DAB8 8003CEB8 904E0013 */  lbu   $t6, 0x13($v0)
/* 03DABC 8003CEBC 00000000 */  nop   
/* 03DAC0 8003CEC0 29C1002D */  slti  $at, $t6, 0x2d
/* 03DAC4 8003CEC4 10200009 */  beqz  $at, .L8003CEEC
/* 03DAC8 8003CEC8 240F00FF */   li    $t7, 255
/* 03DACC 8003CECC 8C840078 */  lw    $a0, 0x78($a0)
/* 03DAD0 8003CED0 0C0078D1 */  jal   func_8001E344
/* 03DAD4 8003CED4 AFA50018 */   sw    $a1, 0x18($sp)
/* 03DAD8 8003CED8 8FA50018 */  lw    $a1, 0x18($sp)
/* 03DADC 8003CEDC 00000000 */  nop   
/* 03DAE0 8003CEE0 8CA2004C */  lw    $v0, 0x4c($a1)
/* 03DAE4 8003CEE4 00000000 */  nop   
/* 03DAE8 8003CEE8 240F00FF */  li    $t7, 255
.L8003CEEC:
/* 03DAEC 8003CEEC A04F0013 */  sb    $t7, 0x13($v0)
/* 03DAF0 8003CEF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03DAF4 8003CEF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 03DAF8 8003CEF8 03E00008 */  jr    $ra
/* 03DAFC 8003CEFC 00000000 */   nop   
