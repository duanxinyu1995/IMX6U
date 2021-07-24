

.global _start
.global _bss_start
_bss_start:
    .word __bss_start

.global _bss_end
_bss_end:
    .word __bss_end

_start:
    /*   she zhi jin ru SVCmoshi */
    mrs r0, cpsr
    bic r0, r0, #0x1f
    orr r0, r0, #0x13
    msr cpsr, r0

    /*   clear BSS */
    ldr r0, _bss_start
    ldr r1, _bss_end
    mov r2, #0

bss_loop:
    stmia r0!, {r2}
    cmp r0, r1
    ble bss_loop

    /*  she zhi SP zhi zhen */
    ldr sp, =0x80200000
    b main 