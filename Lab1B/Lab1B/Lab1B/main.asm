;-----------------------------------------------------------------------------
; Lab1A Control Software
;-----------------------------------------------------------------------------

include "m8c.inc"       ; part specific constants and macros
include "memory.inc"    ; Constants & macros for SMM/LMM and Compiler
include "PSoCAPI.inc"   ; PSoC API definitions for all User Modules

export _main

_main:

    loop:
		mov A,reg[PRT1DR]
		inc A
		mov reg[PRT1DR],A
		jmp loop

.terminate:
    jmp .terminate
