glabel func_80022948
/* 023548 80022948 3C028012 */  lui   $v0, %hi(D_8011AEF7) # $v0, 0x8012
/* 02354C 8002294C 2442AEF7 */  addiu $v0, %lo(D_8011AEF7) # addiu $v0, $v0, -0x5109
/* 023550 80022950 804E0000 */  lb    $t6, ($v0)
/* 023554 80022954 27BDFF80 */  addiu $sp, $sp, -0x80
/* 023558 80022958 25CFFFFF */  addiu $t7, $t6, -1
/* 02355C 8002295C A04F0000 */  sb    $t7, ($v0)
/* 023560 80022960 80580000 */  lb    $t8, ($v0)
/* 023564 80022964 AFBF001C */  sw    $ra, 0x1c($sp)
/* 023568 80022968 170000E0 */  bnez  $t8, .L80022CEC
/* 02356C 8002296C AFB00018 */   sw    $s0, 0x18($sp)
/* 023570 80022970 0C01AF6C */  jal   func_8006BDB0
/* 023574 80022974 00000000 */   nop   
/* 023578 80022978 AFA20068 */  sw    $v0, 0x68($sp)
/* 02357C 8002297C 90590052 */  lbu   $t9, 0x52($v0)
/* 023580 80022980 3C018012 */  lui   $at, %hi(D_8011AEF8) # $at, 0x8012
/* 023584 80022984 A039AEF8 */  sb    $t9, %lo(D_8011AEF8)($at)
/* 023588 80022988 94490054 */  lhu   $t1, 0x54($v0)
/* 02358C 8002298C 3C018012 */  lui   $at, %hi(D_8011AEFC) # $at, 0x8012
/* 023590 80022990 240A001D */  li    $t2, 29
/* 023594 80022994 340BFFFF */  li    $t3, 65535
/* 023598 80022998 AC29AEFC */  sw    $t1, %lo(D_8011AEFC)($at)
/* 02359C 8002299C A04A0052 */  sb    $t2, 0x52($v0)
/* 0235A0 800229A0 A44B0054 */  sh    $t3, 0x54($v0)
/* 0235A4 800229A4 0C006EB2 */  jal   getPlayerStruct
/* 0235A8 800229A8 00002025 */   move  $a0, $zero
/* 0235AC 800229AC 8C500064 */  lw    $s0, 0x64($v0)
/* 0235B0 800229B0 3C018012 */  lui   $at, %hi(D_8011AEF6) # $at, 0x8012
/* 0235B4 800229B4 820C01D6 */  lb    $t4, 0x1d6($s0)
/* 0235B8 800229B8 00402025 */  move  $a0, $v0
/* 0235BC 800229BC 258D0001 */  addiu $t5, $t4, 1
/* 0235C0 800229C0 A02DAEF6 */  sb    $t5, %lo(D_8011AEF6)($at)
/* 0235C4 800229C4 0C008C34 */  jal   func_800230D0
/* 0235C8 800229C8 02002825 */   move  $a1, $s0
/* 0235CC 800229CC 860E01A0 */  lh    $t6, 0x1a0($s0)
/* 0235D0 800229D0 340F8000 */  li    $t7, 32768
/* 0235D4 800229D4 01EEC023 */  subu  $t8, $t7, $t6
/* 0235D8 800229D8 A6180196 */  sh    $t8, 0x196($s0)
/* 0235DC 800229DC A20001FC */  sb    $zero, 0x1fc($s0)
/* 0235E0 800229E0 A20001F4 */  sb    $zero, 0x1f4($s0)
/* 0235E4 800229E4 A6000190 */  sh    $zero, 0x190($s0)
/* 0235E8 800229E8 A2000192 */  sb    $zero, 0x192($s0)
/* 0235EC 800229EC A2000193 */  sb    $zero, 0x193($s0)
/* 0235F0 800229F0 A2000194 */  sb    $zero, 0x194($s0)
/* 0235F4 800229F4 AE000128 */  sw    $zero, 0x128($s0)
/* 0235F8 800229F8 AE00012C */  sw    $zero, 0x12c($s0)
/* 0235FC 800229FC AE000130 */  sw    $zero, 0x130($s0)
/* 023600 80022A00 A60001BA */  sh    $zero, 0x1ba($s0)
/* 023604 80022A04 0C01BAA4 */  jal   get_settings
/* 023608 80022A08 AFA2007C */   sw    $v0, 0x7c($sp)
/* 02360C 80022A0C 24190050 */  li    $t9, 80
/* 023610 80022A10 3C018012 */  lui   $at, %hi(D_8011ADB0) # $at, 0x8012
/* 023614 80022A14 AC39ADB0 */  sw    $t9, %lo(D_8011ADB0)($at)
/* 023618 80022A18 3C018012 */  lui   $at, %hi(D_8011ADB4) # $at, 0x8012
/* 02361C 80022A1C 8FA30068 */  lw    $v1, 0x68($sp)
/* 023620 80022A20 AC20ADB4 */  sw    $zero, %lo(D_8011ADB4)($at)
/* 023624 80022A24 3C018012 */  lui   $at, %hi(D_8011ADC0) # $at, 0x8012
/* 023628 80022A28 24090001 */  li    $t1, 1
/* 02362C 80022A2C AFA20054 */  sw    $v0, 0x54($sp)
/* 023630 80022A30 AC29ADC0 */  sw    $t1, %lo(D_8011ADC0)($at)
/* 023634 80022A34 240A0003 */  li    $t2, 3
/* 023638 80022A38 A06A004B */  sb    $t2, 0x4b($v1)
/* 02363C 80022A3C 0C027C0D */  jal   func_8009F034
/* 023640 80022A40 A060004C */   sb    $zero, 0x4c($v1)
/* 023644 80022A44 8FA8007C */  lw    $t0, 0x7c($sp)
/* 023648 80022A48 00001025 */  move  $v0, $zero
/* 02364C 80022A4C 02001825 */  move  $v1, $s0
.L80022A50:
/* 023650 80022A50 24420001 */  addiu $v0, $v0, 1
/* 023654 80022A54 28410005 */  slti  $at, $v0, 5
/* 023658 80022A58 AC600128 */  sw    $zero, 0x128($v1)
/* 02365C 80022A5C 1420FFFC */  bnez  $at, .L80022A50
/* 023660 80022A60 24630004 */   addiu $v1, $v1, 4
/* 023664 80022A64 3C01420C */  li    $at, 0x420C0000 # 35.000000
/* 023668 80022A68 44810000 */  mtc1  $at, $f0
/* 02366C 80022A6C C5060008 */  lwc1  $f6, 8($t0)
/* 023670 80022A70 C5040010 */  lwc1  $f4, 0x10($t0)
/* 023674 80022A74 46003202 */  mul.s $f8, $f6, $f0
/* 023678 80022A78 46082280 */  add.s $f10, $f4, $f8
/* 02367C 80022A7C 444BF800 */  cfc1  $t3, $31
/* 023680 80022A80 00000000 */  nop   
/* 023684 80022A84 35610003 */  ori   $at, $t3, 3
/* 023688 80022A88 38210002 */  xori  $at, $at, 2
/* 02368C 80022A8C 44C1F800 */  ctc1  $at, $31
/* 023690 80022A90 00000000 */  nop   
/* 023694 80022A94 46005424 */  cvt.w.s $f16, $f10
/* 023698 80022A98 440C8000 */  mfc1  $t4, $f16
/* 02369C 80022A9C 44CBF800 */  ctc1  $t3, $31
/* 0236A0 80022AA0 A7AC005A */  sh    $t4, 0x5a($sp)
/* 0236A4 80022AA4 C5060000 */  lwc1  $f6, ($t0)
/* 0236A8 80022AA8 C5120018 */  lwc1  $f18, 0x18($t0)
/* 0236AC 80022AAC 46003102 */  mul.s $f4, $f6, $f0
/* 0236B0 80022AB0 000C7400 */  sll   $t6, $t4, 0x10
/* 0236B4 80022AB4 000EC403 */  sra   $t8, $t6, 0x10
/* 0236B8 80022AB8 44988000 */  mtc1  $t8, $f16
/* 0236BC 80022ABC 46049201 */  sub.s $f8, $f18, $f4
/* 0236C0 80022AC0 444DF800 */  cfc1  $t5, $31
/* 0236C4 80022AC4 00000000 */  nop   
/* 0236C8 80022AC8 35A10003 */  ori   $at, $t5, 3
/* 0236CC 80022ACC 38210002 */  xori  $at, $at, 2
/* 0236D0 80022AD0 44C1F800 */  ctc1  $at, $31
/* 0236D4 80022AD4 00000000 */  nop   
/* 0236D8 80022AD8 460042A4 */  cvt.w.s $f10, $f8
/* 0236DC 80022ADC 440F5000 */  mfc1  $t7, $f10
/* 0236E0 80022AE0 44CDF800 */  ctc1  $t5, $31
/* 0236E4 80022AE4 000FCC00 */  sll   $t9, $t7, 0x10
/* 0236E8 80022AE8 00194C03 */  sra   $t1, $t9, 0x10
/* 0236EC 80022AEC 44893000 */  mtc1  $t1, $f6
/* 0236F0 80022AF0 A7AF005E */  sh    $t7, 0x5e($sp)
/* 0236F4 80022AF4 468031A0 */  cvt.s.w $f6, $f6
/* 0236F8 80022AF8 C50E0014 */  lwc1  $f14, 0x14($t0)
/* 0236FC 80022AFC AFA8007C */  sw    $t0, 0x7c($sp)
/* 023700 80022B00 44063000 */  mfc1  $a2, $f6
/* 023704 80022B04 0C00A7C6 */  jal   func_80029F18
/* 023708 80022B08 46808320 */   cvt.s.w $f12, $f16
/* 02370C 80022B0C 87AA005A */  lh    $t2, 0x5a($sp)
/* 023710 80022B10 87AB005E */  lh    $t3, 0x5e($sp)
/* 023714 80022B14 448A9000 */  mtc1  $t2, $f18
/* 023718 80022B18 448B2000 */  mtc1  $t3, $f4
/* 02371C 80022B1C 468094A0 */  cvt.s.w $f18, $f18
/* 023720 80022B20 00402025 */  move  $a0, $v0
/* 023724 80022B24 27A7002C */  addiu $a3, $sp, 0x2c
/* 023728 80022B28 46802120 */  cvt.s.w $f4, $f4
/* 02372C 80022B2C 44059000 */  mfc1  $a1, $f18
/* 023730 80022B30 44062000 */  mfc1  $a2, $f4
/* 023734 80022B34 0C00AEAC */  jal   func_8002BAB0
/* 023738 80022B38 00000000 */   nop   
/* 02373C 80022B3C 8FA8007C */  lw    $t0, 0x7c($sp)
/* 023740 80022B40 1040000C */  beqz  $v0, .L80022B74
/* 023744 80022B44 240F0010 */   li    $t7, 16
/* 023748 80022B48 444DF800 */  cfc1  $t5, $31
/* 02374C 80022B4C C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 023750 80022B50 35A10003 */  ori   $at, $t5, 3
/* 023754 80022B54 38210002 */  xori  $at, $at, 2
/* 023758 80022B58 44C1F800 */  ctc1  $at, $31
/* 02375C 80022B5C 00000000 */  nop   
/* 023760 80022B60 460042A4 */  cvt.w.s $f10, $f8
/* 023764 80022B64 440C5000 */  mfc1  $t4, $f10
/* 023768 80022B68 44CDF800 */  ctc1  $t5, $31
/* 02376C 80022B6C 1000000C */  b     .L80022BA0
/* 023770 80022B70 A7AC005C */   sh    $t4, 0x5c($sp)
.L80022B74:
/* 023774 80022B74 444EF800 */  cfc1  $t6, $31
/* 023778 80022B78 C5100014 */  lwc1  $f16, 0x14($t0)
/* 02377C 80022B7C 35C10003 */  ori   $at, $t6, 3
/* 023780 80022B80 38210002 */  xori  $at, $at, 2
/* 023784 80022B84 44C1F800 */  ctc1  $at, $31
/* 023788 80022B88 00000000 */  nop   
/* 02378C 80022B8C 460081A4 */  cvt.w.s $f6, $f16
/* 023790 80022B90 44183000 */  mfc1  $t8, $f6
/* 023794 80022B94 44CEF800 */  ctc1  $t6, $31
/* 023798 80022B98 A7B8005C */  sh    $t8, 0x5c($sp)
/* 02379C 80022B9C 00000000 */  nop   
.L80022BA0:
/* 0237A0 80022BA0 A3AF0059 */  sb    $t7, 0x59($sp)
/* 0237A4 80022BA4 861901A0 */  lh    $t9, 0x1a0($s0)
/* 0237A8 80022BA8 24090004 */  li    $t1, 4
/* 0237AC 80022BAC 240A00DA */  li    $t2, 218
/* 0237B0 80022BB0 A7A00062 */  sh    $zero, 0x62($sp)
/* 0237B4 80022BB4 A7A00060 */  sh    $zero, 0x60($sp)
/* 0237B8 80022BB8 A7A90066 */  sh    $t1, 0x66($sp)
/* 0237BC 80022BBC A3AA0058 */  sb    $t2, 0x58($sp)
/* 0237C0 80022BC0 00002025 */  move  $a0, $zero
/* 0237C4 80022BC4 0C01867D */  jal   func_800619F4
/* 0237C8 80022BC8 A7B90064 */   sh    $t9, 0x64($sp)
/* 0237CC 80022BCC 27A40058 */  addiu $a0, $sp, 0x58
/* 0237D0 80022BD0 0C003A95 */  jal   func_8000EA54
/* 0237D4 80022BD4 24050001 */   li    $a1, 1
/* 0237D8 80022BD8 3C0B8012 */  lui   $t3, %hi(playerStructArray_Ptr) # $t3, 0x8012
/* 0237DC 80022BDC 8D6BAEE4 */  lw    $t3, %lo(playerStructArray_Ptr)($t3)
/* 0237E0 80022BE0 3C0D8012 */  lui   $t5, %hi(D_8011AEE8) # $t5, 0x8012
/* 0237E4 80022BE4 AD620004 */  sw    $v0, 4($t3)
/* 0237E8 80022BE8 8DADAEE8 */  lw    $t5, %lo(D_8011AEE8)($t5)
/* 0237EC 80022BEC 3C0C8012 */  lui   $t4, %hi(D_8011AEEC) # $t4, 0x8012
/* 0237F0 80022BF0 ADA20004 */  sw    $v0, 4($t5)
/* 0237F4 80022BF4 8D8CAEEC */  lw    $t4, %lo(D_8011AEEC)($t4)
/* 0237F8 80022BF8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0237FC 80022BFC 44810000 */  mtc1  $at, $f0
/* 023800 80022C00 AD820004 */  sw    $v0, 4($t4)
/* 023804 80022C04 AC40003C */  sw    $zero, 0x3c($v0)
/* 023808 80022C08 3C018012 */  lui   $at, %hi(playerCount) # $at, 0x8012
/* 02380C 80022C0C 240E0002 */  li    $t6, 2
/* 023810 80022C10 AC2EAEF0 */  sw    $t6, %lo(playerCount)($at)
/* 023814 80022C14 8C500064 */  lw    $s0, 0x64($v0)
/* 023818 80022C18 2418000A */  li    $t8, 10
/* 02381C 80022C1C A21801D6 */  sb    $t8, 0x1d6($s0)
/* 023820 80022C20 820F01D6 */  lb    $t7, 0x1d6($s0)
/* 023824 80022C24 24190001 */  li    $t9, 1
/* 023828 80022C28 A2190002 */  sb    $t9, 2($s0)
/* 02382C 80022C2C A20F01D7 */  sb    $t7, 0x1d7($s0)
/* 023830 80022C30 8FA90054 */  lw    $t1, 0x54($sp)
/* 023834 80022C34 240B00FF */  li    $t3, 255
/* 023838 80022C38 812A0059 */  lb    $t2, 0x59($t1)
/* 02383C 80022C3C E6000090 */  swc1  $f0, 0x90($s0)
/* 023840 80022C40 E600008C */  swc1  $f0, 0x8c($s0)
/* 023844 80022C44 A20B01F7 */  sb    $t3, 0x1f7($s0)
/* 023848 80022C48 AE000118 */  sw    $zero, 0x118($s0)
/* 02384C 80022C4C A20A0003 */  sb    $t2, 3($s0)
/* 023850 80022C50 8C4C004C */  lw    $t4, 0x4c($v0)
/* 023854 80022C54 240D0002 */  li    $t5, 2
/* 023858 80022C58 A18D0012 */  sb    $t5, 0x12($t4)
/* 02385C 80022C5C 3C048012 */  lui   $a0, %hi(D_8011AE60) # $a0, 0x8012
/* 023860 80022C60 3C058012 */  lui   $a1, %hi(objCount) # $a1, 0x8012
/* 023864 80022C64 8CA5AE5C */  lw    $a1, %lo(objCount)($a1)
/* 023868 80022C68 8C84AE60 */  lw    $a0, %lo(D_8011AE60)($a0)
/* 02386C 80022C6C 2407003E */  li    $a3, 62
/* 023870 80022C70 0085082A */  slt   $at, $a0, $a1
/* 023874 80022C74 10200018 */  beqz  $at, .L80022CD8
/* 023878 80022C78 00041880 */   sll   $v1, $a0, 2
/* 02387C 80022C7C 3C068012 */  lui   $a2, %hi(objPtrList) # $a2, 0x8012
/* 023880 80022C80 24C6AE58 */  addiu $a2, %lo(objPtrList) # addiu $a2, $a2, -0x51a8
.L80022C84:
/* 023884 80022C84 8CCE0000 */  lw    $t6, ($a2)
/* 023888 80022C88 24840001 */  addiu $a0, $a0, 1
/* 02388C 80022C8C 01C3C021 */  addu  $t8, $t6, $v1
/* 023890 80022C90 8F020000 */  lw    $v0, ($t8)
/* 023894 80022C94 00000000 */  nop   
/* 023898 80022C98 844F0006 */  lh    $t7, 6($v0)
/* 02389C 80022C9C 00000000 */  nop   
/* 0238A0 80022CA0 31F98000 */  andi  $t9, $t7, 0x8000
/* 0238A4 80022CA4 1720000A */  bnez  $t9, .L80022CD0
/* 0238A8 80022CA8 0085082A */   slt   $at, $a0, $a1
/* 0238AC 80022CAC 84490048 */  lh    $t1, 0x48($v0)
/* 0238B0 80022CB0 00000000 */  nop   
/* 0238B4 80022CB4 14E90006 */  bne   $a3, $t1, .L80022CD0
/* 0238B8 80022CB8 0085082A */   slt   $at, $a0, $a1
/* 0238BC 80022CBC AE020154 */  sw    $v0, 0x154($s0)
/* 0238C0 80022CC0 3C058012 */  lui   $a1, %hi(objCount) # $a1, 0x8012
/* 0238C4 80022CC4 8CA5AE5C */  lw    $a1, %lo(objCount)($a1)
/* 0238C8 80022CC8 00000000 */  nop   
/* 0238CC 80022CCC 0085082A */  slt   $at, $a0, $a1
.L80022CD0:
/* 0238D0 80022CD0 1420FFEC */  bnez  $at, .L80022C84
/* 0238D4 80022CD4 24630004 */   addiu $v1, $v1, 4
.L80022CD8:
/* 0238D8 80022CD8 0C01BCE2 */  jal   func_8006F388
/* 0238DC 80022CDC 24040014 */   li    $a0, 20
/* 0238E0 80022CE0 3C04800E */  lui   $a0, %hi(D_800DC6F0) # $a0, 0x800e
/* 0238E4 80022CE4 0C030076 */  jal   func_800C01D8
/* 0238E8 80022CE8 2484C6F0 */   addiu $a0, %lo(D_800DC6F0) # addiu $a0, $a0, -0x3910
.L80022CEC:
/* 0238EC 80022CEC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0238F0 80022CF0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0238F4 80022CF4 03E00008 */  jr    $ra
/* 0238F8 80022CF8 27BD0080 */   addiu $sp, $sp, 0x80

