glabel func_80A796EC
/* 0073C 80A796EC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00740 80A796F0 3C0F80A8 */  lui     $t7, %hi(D_80A7B878)       ## $t7 = 80A80000
/* 00744 80A796F4 25EFB878 */  addiu   $t7, $t7, %lo(D_80A7B878)  ## $t7 = 80A7B878
/* 00748 80A796F8 00057100 */  sll     $t6, $a1,  4
/* 0074C 80A796FC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00750 80A79700 AFA40030 */  sw      $a0, 0x0030($sp)
/* 00754 80A79704 01CF1821 */  addu    $v1, $t6, $t7
/* 00758 80A79708 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 0075C 80A7970C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00760 80A79710 AFA30028 */  sw      $v1, 0x0028($sp)
/* 00764 80A79714 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00768 80A79718 8FA30028 */  lw      $v1, 0x0028($sp)
/* 0076C 80A7971C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 00770 80A79720 468021A0 */  cvt.s.w $f6, $f4
/* 00774 80A79724 90780008 */  lbu     $t8, 0x0008($v1)           ## 00000008
/* 00778 80A79728 C468000C */  lwc1    $f8, 0x000C($v1)           ## 0000000C
/* 0077C 80A7972C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00780 80A79730 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00784 80A79734 8C650000 */  lw      $a1, 0x0000($v1)           ## 00000000
/* 00788 80A79738 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0078C 80A7973C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00790 80A79740 AFB80014 */  sw      $t8, 0x0014($sp)
/* 00794 80A79744 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00798 80A79748 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 0079C 80A7974C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 007A0 80A79750 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 007A4 80A79754 03E00008 */  jr      $ra
/* 007A8 80A79758 00000000 */  nop
