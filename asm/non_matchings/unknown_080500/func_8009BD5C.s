glabel func_8009BD5C
/* 09C95C 8009BD5C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09C960 8009BD60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09C964 8009BD64 0C01994B */  jal   func_8006652C
/* 09C968 8009BD68 00002025 */   move  $a0, $zero
/* 09C96C 8009BD6C 0C01997A */  jal   func_800665E8
/* 09C970 8009BD70 00002025 */   move  $a0, $zero
/* 09C974 8009BD74 0C01A748 */  jal   func_80069D20
/* 09C978 8009BD78 00000000 */   nop   
/* 09C97C 8009BD7C 844E0000 */  lh    $t6, ($v0)
/* 09C980 8009BD80 3C01C200 */  li    $at, 0xC2000000 # -32.000000
/* 09C984 8009BD84 A7AE002A */  sh    $t6, 0x2a($sp)
/* 09C988 8009BD88 844F0002 */  lh    $t7, 2($v0)
/* 09C98C 8009BD8C 44810000 */  mtc1  $at, $f0
/* 09C990 8009BD90 A7AF0028 */  sh    $t7, 0x28($sp)
/* 09C994 8009BD94 84580004 */  lh    $t8, 4($v0)
/* 09C998 8009BD98 44806000 */  mtc1  $zero, $f12
/* 09C99C 8009BD9C A7B80026 */  sh    $t8, 0x26($sp)
/* 09C9A0 8009BDA0 C444000C */  lwc1  $f4, 0xc($v0)
/* 09C9A4 8009BDA4 24198000 */  li    $t9, -32768
/* 09C9A8 8009BDA8 E7A40020 */  swc1  $f4, 0x20($sp)
/* 09C9AC 8009BDAC C4460010 */  lwc1  $f6, 0x10($v0)
/* 09C9B0 8009BDB0 3C06BF80 */  lui   $a2, 0xbf80
/* 09C9B4 8009BDB4 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 09C9B8 8009BDB8 C4480014 */  lwc1  $f8, 0x14($v0)
/* 09C9BC 8009BDBC 46006386 */  mov.s $f14, $f12
/* 09C9C0 8009BDC0 E7A80018 */  swc1  $f8, 0x18($sp)
/* 09C9C4 8009BDC4 A4400004 */  sh    $zero, 4($v0)
/* 09C9C8 8009BDC8 A4400002 */  sh    $zero, 2($v0)
/* 09C9CC 8009BDCC A4590000 */  sh    $t9, ($v0)
/* 09C9D0 8009BDD0 E440000C */  swc1  $f0, 0xc($v0)
/* 09C9D4 8009BDD4 E4400010 */  swc1  $f0, 0x10($v0)
/* 09C9D8 8009BDD8 E4400014 */  swc1  $f0, 0x14($v0)
/* 09C9DC 8009BDDC 0C007578 */  jal   func_8001D5E0
/* 09C9E0 8009BDE0 AFA2002C */   sw    $v0, 0x2c($sp)
/* 09C9E4 8009BDE4 3C048012 */  lui   $a0, %hi(D_801263A0) # $a0, 0x8012
/* 09C9E8 8009BDE8 3C058012 */  lui   $a1, %hi(D_801263A8) # $a1, 0x8012
/* 09C9EC 8009BDEC 24A563A8 */  addiu $a1, %lo(D_801263A8) # addiu $a1, $a1, 0x63a8
/* 09C9F0 8009BDF0 0C019B37 */  jal   func_80066CDC
/* 09C9F4 8009BDF4 248463A0 */   addiu $a0, %lo(D_801263A0) # addiu $a0, $a0, 0x63a0
/* 09C9F8 8009BDF8 8FA3002C */  lw    $v1, 0x2c($sp)
/* 09C9FC 8009BDFC 87A8002A */  lh    $t0, 0x2a($sp)
/* 09CA00 8009BE00 00000000 */  nop   
/* 09CA04 8009BE04 A4680000 */  sh    $t0, ($v1)
/* 09CA08 8009BE08 87A90028 */  lh    $t1, 0x28($sp)
/* 09CA0C 8009BE0C 00000000 */  nop   
/* 09CA10 8009BE10 A4690002 */  sh    $t1, 2($v1)
/* 09CA14 8009BE14 87AA0026 */  lh    $t2, 0x26($sp)
/* 09CA18 8009BE18 00000000 */  nop   
/* 09CA1C 8009BE1C A46A0004 */  sh    $t2, 4($v1)
/* 09CA20 8009BE20 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 09CA24 8009BE24 00000000 */  nop   
/* 09CA28 8009BE28 E46A000C */  swc1  $f10, 0xc($v1)
/* 09CA2C 8009BE2C C7B0001C */  lwc1  $f16, 0x1c($sp)
/* 09CA30 8009BE30 00000000 */  nop   
/* 09CA34 8009BE34 E4700010 */  swc1  $f16, 0x10($v1)
/* 09CA38 8009BE38 C7B20018 */  lwc1  $f18, 0x18($sp)
/* 09CA3C 8009BE3C 00000000 */  nop   
/* 09CA40 8009BE40 E4720014 */  swc1  $f18, 0x14($v1)
/* 09CA44 8009BE44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09CA48 8009BE48 27BD0030 */  addiu $sp, $sp, 0x30
/* 09CA4C 8009BE4C 03E00008 */  jr    $ra
/* 09CA50 8009BE50 00000000 */   nop   

/* 09CA54 8009BE54 03E00008 */  jr    $ra
/* 09CA58 8009BE58 00000000 */   nop   
