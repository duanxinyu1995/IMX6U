
.global _start

_start:
    /*   she zhi SVC mo shi */
    mrs r0, cpsr        //du qu cpsr zhi
    bic r0, r0, #0x1f  //clear bit4-0, wei qing chu
    orr r0, r0, #0x13  // zhi wei , wei huo yun suan 
    msr cpsr, r0        //r0 xir ru cpsr

    /* she zhi SP zhi zhen  */
    ldr sp, =0x80200000
    b main




