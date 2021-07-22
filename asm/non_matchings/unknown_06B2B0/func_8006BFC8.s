glabel func_8006BFC8
/* 06CBC8 8006BFC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 06CBCC 8006BFCC AFBF001C */  sw    $ra, 0x1c($sp)
/* 06CBD0 8006BFD0 AFB00018 */  sw    $s0, 0x18($sp)
/* 06CBD4 8006BFD4 AFA40028 */  sw    $a0, 0x28($sp)
/* 06CBD8 8006BFD8 0C0270B4 */  jal   is_in_tracks_mode
/* 06CBDC 8006BFDC 00008025 */   move  $s0, $zero
/* 06CBE0 8006BFE0 14400011 */  bnez  $v0, .L8006C028
/* 06CBE4 8006BFE4 00000000 */   nop   
/* 06CBE8 8006BFE8 0C01BAA4 */  jal   get_settings
/* 06CBEC 8006BFEC 00000000 */   nop   
/* 06CBF0 8006BFF0 904F0049 */  lbu   $t7, 0x49($v0)
/* 06CBF4 8006BFF4 8C4E0004 */  lw    $t6, 4($v0)
/* 06CBF8 8006BFF8 000FC080 */  sll   $t8, $t7, 2
/* 06CBFC 8006BFFC 01D8C821 */  addu  $t9, $t6, $t8
/* 06CC00 8006C000 8F270000 */  lw    $a3, ($t9)
/* 06CC04 8006C004 00000000 */  nop   
/* 06CC08 8006C008 30E90002 */  andi  $t1, $a3, 2
/* 06CC0C 8006C00C 11200002 */  beqz  $t1, .L8006C018
/* 06CC10 8006C010 30EA0004 */   andi  $t2, $a3, 4
/* 06CC14 8006C014 24100001 */  li    $s0, 1
.L8006C018:
/* 06CC18 8006C018 11400004 */  beqz  $t2, .L8006C02C
/* 06CC1C 8006C01C 00000000 */   nop   
/* 06CC20 8006C020 10000002 */  b     .L8006C02C
/* 06CC24 8006C024 24100002 */   li    $s0, 2
.L8006C028:
/* 06CC28 8006C028 24100003 */  li    $s0, 3
.L8006C02C:
/* 06CC2C 8006C02C 0C02658B */  jal   get_trophy_race_world_id
/* 06CC30 8006C030 00000000 */   nop   
/* 06CC34 8006C034 10400002 */  beqz  $v0, .L8006C040
/* 06CC38 8006C038 00000000 */   nop   
/* 06CC3C 8006C03C 24100004 */  li    $s0, 4
.L8006C040:
/* 06CC40 8006C040 0C027B1C */  jal   is_in_adventure_two
/* 06CC44 8006C044 00000000 */   nop   
/* 06CC48 8006C048 8FAD0028 */  lw    $t5, 0x28($sp)
/* 06CC4C 8006C04C 10400005 */  beqz  $v0, .L8006C064
/* 06CC50 8006C050 020D7821 */   addu  $t7, $s0, $t5
/* 06CC54 8006C054 26100005 */  addiu $s0, $s0, 5
/* 06CC58 8006C058 00105E00 */  sll   $t3, $s0, 0x18
/* 06CC5C 8006C05C 000B8603 */  sra   $s0, $t3, 0x18
/* 06CC60 8006C060 020D7821 */  addu  $t7, $s0, $t5
.L8006C064:
/* 06CC64 8006C064 81F00000 */  lb    $s0, ($t7)
/* 06CC68 8006C068 0C0270C3 */  jal   get_filtered_cheats
/* 06CC6C 8006C06C 00000000 */   nop   
/* 06CC70 8006C070 00027180 */  sll   $t6, $v0, 6
/* 06CC74 8006C074 05C10002 */  bgez  $t6, .L8006C080
/* 06CC78 8006C078 00000000 */   nop   
/* 06CC7C 8006C07C 24100009 */  li    $s0, 9
.L8006C080:
/* 06CC80 8006C080 0C01B683 */  jal   func_8006DA0C
/* 06CC84 8006C084 00000000 */   nop   
/* 06CC88 8006C088 24010001 */  li    $at, 1
/* 06CC8C 8006C08C 14410002 */  bne   $v0, $at, .L8006C098
/* 06CC90 8006C090 00000000 */   nop   
/* 06CC94 8006C094 24100005 */  li    $s0, 5
.L8006C098:
/* 06CC98 8006C098 0C01DB16 */  jal   load_asset_section_from_rom
/* 06CC9C 8006C09C 24040001 */   li    $a0, 1
/* 06CCA0 8006C0A0 3C088012 */  lui   $t0, %hi(gTempAssetTable) # $t0, 0x8012
/* 06CCA4 8006C0A4 25081160 */  addiu $t0, %lo(gTempAssetTable) # addiu $t0, $t0, 0x1160
/* 06CCA8 8006C0A8 AD020000 */  sw    $v0, ($t0)
/* 06CCAC 8006C0AC 8C580000 */  lw    $t8, ($v0)
/* 06CCB0 8006C0B0 2404FFFF */  li    $a0, -1
/* 06CCB4 8006C0B4 00001825 */  move  $v1, $zero
/* 06CCB8 8006C0B8 1098000A */  beq   $a0, $t8, .L8006C0E4
/* 06CCBC 8006C0BC 00403025 */   move  $a2, $v0
.L8006C0C0:
/* 06CCC0 8006C0C0 24630001 */  addiu $v1, $v1, 1
/* 06CCC4 8006C0C4 0003CC00 */  sll   $t9, $v1, 0x10
/* 06CCC8 8006C0C8 00191C03 */  sra   $v1, $t9, 0x10
/* 06CCCC 8006C0CC 00035080 */  sll   $t2, $v1, 2
/* 06CCD0 8006C0D0 00CA5821 */  addu  $t3, $a2, $t2
/* 06CCD4 8006C0D4 8D6C0000 */  lw    $t4, ($t3)
/* 06CCD8 8006C0D8 00000000 */  nop   
/* 06CCDC 8006C0DC 148CFFF8 */  bne   $a0, $t4, .L8006C0C0
/* 06CCE0 8006C0E0 00000000 */   nop   
.L8006C0E4:
/* 06CCE4 8006C0E4 2463FFFF */  addiu $v1, $v1, -1
/* 06CCE8 8006C0E8 00036C00 */  sll   $t5, $v1, 0x10
/* 06CCEC 8006C0EC 000D7C03 */  sra   $t7, $t5, 0x10
/* 06CCF0 8006C0F0 020F082A */  slt   $at, $s0, $t7
/* 06CCF4 8006C0F4 14200002 */  bnez  $at, .L8006C100
/* 06CCF8 8006C0F8 3C05FFFF */   lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06CCFC 8006C0FC 00008025 */  move  $s0, $zero
.L8006C100:
/* 06CD00 8006C100 00107080 */  sll   $t6, $s0, 2
/* 06CD04 8006C104 00CE1021 */  addu  $v0, $a2, $t6
/* 06CD08 8006C108 8C430000 */  lw    $v1, ($v0)
/* 06CD0C 8006C10C 8C580004 */  lw    $t8, 4($v0)
/* 06CD10 8006C110 34A500FF */  ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06CD14 8006C114 03032023 */  subu  $a0, $t8, $v1
/* 06CD18 8006C118 AFA40024 */  sw    $a0, 0x24($sp)
/* 06CD1C 8006C11C 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06CD20 8006C120 AFA30020 */   sw    $v1, 0x20($sp)
/* 06CD24 8006C124 3C038012 */  lui   $v1, %hi(D_801211C0) # $v1, 0x8012
/* 06CD28 8006C128 246311C0 */  addiu $v1, %lo(D_801211C0) # addiu $v1, $v1, 0x11c0
/* 06CD2C 8006C12C 8FA70024 */  lw    $a3, 0x24($sp)
/* 06CD30 8006C130 8FA60020 */  lw    $a2, 0x20($sp)
/* 06CD34 8006C134 AC620000 */  sw    $v0, ($v1)
/* 06CD38 8006C138 00002025 */  move  $a0, $zero
/* 06CD3C 8006C13C 0C01DB9A */  jal   load_asset_to_address
/* 06CD40 8006C140 00402825 */   move  $a1, $v0
/* 06CD44 8006C144 3C048012 */  lui   $a0, %hi(gTempAssetTable) # $a0, 0x8012
/* 06CD48 8006C148 8C841160 */  lw    $a0, %lo(gTempAssetTable)($a0)
/* 06CD4C 8006C14C 0C01C450 */  jal   free_from_memory_pool
/* 06CD50 8006C150 00000000 */   nop   
/* 06CD54 8006C154 8FBF001C */  lw    $ra, 0x1c($sp)
/* 06CD58 8006C158 8FB00018 */  lw    $s0, 0x18($sp)
/* 06CD5C 8006C15C 03E00008 */  jr    $ra
/* 06CD60 8006C160 27BD0028 */   addiu $sp, $sp, 0x28
