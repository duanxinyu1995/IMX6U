
.global _start 

_start:
    ldr r0, =0x020c4068 
    ldr r1, =0xffffffff  
    str r1, [r0]

    ldr r0, =0x020c406c
    str r1, [r0]

    ldr r0, =0x020c4070
    str r1, [r0]

    ldr r0, =0x020c4074
    str r1, [r0]

    ldr r0, =0x020c4078
    str r1, [r0]

    ldr r0, =0x020c407c
    str r1, [r0]

    ldr r0, =0x020c4080
    str r1, [r0]
    /*   fuyong gpio */

    ldr r0, =0x020e0068 @ccgr0
    ldr r1, =0x5 
    str r1, [r0]
   
    /*  dian qi shu xing */

    ldr r0, =0x020e02f4 @ccgr0
    ldr r1, =0x10b0
    str r1, [r0]
 
 /*   she zhi gpio wei shuchu */   
    ldr r0, =0x0209c004 @ccgr0
    ldr r1, =0x8
    str r1, [r0]   

    /*    she zhi gpio1_io03 wei 0,she zhi gpio1_DR*/
    ldr r0, =0x0209c000 @ccgr0
    ldr r1, =0x0
    str r1, [r0]      

loop:
    b loop









