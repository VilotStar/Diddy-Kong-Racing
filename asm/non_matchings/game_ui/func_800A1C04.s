glabel func_800A1C04
/* 0A2804 800A1C04 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0A2808 800A1C08 3C0F8012 */  lui   $t7, %hi(D_80126D37) # $t7, 0x8012
/* 0A280C 800A1C0C 91EF6D37 */  lbu   $t7, %lo(D_80126D37)($t7)
/* 0A2810 800A1C10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2814 800A1C14 AFA40040 */  sw    $a0, 0x40($sp)
/* 0A2818 800A1C18 AFA50044 */  sw    $a1, 0x44($sp)
/* 0A281C 800A1C1C AFA60048 */  sw    $a2, 0x48($sp)
/* 0A2820 800A1C20 8CA70064 */  lw    $a3, 0x64($a1)
/* 0A2824 800A1C24 24010001 */  li    $at, 1
/* 0A2828 800A1C28 15E10005 */  bne   $t7, $at, .L800A1C40
/* 0A282C 800A1C2C 24040001 */   li    $a0, 1
/* 0A2830 800A1C30 80F801D8 */  lb    $t8, 0x1d8($a3)
/* 0A2834 800A1C34 00000000 */  nop   
/* 0A2838 800A1C38 17000080 */  bnez  $t8, .L800A1E3C
/* 0A283C 800A1C3C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A1C40:
/* 0A2840 800A1C40 0C01A142 */  jal   func_80068508
/* 0A2844 800A1C44 AFA70038 */   sw    $a3, 0x38($sp)
/* 0A2848 800A1C48 8FA40040 */  lw    $a0, 0x40($sp)
/* 0A284C 800A1C4C 8FA50048 */  lw    $a1, 0x48($sp)
/* 0A2850 800A1C50 0C028F39 */  jal   func_800A3CE4
/* 0A2854 800A1C54 00000000 */   nop   
/* 0A2858 800A1C58 8FA40044 */  lw    $a0, 0x44($sp)
/* 0A285C 800A1C5C 8FA50048 */  lw    $a1, 0x48($sp)
/* 0A2860 800A1C60 0C029D48 */  jal   func_800A7520
/* 0A2864 800A1C64 00000000 */   nop   
/* 0A2868 800A1C68 0C006E9D */  jal   get_object_struct_array
/* 0A286C 800A1C6C 27A40034 */   addiu $a0, $sp, 0x34
/* 0A2870 800A1C70 3C038012 */  lui   $v1, %hi(D_80126D37) # $v1, 0x8012
/* 0A2874 800A1C74 90636D37 */  lbu   $v1, %lo(D_80126D37)($v1)
/* 0A2878 800A1C78 8FA70038 */  lw    $a3, 0x38($sp)
/* 0A287C 800A1C7C 24010001 */  li    $at, 1
/* 0A2880 800A1C80 10610005 */  beq   $v1, $at, .L800A1C98
/* 0A2884 800A1C84 240A0002 */   li    $t2, 2
/* 0A2888 800A1C88 106A000A */  beq   $v1, $t2, .L800A1CB4
/* 0A288C 800A1C8C 8FB90034 */   lw    $t9, 0x34($sp)
/* 0A2890 800A1C90 10000065 */  b     .L800A1E28
/* 0A2894 800A1C94 8FA50048 */   lw    $a1, 0x48($sp)
.L800A1C98:
/* 0A2898 800A1C98 8FA40044 */  lw    $a0, 0x44($sp)
/* 0A289C 800A1C9C 8FA50048 */  lw    $a1, 0x48($sp)
/* 0A28A0 800A1CA0 0C028792 */  jal   func_800A1E48
/* 0A28A4 800A1CA4 00000000 */   nop   
/* 0A28A8 800A1CA8 10000061 */  b     .L800A1E30
/* 0A28AC 800A1CAC 00000000 */   nop   
/* 0A28B0 800A1CB0 8FB90034 */  lw    $t9, 0x34($sp)
.L800A1CB4:
/* 0A28B4 800A1CB4 00002825 */  move  $a1, $zero
/* 0A28B8 800A1CB8 1B200056 */  blez  $t9, .L800A1E14
/* 0A28BC 800A1CBC 00003025 */   move  $a2, $zero
/* 0A28C0 800A1CC0 33230003 */  andi  $v1, $t9, 3
/* 0A28C4 800A1CC4 10600017 */  beqz  $v1, .L800A1D24
/* 0A28C8 800A1CC8 00604825 */   move  $t1, $v1
/* 0A28CC 800A1CCC 00005880 */  sll   $t3, $zero, 2
/* 0A28D0 800A1CD0 004B2021 */  addu  $a0, $v0, $t3
/* 0A28D4 800A1CD4 2408FFFF */  li    $t0, -1
.L800A1CD8:
/* 0A28D8 800A1CD8 8C8C0000 */  lw    $t4, ($a0)
/* 0A28DC 800A1CDC 24C60001 */  addiu $a2, $a2, 1
/* 0A28E0 800A1CE0 8D830064 */  lw    $v1, 0x64($t4)
/* 0A28E4 800A1CE4 00000000 */  nop   
/* 0A28E8 800A1CE8 846D0000 */  lh    $t5, ($v1)
/* 0A28EC 800A1CEC 00000000 */  nop   
/* 0A28F0 800A1CF0 110D0006 */  beq   $t0, $t5, .L800A1D0C
/* 0A28F4 800A1CF4 00000000 */   nop   
/* 0A28F8 800A1CF8 806E01D8 */  lb    $t6, 0x1d8($v1)
/* 0A28FC 800A1CFC 00000000 */  nop   
/* 0A2900 800A1D00 11C00002 */  beqz  $t6, .L800A1D0C
/* 0A2904 800A1D04 00000000 */   nop   
/* 0A2908 800A1D08 24A50001 */  addiu $a1, $a1, 1
.L800A1D0C:
/* 0A290C 800A1D0C 1526FFF2 */  bne   $t1, $a2, .L800A1CD8
/* 0A2910 800A1D10 24840004 */   addiu $a0, $a0, 4
/* 0A2914 800A1D14 8FAF0034 */  lw    $t7, 0x34($sp)
/* 0A2918 800A1D18 00000000 */  nop   
/* 0A291C 800A1D1C 10CF003D */  beq   $a2, $t7, .L800A1E14
/* 0A2920 800A1D20 00000000 */   nop   
.L800A1D24:
/* 0A2924 800A1D24 8FB80034 */  lw    $t8, 0x34($sp)
/* 0A2928 800A1D28 00065880 */  sll   $t3, $a2, 2
/* 0A292C 800A1D2C 0018C880 */  sll   $t9, $t8, 2
/* 0A2930 800A1D30 03224821 */  addu  $t1, $t9, $v0
/* 0A2934 800A1D34 004B2021 */  addu  $a0, $v0, $t3
/* 0A2938 800A1D38 2408FFFF */  li    $t0, -1
.L800A1D3C:
/* 0A293C 800A1D3C 8C8C0000 */  lw    $t4, ($a0)
/* 0A2940 800A1D40 00000000 */  nop   
/* 0A2944 800A1D44 8D830064 */  lw    $v1, 0x64($t4)
/* 0A2948 800A1D48 00000000 */  nop   
/* 0A294C 800A1D4C 846D0000 */  lh    $t5, ($v1)
/* 0A2950 800A1D50 00000000 */  nop   
/* 0A2954 800A1D54 110D0006 */  beq   $t0, $t5, .L800A1D70
/* 0A2958 800A1D58 00000000 */   nop   
/* 0A295C 800A1D5C 806E01D8 */  lb    $t6, 0x1d8($v1)
/* 0A2960 800A1D60 00000000 */  nop   
/* 0A2964 800A1D64 11C00002 */  beqz  $t6, .L800A1D70
/* 0A2968 800A1D68 00000000 */   nop   
/* 0A296C 800A1D6C 24A50001 */  addiu $a1, $a1, 1
.L800A1D70:
/* 0A2970 800A1D70 8C8F0004 */  lw    $t7, 4($a0)
/* 0A2974 800A1D74 00000000 */  nop   
/* 0A2978 800A1D78 8DE70064 */  lw    $a3, 0x64($t7)
/* 0A297C 800A1D7C 00000000 */  nop   
/* 0A2980 800A1D80 84F80000 */  lh    $t8, ($a3)
/* 0A2984 800A1D84 00000000 */  nop   
/* 0A2988 800A1D88 11180006 */  beq   $t0, $t8, .L800A1DA4
/* 0A298C 800A1D8C 00000000 */   nop   
/* 0A2990 800A1D90 80F901D8 */  lb    $t9, 0x1d8($a3)
/* 0A2994 800A1D94 00000000 */  nop   
/* 0A2998 800A1D98 13200002 */  beqz  $t9, .L800A1DA4
/* 0A299C 800A1D9C 00000000 */   nop   
/* 0A29A0 800A1DA0 24A50001 */  addiu $a1, $a1, 1
.L800A1DA4:
/* 0A29A4 800A1DA4 8C8B0008 */  lw    $t3, 8($a0)
/* 0A29A8 800A1DA8 00000000 */  nop   
/* 0A29AC 800A1DAC 8D670064 */  lw    $a3, 0x64($t3)
/* 0A29B0 800A1DB0 00000000 */  nop   
/* 0A29B4 800A1DB4 84EC0000 */  lh    $t4, ($a3)
/* 0A29B8 800A1DB8 00000000 */  nop   
/* 0A29BC 800A1DBC 110C0006 */  beq   $t0, $t4, .L800A1DD8
/* 0A29C0 800A1DC0 00000000 */   nop   
/* 0A29C4 800A1DC4 80ED01D8 */  lb    $t5, 0x1d8($a3)
/* 0A29C8 800A1DC8 00000000 */  nop   
/* 0A29CC 800A1DCC 11A00002 */  beqz  $t5, .L800A1DD8
/* 0A29D0 800A1DD0 00000000 */   nop   
/* 0A29D4 800A1DD4 24A50001 */  addiu $a1, $a1, 1
.L800A1DD8:
/* 0A29D8 800A1DD8 8C8E000C */  lw    $t6, 0xc($a0)
/* 0A29DC 800A1DDC 24840010 */  addiu $a0, $a0, 0x10
/* 0A29E0 800A1DE0 8DC70064 */  lw    $a3, 0x64($t6)
/* 0A29E4 800A1DE4 00000000 */  nop   
/* 0A29E8 800A1DE8 84EF0000 */  lh    $t7, ($a3)
/* 0A29EC 800A1DEC 00000000 */  nop   
/* 0A29F0 800A1DF0 110F0006 */  beq   $t0, $t7, .L800A1E0C
/* 0A29F4 800A1DF4 00000000 */   nop   
/* 0A29F8 800A1DF8 80F801D8 */  lb    $t8, 0x1d8($a3)
/* 0A29FC 800A1DFC 00000000 */  nop   
/* 0A2A00 800A1E00 13000002 */  beqz  $t8, .L800A1E0C
/* 0A2A04 800A1E04 00000000 */   nop   
/* 0A2A08 800A1E08 24A50001 */  addiu $a1, $a1, 1
.L800A1E0C:
/* 0A2A0C 800A1E0C 1489FFCB */  bne   $a0, $t1, .L800A1D3C
/* 0A2A10 800A1E10 00000000 */   nop   
.L800A1E14:
/* 0A2A14 800A1E14 14AA0006 */  bne   $a1, $t2, .L800A1E30
/* 0A2A18 800A1E18 00000000 */   nop   
/* 0A2A1C 800A1E1C 10000007 */  b     .L800A1E3C
/* 0A2A20 800A1E20 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A2A24 800A1E24 8FA50048 */  lw    $a1, 0x48($sp)
.L800A1E28:
/* 0A2A28 800A1E28 0C029055 */  jal   func_800A4154
/* 0A2A2C 800A1E2C 00E02025 */   move  $a0, $a3
.L800A1E30:
/* 0A2A30 800A1E30 0C01A142 */  jal   func_80068508
/* 0A2A34 800A1E34 00002025 */   move  $a0, $zero
/* 0A2A38 800A1E38 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A1E3C:
/* 0A2A3C 800A1E3C 27BD0040 */  addiu $sp, $sp, 0x40
/* 0A2A40 800A1E40 03E00008 */  jr    $ra
/* 0A2A44 800A1E44 00000000 */   nop   
