glabel func_80082FAC
/* 083BAC 80082FAC 3C0F8012 */  lui   $t7, %hi(D_8012644C) # $t7, 0x8012
/* 083BB0 80082FB0 8DEF644C */  lw    $t7, %lo(D_8012644C)($t7)
/* 083BB4 80082FB4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 083BB8 80082FB8 3C0E8012 */  lui   $t6, %hi(D_80126448) # $t6, 0x8012
/* 083BBC 80082FBC 8DCE6448 */  lw    $t6, %lo(D_80126448)($t6)
/* 083BC0 80082FC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 083BC4 80082FC4 AFAF001C */  sw    $t7, 0x1c($sp)
/* 083BC8 80082FC8 31F90002 */  andi  $t9, $t7, 2
/* 083BCC 80082FCC AFAE0018 */  sw    $t6, 0x18($sp)
/* 083BD0 80082FD0 1320000A */  beqz  $t9, .L80082FFC
/* 083BD4 80082FD4 8FAB001C */   lw    $t3, 0x1c($sp)
/* 083BD8 80082FD8 0C0270B8 */  jal   set_magic_code_flags
/* 083BDC 80082FDC 24040002 */   li    $a0, 2
/* 083BE0 80082FE0 3C088012 */  lui   $t0, %hi(D_80126448) # $t0, 0x8012
/* 083BE4 80082FE4 3C098012 */  lui   $t1, %hi(D_8012644C) # $t1, 0x8012
/* 083BE8 80082FE8 8D29644C */  lw    $t1, %lo(D_8012644C)($t1)
/* 083BEC 80082FEC 8D086448 */  lw    $t0, %lo(D_80126448)($t0)
/* 083BF0 80082FF0 AFA9001C */  sw    $t1, 0x1c($sp)
/* 083BF4 80082FF4 AFA80018 */  sw    $t0, 0x18($sp)
/* 083BF8 80082FF8 8FAB001C */  lw    $t3, 0x1c($sp)
.L80082FFC:
/* 083BFC 80082FFC 3C0100FF */  lui   $at, (0x00FFFFF0 >> 16) # lui $at, 0xff
/* 083C00 80083000 3421FFF0 */  ori   $at, (0x00FFFFF0 & 0xFFFF) # ori $at, $at, 0xfff0
/* 083C04 80083004 01616824 */  and   $t5, $t3, $at
/* 083C08 80083008 3C0100FF */  lui   $at, (0x00FFFFF0 >> 16) # lui $at, 0xff
/* 083C0C 8008300C 3421FFF0 */  ori   $at, (0x00FFFFF0 & 0xFFFF) # ori $at, $at, 0xfff0
/* 083C10 80083010 15A1000A */  bne   $t5, $at, .L8008303C
/* 083C14 80083014 8FB9001C */   lw    $t9, 0x1c($sp)
/* 083C18 80083018 0C0270B8 */  jal   set_magic_code_flags
/* 083C1C 8008301C 24040001 */   li    $a0, 1
/* 083C20 80083020 3C0E8012 */  lui   $t6, %hi(D_80126448) # $t6, 0x8012
/* 083C24 80083024 3C0F8012 */  lui   $t7, %hi(D_8012644C) # $t7, 0x8012
/* 083C28 80083028 8DEF644C */  lw    $t7, %lo(D_8012644C)($t7)
/* 083C2C 8008302C 8DCE6448 */  lw    $t6, %lo(D_80126448)($t6)
/* 083C30 80083030 AFAF001C */  sw    $t7, 0x1c($sp)
/* 083C34 80083034 AFAE0018 */  sw    $t6, 0x18($sp)
/* 083C38 80083038 8FB9001C */  lw    $t9, 0x1c($sp)
.L8008303C:
/* 083C3C 8008303C 240A0001 */  li    $t2, 1
/* 083C40 80083040 33290001 */  andi  $t1, $t9, 1
/* 083C44 80083044 11200004 */  beqz  $t1, .L80083058
/* 083C48 80083048 3C01800E */   lui   $at, 0x800e
/* 083C4C 8008304C 3C01800E */  lui   $at, %hi(gIsInAdventureTwo) # $at, 0x800e
/* 083C50 80083050 10000002 */  b     .L8008305C
/* 083C54 80083054 AC2AF494 */   sw    $t2, %lo(gIsInAdventureTwo)($at)
.L80083058:
/* 083C58 80083058 AC20F494 */  sw    $zero, %lo(gIsInAdventureTwo)($at)
.L8008305C:
/* 083C5C 8008305C 8FAD001C */  lw    $t5, 0x1c($sp)
/* 083C60 80083060 3C010200 */  lui   $at, 0x200
/* 083C64 80083064 01A17824 */  and   $t7, $t5, $at
/* 083C68 80083068 15E00003 */  bnez  $t7, .L80083078
/* 083C6C 8008306C 00000000 */   nop   
/* 083C70 80083070 0C030ABD */  jal   func_800C2AF4
/* 083C74 80083074 00002025 */   move  $a0, $zero
.L80083078:
/* 083C78 80083078 0C027AC8 */  jal   func_8009EB20
/* 083C7C 8008307C 00000000 */   nop   
/* 083C80 80083080 0C01FE40 */  jal   func_8007F900
/* 083C84 80083084 00402025 */   move  $a0, $v0
/* 083C88 80083088 8FBF0014 */  lw    $ra, 0x14($sp)
/* 083C8C 8008308C 27BD0028 */  addiu $sp, $sp, 0x28
/* 083C90 80083090 03E00008 */  jr    $ra
/* 083C94 80083094 00000000 */   nop   

