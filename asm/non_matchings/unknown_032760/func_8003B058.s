glabel func_8003B058
/* 03BC58 8003B058 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03BC5C 8003B05C AFBF0014 */  sw    $ra, 0x14($sp)
/* 03BC60 8003B060 90AF0008 */  lbu   $t7, 8($a1)
/* 03BC64 8003B064 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 03BC68 8003B068 448F2000 */  mtc1  $t7, $f4
/* 03BC6C 8003B06C 44811000 */  mtc1  $at, $f2
/* 03BC70 8003B070 46802020 */  cvt.s.w $f0, $f4
/* 03BC74 8003B074 3C014300 */  li    $at, 0x43000000 # 128.000000
/* 03BC78 8003B078 44813000 */  mtc1  $at, $f6
/* 03BC7C 8003B07C 4602003C */  c.lt.s $f0, $f2
/* 03BC80 8003B080 00803025 */  move  $a2, $a0
/* 03BC84 8003B084 45000003 */  bc1f  .L8003B094
/* 03BC88 8003B088 00000000 */   nop   
/* 03BC8C 8003B08C 46001006 */  mov.s $f0, $f2
/* 03BC90 8003B090 00000000 */  nop   
.L8003B094:
/* 03BC94 8003B094 46060003 */  div.s $f0, $f0, $f6
/* 03BC98 8003B098 8CC20064 */  lw    $v0, 0x64($a2)
/* 03BC9C 8003B09C E4C00008 */  swc1  $f0, 8($a2)
/* 03BCA0 8003B0A0 90B90009 */  lbu   $t9, 9($a1)
/* 03BCA4 8003B0A4 00000000 */  nop   
/* 03BCA8 8003B0A8 00194280 */  sll   $t0, $t9, 0xa
/* 03BCAC 8003B0AC A4C80000 */  sh    $t0, ($a2)
/* 03BCB0 8003B0B0 84C40000 */  lh    $a0, ($a2)
/* 03BCB4 8003B0B4 AFA60020 */  sw    $a2, 0x20($sp)
/* 03BCB8 8003B0B8 AFA50024 */  sw    $a1, 0x24($sp)
/* 03BCBC 8003B0BC 0C01C1F1 */  jal   func_800707C4
/* 03BCC0 8003B0C0 AFA20018 */   sw    $v0, 0x18($sp)
/* 03BCC4 8003B0C4 8FA20018 */  lw    $v0, 0x18($sp)
/* 03BCC8 8003B0C8 8FA60020 */  lw    $a2, 0x20($sp)
/* 03BCCC 8003B0CC 44804000 */  mtc1  $zero, $f8
/* 03BCD0 8003B0D0 E4400000 */  swc1  $f0, ($v0)
/* 03BCD4 8003B0D4 E4480004 */  swc1  $f8, 4($v0)
/* 03BCD8 8003B0D8 84C40000 */  lh    $a0, ($a2)
/* 03BCDC 8003B0DC 0C01C1FE */  jal   func_800707F8
/* 03BCE0 8003B0E0 00000000 */   nop   
/* 03BCE4 8003B0E4 8FA20018 */  lw    $v0, 0x18($sp)
/* 03BCE8 8003B0E8 8FA60020 */  lw    $a2, 0x20($sp)
/* 03BCEC 8003B0EC 8FA50024 */  lw    $a1, 0x24($sp)
/* 03BCF0 8003B0F0 E4400008 */  swc1  $f0, 8($v0)
/* 03BCF4 8003B0F4 C44A0000 */  lwc1  $f10, ($v0)
/* 03BCF8 8003B0F8 C4D0000C */  lwc1  $f16, 0xc($a2)
/* 03BCFC 8003B0FC C4C40014 */  lwc1  $f4, 0x14($a2)
/* 03BD00 8003B100 46105482 */  mul.s $f18, $f10, $f16
/* 03BD04 8003B104 240B0002 */  li    $t3, 2
/* 03BD08 8003B108 46040182 */  mul.s $f6, $f0, $f4
/* 03BD0C 8003B10C 46069200 */  add.s $f8, $f18, $f6
/* 03BD10 8003B110 46004287 */  neg.s $f10, $f8
/* 03BD14 8003B114 E44A000C */  swc1  $f10, 0xc($v0)
/* 03BD18 8003B118 90A90008 */  lbu   $t1, 8($a1)
/* 03BD1C 8003B11C 00000000 */  nop   
/* 03BD20 8003B120 AC490010 */  sw    $t1, 0x10($v0)
/* 03BD24 8003B124 90AA000A */  lbu   $t2, 0xa($a1)
/* 03BD28 8003B128 00000000 */  nop   
/* 03BD2C 8003B12C A04A0014 */  sb    $t2, 0x14($v0)
/* 03BD30 8003B130 8CCC004C */  lw    $t4, 0x4c($a2)
/* 03BD34 8003B134 00000000 */  nop   
/* 03BD38 8003B138 A58B0014 */  sh    $t3, 0x14($t4)
/* 03BD3C 8003B13C 8CCD004C */  lw    $t5, 0x4c($a2)
/* 03BD40 8003B140 00000000 */  nop   
/* 03BD44 8003B144 A1A00011 */  sb    $zero, 0x11($t5)
/* 03BD48 8003B148 8CCF004C */  lw    $t7, 0x4c($a2)
/* 03BD4C 8003B14C 90AE0008 */  lbu   $t6, 8($a1)
/* 03BD50 8003B150 00000000 */  nop   
/* 03BD54 8003B154 A1EE0010 */  sb    $t6, 0x10($t7)
/* 03BD58 8003B158 8CD8004C */  lw    $t8, 0x4c($a2)
/* 03BD5C 8003B15C 00000000 */  nop   
/* 03BD60 8003B160 A3000012 */  sb    $zero, 0x12($t8)
/* 03BD64 8003B164 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03BD68 8003B168 27BD0020 */  addiu $sp, $sp, 0x20
/* 03BD6C 8003B16C 03E00008 */  jr    $ra
/* 03BD70 8003B170 00000000 */   nop   
