.late_rodata
glabel D_800E49E0
.float 46875.0
glabel D_800E49E4
.float 46875.0
glabel D_800E49E8
.float 120000.0

.text
glabel audio_get_chr_select_anim_frac
/* 0021F8 800015F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0021FC 800015FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 002200 80001600 0C031E34 */  jal   osGetCount
/* 002204 80001604 00000000 */   nop   
/* 002208 80001608 3C04800E */  lui   $a0, %hi(audioPrevCount) # $a0, 0x800e
/* 00220C 8000160C 8C84C64C */  lw    $a0, %lo(audioPrevCount)($a0)
/* 002210 80001610 3C198011 */  lui   $t9, %hi(D_80115D40) # $t9, 0x8011
/* 002214 80001614 0082082B */  sltu  $at, $a0, $v0
/* 002218 80001618 10200013 */  beqz  $at, .L80001668
/* 00221C 8000161C 3C098011 */   lui   $t1, %hi(sMusicTempo) # $t1, 0x8011
/* 002220 80001620 00447023 */  subu  $t6, $v0, $a0
/* 002224 80001624 448E2000 */  mtc1  $t6, $f4
/* 002228 80001628 3C038011 */  lui   $v1, %hi(D_80115D34) # $v1, 0x8011
/* 00222C 8000162C 24635D34 */  addiu $v1, %lo(D_80115D34) # addiu $v1, $v1, 0x5d34
/* 002230 80001630 05C10005 */  bgez  $t6, .L80001648
/* 002234 80001634 468021A0 */   cvt.s.w $f6, $f4
/* 002238 80001638 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00223C 8000163C 44814000 */  mtc1  $at, $f8
/* 002240 80001640 00000000 */  nop   
/* 002244 80001644 46083180 */  add.s $f6, $f6, $f8
.L80001648:
/* 002248 80001648 3C01800E */  lui   $at, %hi(D_800E49E0) # $at, 0x800e
/* 00224C 8000164C C42A49E0 */  lwc1  $f10, %lo(D_800E49E0)($at)
/* 002250 80001650 C4720000 */  lwc1  $f18, ($v1)
/* 002254 80001654 460A3403 */  div.s $f16, $f6, $f10
/* 002258 80001658 3C018011 */  lui   $at, %hi(D_80115D34) # $at, 0x8011
/* 00225C 8000165C 46109100 */  add.s $f4, $f18, $f16
/* 002260 80001660 10000013 */  b     .L800016B0
/* 002264 80001664 E4245D34 */   swc1  $f4, %lo(D_80115D34)($at)
.L80001668:
/* 002268 80001668 00447823 */  subu  $t7, $v0, $a0
/* 00226C 8000166C 25F8FFFF */  addiu $t8, $t7, -1
/* 002270 80001670 44984000 */  mtc1  $t8, $f8
/* 002274 80001674 3C038011 */  lui   $v1, %hi(D_80115D34) # $v1, 0x8011
/* 002278 80001678 24635D34 */  addiu $v1, %lo(D_80115D34) # addiu $v1, $v1, 0x5d34
/* 00227C 8000167C 07010005 */  bgez  $t8, .L80001694
/* 002280 80001680 468041A0 */   cvt.s.w $f6, $f8
/* 002284 80001684 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 002288 80001688 44815000 */  mtc1  $at, $f10
/* 00228C 8000168C 00000000 */  nop   
/* 002290 80001690 460A3180 */  add.s $f6, $f6, $f10
.L80001694:
/* 002294 80001694 3C01800E */  lui   $at, %hi(D_800E49E4) # $at, 0x800e
/* 002298 80001698 C43249E4 */  lwc1  $f18, %lo(D_800E49E4)($at)
/* 00229C 8000169C C4640000 */  lwc1  $f4, ($v1)
/* 0022A0 800016A0 46123403 */  div.s $f16, $f6, $f18
/* 0022A4 800016A4 3C018011 */  lui   $at, %hi(D_80115D34) # $at, 0x8011
/* 0022A8 800016A8 46102200 */  add.s $f8, $f4, $f16
/* 0022AC 800016AC E4285D34 */  swc1  $f8, %lo(D_80115D34)($at)
.L800016B0:
/* 0022B0 800016B0 93395D40 */  lbu   $t9, %lo(D_80115D40)($t9)
/* 0022B4 800016B4 240800B6 */  li    $t0, 182
/* 0022B8 800016B8 17200002 */  bnez  $t9, .L800016C4
/* 0022BC 800016BC 3C018011 */   lui   $at, %hi(sMusicTempo) # $at, 0x8011
/* 0022C0 800016C0 A4285D30 */  sh    $t0, %lo(sMusicTempo)($at)
.L800016C4:
/* 0022C4 800016C4 85295D30 */  lh    $t1, %lo(sMusicTempo)($t1)
/* 0022C8 800016C8 3C01800E */  lui   $at, %hi(D_800E49E8) # $at, 0x800e
/* 0022CC 800016CC 44893000 */  mtc1  $t1, $f6
/* 0022D0 800016D0 C42A49E8 */  lwc1  $f10, %lo(D_800E49E8)($at)
/* 0022D4 800016D4 468034A0 */  cvt.s.w $f18, $f6
/* 0022D8 800016D8 C4620000 */  lwc1  $f2, ($v1)
/* 0022DC 800016DC 3C01800E */  lui   $at, %hi(audioPrevCount) # $at, 0x800e
/* 0022E0 800016E0 46125303 */  div.s $f12, $f10, $f18
/* 0022E4 800016E4 4602603C */  c.lt.s $f12, $f2
/* 0022E8 800016E8 00000000 */  nop   
/* 0022EC 800016EC 4500000A */  bc1f  .L80001718
/* 0022F0 800016F0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800016F4:
/* 0022F4 800016F4 460C1101 */  sub.s $f4, $f2, $f12
/* 0022F8 800016F8 E4640000 */  swc1  $f4, ($v1)
/* 0022FC 800016FC C4620000 */  lwc1  $f2, ($v1)
/* 002300 80001700 00000000 */  nop   
/* 002304 80001704 4602603C */  c.lt.s $f12, $f2
/* 002308 80001708 00000000 */  nop   
/* 00230C 8000170C 4501FFF9 */  bc1t  .L800016F4
/* 002310 80001710 00000000 */   nop   
/* 002314 80001714 8FBF0014 */  lw    $ra, 0x14($sp)
.L80001718:
/* 002318 80001718 AC22C64C */  sw    $v0, %lo(audioPrevCount)($at)
/* 00231C 8000171C 27BD0018 */  addiu $sp, $sp, 0x18
/* 002320 80001720 03E00008 */  jr    $ra
/* 002324 80001724 460C1003 */   div.s $f0, $f2, $f12
