.late_rodata
glabel D_80AC2974
 .word 0x3E490FDB
glabel D_80AC2978
    .float 0.4

glabel D_80AC297C
 .word 0x3D9D7DBF
glabel D_80AC2980
 .word 0x3EAA7EFA
glabel D_80AC2984
    .float 0.2

.text
glabel func_80AC2350
/* 01CF0 80AC2350 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CF4 80AC2354 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CF8 80AC2358 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 01CFC 80AC235C 3C0E80AC */  lui     $t6, %hi(func_80AC11A8)    ## $t6 = 80AC0000
/* 01D00 80AC2360 44857000 */  mtc1    $a1, $f14                  ## $f14 = 0.00
/* 01D04 80AC2364 25CE11A8 */  addiu   $t6, $t6, %lo(func_80AC11A8) ## $t6 = 80AC11A8
/* 01D08 80AC2368 15C20014 */  bne     $t6, $v0, .L80AC23BC       
/* 01D0C 80AC236C 3C0F80AC */  lui     $t7, %hi(func_80AC12D8)    ## $t7 = 80AC0000
/* 01D10 80AC2370 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01D14 80AC2374 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01D18 80AC2378 3C0180AC */  lui     $at, %hi(D_80AC2974)       ## $at = 80AC0000
/* 01D1C 80AC237C E4D00008 */  swc1    $f16, 0x0008($a2)          ## 00000008
/* 01D20 80AC2380 E4D00000 */  swc1    $f16, 0x0000($a2)          ## 00000000
/* 01D24 80AC2384 C4242974 */  lwc1    $f4, %lo(D_80AC2974)($at)  
/* 01D28 80AC2388 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01D2C 80AC238C 460E2302 */  mul.s   $f12, $f4, $f14            
/* 01D30 80AC2390 0C0400A4 */  jal     sinf
              
/* 01D34 80AC2394 00000000 */  nop
/* 01D38 80AC2398 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01D3C 80AC239C 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01D40 80AC23A0 3C0180AC */  lui     $at, %hi(D_80AC2978)       ## $at = 80AC0000
/* 01D44 80AC23A4 C4262978 */  lwc1    $f6, %lo(D_80AC2978)($at)  
/* 01D48 80AC23A8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01D4C 80AC23AC 46060202 */  mul.s   $f8, $f0, $f6              
/* 01D50 80AC23B0 46104280 */  add.s   $f10, $f8, $f16            
/* 01D54 80AC23B4 10000083 */  beq     $zero, $zero, .L80AC25C4   
/* 01D58 80AC23B8 E4CA0004 */  swc1    $f10, 0x0004($a2)          ## 00000004
.L80AC23BC:
/* 01D5C 80AC23BC 25EF12D8 */  addiu   $t7, $t7, %lo(func_80AC12D8) ## $t7 = 000012D8
/* 01D60 80AC23C0 15E20036 */  bne     $t7, $v0, .L80AC249C       
/* 01D64 80AC23C4 3C1880AC */  lui     $t8, %hi(func_80AC14A8)    ## $t8 = 80AC0000
/* 01D68 80AC23C8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01D6C 80AC23CC 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 01D70 80AC23D0 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01D74 80AC23D4 4612703C */  c.lt.s  $f14, $f18                 
/* 01D78 80AC23D8 00000000 */  nop
/* 01D7C 80AC23DC 4502000C */  bc1fl   .L80AC2410                 
/* 01D80 80AC23E0 44814000 */  mtc1    $at, $f8                   ## $f8 = 7.00
/* 01D84 80AC23E4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01D88 80AC23E8 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01D8C 80AC23EC 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 01D90 80AC23F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 01D94 80AC23F4 E4D00000 */  swc1    $f16, 0x0000($a2)          ## 00000000
/* 01D98 80AC23F8 46047182 */  mul.s   $f6, $f14, $f4             
/* 01D9C 80AC23FC 46103000 */  add.s   $f0, $f6, $f16             
/* 01DA0 80AC2400 E4C00008 */  swc1    $f0, 0x0008($a2)           ## 00000008
/* 01DA4 80AC2404 1000006F */  beq     $zero, $zero, .L80AC25C4   
/* 01DA8 80AC2408 E4C00004 */  swc1    $f0, 0x0004($a2)           ## 00000004
/* 01DAC 80AC240C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.25
.L80AC2410:
/* 01DB0 80AC2410 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DB4 80AC2414 4608703C */  c.lt.s  $f14, $f8                  
/* 01DB8 80AC2418 00000000 */  nop
/* 01DBC 80AC241C 45020012 */  bc1fl   .L80AC2468                 
/* 01DC0 80AC2420 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01DC4 80AC2424 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DC8 80AC2428 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01DCC 80AC242C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01DD0 80AC2430 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 01DD4 80AC2434 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01DD8 80AC2438 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 01DDC 80AC243C 460A7481 */  sub.s   $f18, $f14, $f10           
/* 01DE0 80AC2440 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01DE4 80AC2444 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 01DE8 80AC2448 46049002 */  mul.s   $f0, $f18, $f4             
/* 01DEC 80AC244C 46004081 */  sub.s   $f2, $f8, $f0              
/* 01DF0 80AC2450 46100180 */  add.s   $f6, $f0, $f16             
/* 01DF4 80AC2454 E4C20008 */  swc1    $f2, 0x0008($a2)           ## 00000008
/* 01DF8 80AC2458 E4C20004 */  swc1    $f2, 0x0004($a2)           ## 00000004
/* 01DFC 80AC245C 10000059 */  beq     $zero, $zero, .L80AC25C4   
/* 01E00 80AC2460 E4C60000 */  swc1    $f6, 0x0000($a2)           ## 00000000
/* 01E04 80AC2464 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
.L80AC2468:
/* 01E08 80AC2468 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01E0C 80AC246C 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 01E10 80AC2470 3C0180AC */  lui     $at, %hi(D_80AC297C)       ## $at = 80AC0000
/* 01E14 80AC2474 C424297C */  lwc1    $f4, %lo(D_80AC297C)($at)  
/* 01E18 80AC2478 460A7481 */  sub.s   $f18, $f14, $f10           
/* 01E1C 80AC247C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01E20 80AC2480 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 01E24 80AC2484 E4D00004 */  swc1    $f16, 0x0004($a2)          ## 00000004
/* 01E28 80AC2488 46049182 */  mul.s   $f6, $f18, $f4             
/* 01E2C 80AC248C E4D00008 */  swc1    $f16, 0x0008($a2)          ## 00000008
/* 01E30 80AC2490 46064281 */  sub.s   $f10, $f8, $f6             
/* 01E34 80AC2494 1000004B */  beq     $zero, $zero, .L80AC25C4   
/* 01E38 80AC2498 E4CA0000 */  swc1    $f10, 0x0000($a2)          ## 00000000
.L80AC249C:
/* 01E3C 80AC249C 271814A8 */  addiu   $t8, $t8, %lo(func_80AC14A8) ## $t8 = 80AC14A8
/* 01E40 80AC24A0 17020046 */  bne     $t8, $v0, .L80AC25BC       
/* 01E44 80AC24A4 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 01E48 80AC24A8 44819000 */  mtc1    $at, $f18                  ## $f18 = 35.00
/* 01E4C 80AC24AC 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01E50 80AC24B0 460E903E */  c.le.s  $f18, $f14                 
/* 01E54 80AC24B4 00000000 */  nop
/* 01E58 80AC24B8 45010007 */  bc1t    .L80AC24D8                 
/* 01E5C 80AC24BC 00000000 */  nop
/* 01E60 80AC24C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 01E64 80AC24C4 3C0141D8 */  lui     $at, 0x41D8                ## $at = 41D80000
/* 01E68 80AC24C8 4604703C */  c.lt.s  $f14, $f4                  
/* 01E6C 80AC24CC 00000000 */  nop
/* 01E70 80AC24D0 45020004 */  bc1fl   .L80AC24E4                 
/* 01E74 80AC24D4 44814000 */  mtc1    $at, $f8                   ## $f8 = 27.00
.L80AC24D8:
/* 01E78 80AC24D8 1000003B */  beq     $zero, $zero, .L80AC25C8   
/* 01E7C 80AC24DC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01E80 80AC24E0 44814000 */  mtc1    $at, $f8                   ## $f8 = 27.00
.L80AC24E4:
/* 01E84 80AC24E4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01E88 80AC24E8 4608703C */  c.lt.s  $f14, $f8                  
/* 01E8C 80AC24EC 00000000 */  nop
/* 01E90 80AC24F0 4502000F */  bc1fl   .L80AC2530                 
/* 01E94 80AC24F4 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 01E98 80AC24F8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01E9C 80AC24FC 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01EA0 80AC2500 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 01EA4 80AC2504 44813000 */  mtc1    $at, $f6                   ## $f6 = 24.00
/* 01EA8 80AC2508 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01EAC 80AC250C 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 01EB0 80AC2510 46067281 */  sub.s   $f10, $f14, $f6            
/* 01EB4 80AC2514 E4D00000 */  swc1    $f16, 0x0000($a2)          ## 00000000
/* 01EB8 80AC2518 46125102 */  mul.s   $f4, $f10, $f18            
/* 01EBC 80AC251C 46102000 */  add.s   $f0, $f4, $f16             
/* 01EC0 80AC2520 E4C00008 */  swc1    $f0, 0x0008($a2)           ## 00000008
/* 01EC4 80AC2524 10000027 */  beq     $zero, $zero, .L80AC25C4   
/* 01EC8 80AC2528 E4C00004 */  swc1    $f0, 0x0004($a2)           ## 00000004
/* 01ECC 80AC252C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
.L80AC2530:
/* 01ED0 80AC2530 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01ED4 80AC2534 4608703C */  c.lt.s  $f14, $f8                  
/* 01ED8 80AC2538 00000000 */  nop
/* 01EDC 80AC253C 45020012 */  bc1fl   .L80AC2588                 
/* 01EE0 80AC2540 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01EE4 80AC2544 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01EE8 80AC2548 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01EEC 80AC254C 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 01EF0 80AC2550 44813000 */  mtc1    $at, $f6                   ## $f6 = 26.00
/* 01EF4 80AC2554 3C0180AC */  lui     $at, %hi(D_80AC2980)       ## $at = 80AC0000
/* 01EF8 80AC2558 C4322980 */  lwc1    $f18, %lo(D_80AC2980)($at) 
/* 01EFC 80AC255C 46067281 */  sub.s   $f10, $f14, $f6            
/* 01F00 80AC2560 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01F04 80AC2564 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 01F08 80AC2568 46125002 */  mul.s   $f0, $f10, $f18            
/* 01F0C 80AC256C 46004081 */  sub.s   $f2, $f8, $f0              
/* 01F10 80AC2570 46100100 */  add.s   $f4, $f0, $f16             
/* 01F14 80AC2574 E4C20008 */  swc1    $f2, 0x0008($a2)           ## 00000008
/* 01F18 80AC2578 E4C20004 */  swc1    $f2, 0x0004($a2)           ## 00000004
/* 01F1C 80AC257C 10000011 */  beq     $zero, $zero, .L80AC25C4   
/* 01F20 80AC2580 E4C40000 */  swc1    $f4, 0x0000($a2)           ## 00000000
/* 01F24 80AC2584 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
.L80AC2588:
/* 01F28 80AC2588 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
/* 01F2C 80AC258C 44813000 */  mtc1    $at, $f6                   ## $f6 = 29.00
/* 01F30 80AC2590 3C0180AC */  lui     $at, %hi(D_80AC2984)       ## $at = 80AC0000
/* 01F34 80AC2594 C4322984 */  lwc1    $f18, %lo(D_80AC2984)($at) 
/* 01F38 80AC2598 46067281 */  sub.s   $f10, $f14, $f6            
/* 01F3C 80AC259C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01F40 80AC25A0 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 01F44 80AC25A4 E4D00004 */  swc1    $f16, 0x0004($a2)          ## 00000004
/* 01F48 80AC25A8 46125102 */  mul.s   $f4, $f10, $f18            
/* 01F4C 80AC25AC E4D00008 */  swc1    $f16, 0x0008($a2)          ## 00000008
/* 01F50 80AC25B0 46044181 */  sub.s   $f6, $f8, $f4              
/* 01F54 80AC25B4 10000003 */  beq     $zero, $zero, .L80AC25C4   
/* 01F58 80AC25B8 E4C60000 */  swc1    $f6, 0x0000($a2)           ## 00000000
.L80AC25BC:
/* 01F5C 80AC25BC 10000002 */  beq     $zero, $zero, .L80AC25C8   
/* 01F60 80AC25C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AC25C4:
/* 01F64 80AC25C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC25C8:
/* 01F68 80AC25C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01F6C 80AC25CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01F70 80AC25D0 03E00008 */  jr      $ra                        
/* 01F74 80AC25D4 00000000 */  nop
