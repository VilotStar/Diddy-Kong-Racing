glabel func_80067A3C
/* 06863C 80067A3C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 068640 80067A40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 068644 80067A44 0C01E948 */  jal   get_video_width_and_height_as_s32
/* 068648 80067A48 AFA40018 */   sw    $a0, 0x18($sp)
/* 06864C 80067A4C 3C038012 */  lui   $v1, %hi(gNumberOfViewports) # $v1, 0x8012
/* 068650 80067A50 8C630CE0 */  lw    $v1, %lo(gNumberOfViewports)($v1)
/* 068654 80067A54 8FAD0018 */  lw    $t5, 0x18($sp)
/* 068658 80067A58 1060008F */  beqz  $v1, .L80067C98
/* 06865C 80067A5C 304FFFFF */   andi  $t7, $v0, 0xffff
/* 068660 80067A60 240A0002 */  li    $t2, 2
/* 068664 80067A64 146A0002 */  bne   $v1, $t2, .L80067A70
/* 068668 80067A68 240B0001 */   li    $t3, 1
/* 06866C 80067A6C 24030003 */  li    $v1, 3
.L80067A70:
/* 068670 80067A70 00022403 */  sra   $a0, $v0, 0x10
/* 068674 80067A74 3087FFFF */  andi  $a3, $a0, 0xffff
/* 068678 80067A78 3045FFFF */  andi  $a1, $v0, 0xffff
/* 06867C 80067A7C 00004025 */  move  $t0, $zero
/* 068680 80067A80 00004825 */  move  $t1, $zero
/* 068684 80067A84 00A03025 */  move  $a2, $a1
/* 068688 80067A88 106B0008 */  beq   $v1, $t3, .L80067AAC
/* 06868C 80067A8C 00E02025 */   move  $a0, $a3
/* 068690 80067A90 106A0012 */  beq   $v1, $t2, .L80067ADC
/* 068694 80067A94 3C0F8012 */   lui   $t7, %hi(D_80120CE4) # $t7, 0x8012
/* 068698 80067A98 240C0003 */  li    $t4, 3
/* 06869C 80067A9C 106C001A */  beq   $v1, $t4, .L80067B08
/* 0686A0 80067AA0 3C028012 */   lui   $v0, %hi(D_80120CE4) # $v0, 0x8012
/* 0686A4 80067AA4 1000003F */  b     .L80067BA4
/* 0686A8 80067AA8 44882000 */   mtc1  $t0, $f4
.L80067AAC:
/* 0686AC 80067AAC 3C0F8012 */  lui   $t7, %hi(D_80120CE4) # $t7, 0x8012
/* 0686B0 80067AB0 8DEF0CE4 */  lw    $t7, %lo(D_80120CE4)($t7)
/* 0686B4 80067AB4 000411C3 */  sra   $v0, $a0, 7
/* 0686B8 80067AB8 15E00005 */  bnez  $t7, .L80067AD0
/* 0686BC 80067ABC 00047043 */   sra   $t6, $a0, 1
/* 0686C0 80067AC0 0004C043 */  sra   $t8, $a0, 1
/* 0686C4 80067AC4 0004C9C3 */  sra   $t9, $a0, 7
/* 0686C8 80067AC8 10000035 */  b     .L80067BA0
/* 0686CC 80067ACC 03193823 */   subu  $a3, $t8, $t9
.L80067AD0:
/* 0686D0 80067AD0 01C24821 */  addu  $t1, $t6, $v0
/* 0686D4 80067AD4 10000032 */  b     .L80067BA0
/* 0686D8 80067AD8 00823823 */   subu  $a3, $a0, $v0
.L80067ADC:
/* 0686DC 80067ADC 8DEF0CE4 */  lw    $t7, %lo(D_80120CE4)($t7)
/* 0686E0 80067AE0 00051A03 */  sra   $v1, $a1, 8
/* 0686E4 80067AE4 15E00005 */  bnez  $t7, .L80067AFC
/* 0686E8 80067AE8 00057043 */   sra   $t6, $a1, 1
/* 0686EC 80067AEC 0005C043 */  sra   $t8, $a1, 1
/* 0686F0 80067AF0 0005CA03 */  sra   $t9, $a1, 8
/* 0686F4 80067AF4 1000002A */  b     .L80067BA0
/* 0686F8 80067AF8 03193023 */   subu  $a2, $t8, $t9
.L80067AFC:
/* 0686FC 80067AFC 01C34021 */  addu  $t0, $t6, $v1
/* 068700 80067B00 10000027 */  b     .L80067BA0
/* 068704 80067B04 00A33023 */   subu  $a2, $a1, $v1
.L80067B08:
/* 068708 80067B08 8C420CE4 */  lw    $v0, %lo(D_80120CE4)($v0)
/* 06870C 80067B0C 00057843 */  sra   $t7, $a1, 1
/* 068710 80067B10 10400009 */  beqz  $v0, .L80067B38
/* 068714 80067B14 0005C203 */   sra   $t8, $a1, 8
/* 068718 80067B18 104B000C */  beq   $v0, $t3, .L80067B4C
/* 06871C 80067B1C 00051A03 */   sra   $v1, $a1, 8
/* 068720 80067B20 104A0011 */  beq   $v0, $t2, .L80067B68
/* 068724 80067B24 00047043 */   sra   $t6, $a0, 1
/* 068728 80067B28 104C0016 */  beq   $v0, $t4, .L80067B84
/* 06872C 80067B2C 00051A03 */   sra   $v1, $a1, 8
/* 068730 80067B30 1000001C */  b     .L80067BA4
/* 068734 80067B34 44882000 */   mtc1  $t0, $f4
.L80067B38:
/* 068738 80067B38 0004C843 */  sra   $t9, $a0, 1
/* 06873C 80067B3C 000471C3 */  sra   $t6, $a0, 7
/* 068740 80067B40 032E3823 */  subu  $a3, $t9, $t6
/* 068744 80067B44 10000016 */  b     .L80067BA0
/* 068748 80067B48 01F83023 */   subu  $a2, $t7, $t8
.L80067B4C:
/* 06874C 80067B4C 00057843 */  sra   $t7, $a1, 1
/* 068750 80067B50 0004C043 */  sra   $t8, $a0, 1
/* 068754 80067B54 0004C9C3 */  sra   $t9, $a0, 7
/* 068758 80067B58 01E34021 */  addu  $t0, $t7, $v1
/* 06875C 80067B5C 00A33023 */  subu  $a2, $a1, $v1
/* 068760 80067B60 1000000F */  b     .L80067BA0
/* 068764 80067B64 03193823 */   subu  $a3, $t8, $t9
.L80067B68:
/* 068768 80067B68 000411C3 */  sra   $v0, $a0, 7
/* 06876C 80067B6C 00057843 */  sra   $t7, $a1, 1
/* 068770 80067B70 0005C203 */  sra   $t8, $a1, 8
/* 068774 80067B74 01C24821 */  addu  $t1, $t6, $v0
/* 068778 80067B78 01F83023 */  subu  $a2, $t7, $t8
/* 06877C 80067B7C 10000008 */  b     .L80067BA0
/* 068780 80067B80 00823823 */   subu  $a3, $a0, $v0
.L80067B84:
/* 068784 80067B84 000411C3 */  sra   $v0, $a0, 7
/* 068788 80067B88 0005C843 */  sra   $t9, $a1, 1
/* 06878C 80067B8C 00047043 */  sra   $t6, $a0, 1
/* 068790 80067B90 01C24821 */  addu  $t1, $t6, $v0
/* 068794 80067B94 03234021 */  addu  $t0, $t9, $v1
/* 068798 80067B98 00823823 */  subu  $a3, $a0, $v0
/* 06879C 80067B9C 00A33023 */  subu  $a2, $a1, $v1
.L80067BA0:
/* 0687A0 80067BA0 44882000 */  mtc1  $t0, $f4
.L80067BA4:
/* 0687A4 80067BA4 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0687A8 80067BA8 468021A0 */  cvt.s.w $f6, $f4
/* 0687AC 80067BAC 44810000 */  mtc1  $at, $f0
/* 0687B0 80067BB0 44898000 */  mtc1  $t1, $f16
/* 0687B4 80067BB4 46003202 */  mul.s $f8, $f6, $f0
/* 0687B8 80067BB8 8DA30000 */  lw    $v1, ($t5)
/* 0687BC 80067BBC 00000000 */  nop   
/* 0687C0 80067BC0 246F0008 */  addiu $t7, $v1, 8
/* 0687C4 80067BC4 4458F800 */  cfc1  $t8, $31
/* 0687C8 80067BC8 ADAF0000 */  sw    $t7, ($t5)
/* 0687CC 80067BCC 37010003 */  ori   $at, $t8, 3
/* 0687D0 80067BD0 38210002 */  xori  $at, $at, 2
/* 0687D4 80067BD4 44C1F800 */  ctc1  $at, $31
/* 0687D8 80067BD8 3C01ED00 */  lui   $at, 0xed00
/* 0687DC 80067BDC 460042A4 */  cvt.w.s $f10, $f8
/* 0687E0 80067BE0 44864000 */  mtc1  $a2, $f8
/* 0687E4 80067BE4 44D8F800 */  ctc1  $t8, $31
/* 0687E8 80067BE8 44195000 */  mfc1  $t9, $f10
/* 0687EC 80067BEC 468084A0 */  cvt.s.w $f18, $f16
/* 0687F0 80067BF0 332E0FFF */  andi  $t6, $t9, 0xfff
/* 0687F4 80067BF4 000E7B00 */  sll   $t7, $t6, 0xc
/* 0687F8 80067BF8 46009102 */  mul.s $f4, $f18, $f0
/* 0687FC 80067BFC 01E1C025 */  or    $t8, $t7, $at
/* 068800 80067C00 4459F800 */  cfc1  $t9, $31
/* 068804 80067C04 00000000 */  nop   
/* 068808 80067C08 37210003 */  ori   $at, $t9, 3
/* 06880C 80067C0C 38210002 */  xori  $at, $at, 2
/* 068810 80067C10 44C1F800 */  ctc1  $at, $31
/* 068814 80067C14 00000000 */  nop   
/* 068818 80067C18 460021A4 */  cvt.w.s $f6, $f4
/* 06881C 80067C1C 44872000 */  mtc1  $a3, $f4
/* 068820 80067C20 44D9F800 */  ctc1  $t9, $31
/* 068824 80067C24 440E3000 */  mfc1  $t6, $f6
/* 068828 80067C28 468042A0 */  cvt.s.w $f10, $f8
/* 06882C 80067C2C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 068830 80067C30 030FC825 */  or    $t9, $t8, $t7
/* 068834 80067C34 46005402 */  mul.s $f16, $f10, $f0
/* 068838 80067C38 AC790000 */  sw    $t9, ($v1)
/* 06883C 80067C3C 444EF800 */  cfc1  $t6, $31
/* 068840 80067C40 00000000 */  nop   
/* 068844 80067C44 35C10003 */  ori   $at, $t6, 3
/* 068848 80067C48 38210002 */  xori  $at, $at, 2
/* 06884C 80067C4C 44C1F800 */  ctc1  $at, $31
/* 068850 80067C50 35C10003 */  ori   $at, $t6, 3
/* 068854 80067C54 460084A4 */  cvt.w.s $f18, $f16
/* 068858 80067C58 38210002 */  xori  $at, $at, 2
/* 06885C 80067C5C 44CEF800 */  ctc1  $t6, $31
/* 068860 80067C60 44189000 */  mfc1  $t8, $f18
/* 068864 80067C64 468021A0 */  cvt.s.w $f6, $f4
/* 068868 80067C68 330F0FFF */  andi  $t7, $t8, 0xfff
/* 06886C 80067C6C 000FCB00 */  sll   $t9, $t7, 0xc
/* 068870 80067C70 46003202 */  mul.s $f8, $f6, $f0
/* 068874 80067C74 44C1F800 */  ctc1  $at, $31
/* 068878 80067C78 00000000 */  nop   
/* 06887C 80067C7C 460042A4 */  cvt.w.s $f10, $f8
/* 068880 80067C80 44185000 */  mfc1  $t8, $f10
/* 068884 80067C84 44CEF800 */  ctc1  $t6, $31
/* 068888 80067C88 330F0FFF */  andi  $t7, $t8, 0xfff
/* 06888C 80067C8C 032F7025 */  or    $t6, $t9, $t7
/* 068890 80067C90 10000026 */  b     .L80067D2C
/* 068894 80067C94 AC6E0004 */   sw    $t6, 4($v1)
.L80067C98:
/* 068898 80067C98 448F8000 */  mtc1  $t7, $f16
/* 06889C 80067C9C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0688A0 80067CA0 468084A0 */  cvt.s.w $f18, $f16
/* 0688A4 80067CA4 44810000 */  mtc1  $at, $f0
/* 0688A8 80067CA8 8DA30000 */  lw    $v1, ($t5)
/* 0688AC 80067CAC 46009102 */  mul.s $f4, $f18, $f0
/* 0688B0 80067CB0 24780008 */  addiu $t8, $v1, 8
/* 0688B4 80067CB4 ADB80000 */  sw    $t8, ($t5)
/* 0688B8 80067CB8 3C19ED00 */  lui   $t9, 0xed00
/* 0688BC 80067CBC 444EF800 */  cfc1  $t6, $31
/* 0688C0 80067CC0 AC790000 */  sw    $t9, ($v1)
/* 0688C4 80067CC4 35C10003 */  ori   $at, $t6, 3
/* 0688C8 80067CC8 38210002 */  xori  $at, $at, 2
/* 0688CC 80067CCC 44C1F800 */  ctc1  $at, $31
/* 0688D0 80067CD0 00000000 */  nop   
/* 0688D4 80067CD4 460021A4 */  cvt.w.s $f6, $f4
/* 0688D8 80067CD8 44183000 */  mfc1  $t8, $f6
/* 0688DC 80067CDC 44CEF800 */  ctc1  $t6, $31
/* 0688E0 80067CE0 00027403 */  sra   $t6, $v0, 0x10
/* 0688E4 80067CE4 33190FFF */  andi  $t9, $t8, 0xfff
/* 0688E8 80067CE8 31D8FFFF */  andi  $t8, $t6, 0xffff
/* 0688EC 80067CEC 44984000 */  mtc1  $t8, $f8
/* 0688F0 80067CF0 00197B00 */  sll   $t7, $t9, 0xc
/* 0688F4 80067CF4 468042A0 */  cvt.s.w $f10, $f8
/* 0688F8 80067CF8 46005402 */  mul.s $f16, $f10, $f0
/* 0688FC 80067CFC 4459F800 */  cfc1  $t9, $31
/* 068900 80067D00 00000000 */  nop   
/* 068904 80067D04 37210003 */  ori   $at, $t9, 3
/* 068908 80067D08 38210002 */  xori  $at, $at, 2
/* 06890C 80067D0C 44C1F800 */  ctc1  $at, $31
/* 068910 80067D10 00000000 */  nop   
/* 068914 80067D14 460084A4 */  cvt.w.s $f18, $f16
/* 068918 80067D18 440E9000 */  mfc1  $t6, $f18
/* 06891C 80067D1C 44D9F800 */  ctc1  $t9, $31
/* 068920 80067D20 31D80FFF */  andi  $t8, $t6, 0xfff
/* 068924 80067D24 01F8C825 */  or    $t9, $t7, $t8
/* 068928 80067D28 AC790004 */  sw    $t9, 4($v1)
.L80067D2C:
/* 06892C 80067D2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 068930 80067D30 27BD0018 */  addiu $sp, $sp, 0x18
/* 068934 80067D34 03E00008 */  jr    $ra
/* 068938 80067D38 00000000 */   nop   
