glabel func_80009B7C
/* 00A77C 80009B7C 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 00A780 80009B80 E7B8003C */  swc1  $f24, 0x3c($sp)
/* 00A784 80009B84 E7B4002C */  swc1  $f20, 0x2c($sp)
/* 00A788 80009B88 4486A000 */  mtc1  $a2, $f20
/* 00A78C 80009B8C 4487C000 */  mtc1  $a3, $f24
/* 00A790 80009B90 E7B60034 */  swc1  $f22, 0x34($sp)
/* 00A794 80009B94 4485B000 */  mtc1  $a1, $f22
/* 00A798 80009B98 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00A79C 80009B9C 4406C000 */  mfc1  $a2, $f24
/* 00A7A0 80009BA0 AFBE0060 */  sw    $fp, 0x60($sp)
/* 00A7A4 80009BA4 AFB7005C */  sw    $s7, 0x5c($sp)
/* 00A7A8 80009BA8 AFB60058 */  sw    $s6, 0x58($sp)
/* 00A7AC 80009BAC AFB50054 */  sw    $s5, 0x54($sp)
/* 00A7B0 80009BB0 AFB40050 */  sw    $s4, 0x50($sp)
/* 00A7B4 80009BB4 AFB3004C */  sw    $s3, 0x4c($sp)
/* 00A7B8 80009BB8 AFB20048 */  sw    $s2, 0x48($sp)
/* 00A7BC 80009BBC AFB10044 */  sw    $s1, 0x44($sp)
/* 00A7C0 80009BC0 AFB00040 */  sw    $s0, 0x40($sp)
/* 00A7C4 80009BC4 E7B90038 */  swc1  $f25, 0x38($sp)
/* 00A7C8 80009BC8 E7B70030 */  swc1  $f23, 0x30($sp)
/* 00A7CC 80009BCC E7B50028 */  swc1  $f21, 0x28($sp)
/* 00A7D0 80009BD0 AFA400D8 */  sw    $a0, 0xd8($sp)
/* 00A7D4 80009BD4 4600A386 */  mov.s $f14, $f20
/* 00A7D8 80009BD8 0C00A7C6 */  jal   get_level_segment_index_from_position
/* 00A7DC 80009BDC 4600B306 */   mov.s $f12, $f22
/* 00A7E0 80009BE0 3C178012 */  lui   $s7, %hi(D_8011A6D8) # $s7, 0x8012
/* 00A7E4 80009BE4 AFA200B0 */  sw    $v0, 0xb0($sp)
/* 00A7E8 80009BE8 0000A825 */  move  $s5, $zero
/* 00A7EC 80009BEC 24160190 */  li    $s6, 400
/* 00A7F0 80009BF0 26F7A6D8 */  addiu $s7, %lo(D_8011A6D8) # addiu $s7, $s7, -0x5928
/* 00A7F4 80009BF4 00001825 */  move  $v1, $zero
.L80009BF8:
/* 00A7F8 80009BF8 92EE0000 */  lbu   $t6, ($s7)
/* 00A7FC 80009BFC AFB700CC */  sw    $s7, 0xcc($sp)
/* 00A800 80009C00 11C0003D */  beqz  $t6, .L80009CF8
/* 00A804 80009C04 AFA300D4 */   sw    $v1, 0xd4($sp)
/* 00A808 80009C08 306400FF */  andi  $a0, $v1, 0xff
/* 00A80C 80009C0C 0C0026AD */  jal   func_80009AB4
/* 00A810 80009C10 AFA300D4 */   sw    $v1, 0xd4($sp)
/* 00A814 80009C14 10400039 */  beqz  $v0, .L80009CFC
/* 00A818 80009C18 8FA300D4 */   lw    $v1, 0xd4($sp)
/* 00A81C 80009C1C 82EF00B8 */  lb    $t7, 0xb8($s7)
/* 00A820 80009C20 26FE0004 */  addiu $fp, $s7, 4
/* 00A824 80009C24 19E00034 */  blez  $t7, .L80009CF8
/* 00A828 80009C28 AFA000D0 */   sw    $zero, 0xd0($sp)
.L80009C2C:
/* 00A82C 80009C2C 4406C000 */  mfc1  $a2, $f24
/* 00A830 80009C30 27B800C4 */  addiu $t8, $sp, 0xc4
/* 00A834 80009C34 27B900C0 */  addiu $t9, $sp, 0xc0
/* 00A838 80009C38 27A800BC */  addiu $t0, $sp, 0xbc
/* 00A83C 80009C3C AFA80018 */  sw    $t0, 0x18($sp)
/* 00A840 80009C40 AFB90014 */  sw    $t9, 0x14($sp)
/* 00A844 80009C44 AFB80010 */  sw    $t8, 0x10($sp)
/* 00A848 80009C48 4600B306 */  mov.s $f12, $f22
/* 00A84C 80009C4C 4600A386 */  mov.s $f14, $f20
/* 00A850 80009C50 0C0024AA */  jal   audioline_distance
/* 00A854 80009C54 03C03825 */   move  $a3, $fp
/* 00A858 80009C58 0056082A */  slt   $at, $v0, $s6
/* 00A85C 80009C5C 1020001D */  beqz  $at, .L80009CD4
/* 00A860 80009C60 00409825 */   move  $s3, $v0
/* 00A864 80009C64 8FA400B0 */  lw    $a0, 0xb0($sp)
/* 00A868 80009C68 4405B000 */  mfc1  $a1, $f22
/* 00A86C 80009C6C 4406C000 */  mfc1  $a2, $f24
/* 00A870 80009C70 27A7007C */  addiu $a3, $sp, 0x7c
/* 00A874 80009C74 0C00AEAC */  jal   func_8002BAB0
/* 00A878 80009C78 00001025 */   move  $v0, $zero
/* 00A87C 80009C7C 18400015 */  blez  $v0, .L80009CD4
/* 00A880 80009C80 27B0007C */   addiu $s0, $sp, 0x7c
/* 00A884 80009C84 00025080 */  sll   $t2, $v0, 2
/* 00A888 80009C88 0150A021 */  addu  $s4, $t2, $s0
.L80009C8C:
/* 00A88C 80009C8C C6040000 */  lwc1  $f4, ($s0)
/* 00A890 80009C90 8FA500C4 */  lw    $a1, 0xc4($sp)
/* 00A894 80009C94 4604A03C */  c.lt.s $f20, $f4
/* 00A898 80009C98 8FA600C0 */  lw    $a2, 0xc0($sp)
/* 00A89C 80009C9C 45000009 */  bc1f  .L80009CC4
/* 00A8A0 80009CA0 02E02025 */   move  $a0, $s7
/* 00A8A4 80009CA4 8FA700BC */  lw    $a3, 0xbc($sp)
/* 00A8A8 80009CA8 0260B025 */  move  $s6, $s3
/* 00A8AC 80009CAC 0C00275B */  jal   func_80009D6C
/* 00A8B0 80009CB0 02A08825 */   move  $s1, $s5
/* 00A8B4 80009CB4 0222082A */  slt   $at, $s1, $v0
/* 00A8B8 80009CB8 10200002 */  beqz  $at, .L80009CC4
/* 00A8BC 80009CBC 00000000 */   nop   
/* 00A8C0 80009CC0 305500FF */  andi  $s5, $v0, 0xff
.L80009CC4:
/* 00A8C4 80009CC4 26100004 */  addiu $s0, $s0, 4
/* 00A8C8 80009CC8 0214082B */  sltu  $at, $s0, $s4
/* 00A8CC 80009CCC 1420FFEF */  bnez  $at, .L80009C8C
/* 00A8D0 80009CD0 00000000 */   nop   
.L80009CD4:
/* 00A8D4 80009CD4 8FA200D0 */  lw    $v0, 0xd0($sp)
/* 00A8D8 80009CD8 8FAB00CC */  lw    $t3, 0xcc($sp)
/* 00A8DC 80009CDC 24420001 */  addiu $v0, $v0, 1
/* 00A8E0 80009CE0 AFA200D0 */  sw    $v0, 0xd0($sp)
/* 00A8E4 80009CE4 816C00B8 */  lb    $t4, 0xb8($t3)
/* 00A8E8 80009CE8 27DE000C */  addiu $fp, $fp, 0xc
/* 00A8EC 80009CEC 004C082A */  slt   $at, $v0, $t4
/* 00A8F0 80009CF0 1420FFCE */  bnez  $at, .L80009C2C
/* 00A8F4 80009CF4 00000000 */   nop   
.L80009CF8:
/* 00A8F8 80009CF8 8FA300D4 */  lw    $v1, 0xd4($sp)
.L80009CFC:
/* 00A8FC 80009CFC 24010007 */  li    $at, 7
/* 00A900 80009D00 24630001 */  addiu $v1, $v1, 1
/* 00A904 80009D04 1461FFBC */  bne   $v1, $at, .L80009BF8
/* 00A908 80009D08 26F700C0 */   addiu $s7, $s7, 0xc0
/* 00A90C 80009D0C 8FA400D8 */  lw    $a0, 0xd8($sp)
/* 00A910 80009D10 24050100 */  li    $a1, 256
/* 00A914 80009D14 10800004 */  beqz  $a0, .L80009D28
/* 00A918 80009D18 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00A91C 80009D1C 0C00127E */  jal   sound_event_update
/* 00A920 80009D20 02A03025 */   move  $a2, $s5
/* 00A924 80009D24 8FBF0064 */  lw    $ra, 0x64($sp)
.L80009D28:
/* 00A928 80009D28 C7B50028 */  lwc1  $f21, 0x28($sp)
/* 00A92C 80009D2C C7B4002C */  lwc1  $f20, 0x2c($sp)
/* 00A930 80009D30 C7B70030 */  lwc1  $f23, 0x30($sp)
/* 00A934 80009D34 C7B60034 */  lwc1  $f22, 0x34($sp)
/* 00A938 80009D38 C7B90038 */  lwc1  $f25, 0x38($sp)
/* 00A93C 80009D3C C7B8003C */  lwc1  $f24, 0x3c($sp)
/* 00A940 80009D40 8FB00040 */  lw    $s0, 0x40($sp)
/* 00A944 80009D44 8FB10044 */  lw    $s1, 0x44($sp)
/* 00A948 80009D48 8FB20048 */  lw    $s2, 0x48($sp)
/* 00A94C 80009D4C 8FB3004C */  lw    $s3, 0x4c($sp)
/* 00A950 80009D50 8FB40050 */  lw    $s4, 0x50($sp)
/* 00A954 80009D54 8FB50054 */  lw    $s5, 0x54($sp)
/* 00A958 80009D58 8FB60058 */  lw    $s6, 0x58($sp)
/* 00A95C 80009D5C 8FB7005C */  lw    $s7, 0x5c($sp)
/* 00A960 80009D60 8FBE0060 */  lw    $fp, 0x60($sp)
/* 00A964 80009D64 03E00008 */  jr    $ra
/* 00A968 80009D68 27BD00D8 */   addiu $sp, $sp, 0xd8

