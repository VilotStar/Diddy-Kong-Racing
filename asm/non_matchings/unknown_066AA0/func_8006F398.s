glabel func_8006F398
/* 06FF98 8006F398 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06FF9C 8006F39C AFBF0014 */  sw    $ra, 0x14($sp)
/* 06FFA0 8006F3A0 0C01A943 */  jal   func_8006A50C
/* 06FFA4 8006F3A4 00000000 */   nop   
/* 06FFA8 8006F3A8 0C003865 */  jal   func_8000E194
/* 06FFAC 8006F3AC 00000000 */   nop   
/* 06FFB0 8006F3B0 3C028012 */  lui   $v0, %hi(gSettingsPtr) # $v0, 0x8012
/* 06FFB4 8006F3B4 8C423510 */  lw    $v0, %lo(gSettingsPtr)($v0)
/* 06FFB8 8006F3B8 00002825 */  move  $a1, $zero
/* 06FFBC 8006F3BC 24060018 */  li    $a2, 24
/* 06FFC0 8006F3C0 24430054 */  addiu $v1, $v0, 0x54
/* 06FFC4 8006F3C4 2444006C */  addiu $a0, $v0, 0x6c
.L8006F3C8:
/* 06FFC8 8006F3C8 90620000 */  lbu   $v0, ($v1)
/* 06FFCC 8006F3CC 908E0000 */  lbu   $t6, ($a0)
/* 06FFD0 8006F3D0 24A50004 */  addiu $a1, $a1, 4
/* 06FFD4 8006F3D4 A06E0000 */  sb    $t6, ($v1)
/* 06FFD8 8006F3D8 A0820000 */  sb    $v0, ($a0)
/* 06FFDC 8006F3DC 90620001 */  lbu   $v0, 1($v1)
/* 06FFE0 8006F3E0 908F0001 */  lbu   $t7, 1($a0)
/* 06FFE4 8006F3E4 24630004 */  addiu $v1, $v1, 4
/* 06FFE8 8006F3E8 A06FFFFD */  sb    $t7, -3($v1)
/* 06FFEC 8006F3EC A0820001 */  sb    $v0, 1($a0)
/* 06FFF0 8006F3F0 9062FFFE */  lbu   $v0, -2($v1)
/* 06FFF4 8006F3F4 90980002 */  lbu   $t8, 2($a0)
/* 06FFF8 8006F3F8 24840004 */  addiu $a0, $a0, 4
/* 06FFFC 8006F3FC A078FFFE */  sb    $t8, -2($v1)
/* 070000 8006F400 A082FFFE */  sb    $v0, -2($a0)
/* 070004 8006F404 9062FFFF */  lbu   $v0, -1($v1)
/* 070008 8006F408 9099FFFF */  lbu   $t9, -1($a0)
/* 07000C 8006F40C 00000000 */  nop   
/* 070010 8006F410 A079FFFF */  sb    $t9, -1($v1)
/* 070014 8006F414 14A6FFEC */  bne   $a1, $a2, .L8006F3C8
/* 070018 8006F418 A082FFFF */   sb    $v0, -1($a0)
/* 07001C 8006F41C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 070020 8006F420 27BD0018 */  addiu $sp, $sp, 0x18
/* 070024 8006F424 03E00008 */  jr    $ra
/* 070028 8006F428 00000000 */   nop   

