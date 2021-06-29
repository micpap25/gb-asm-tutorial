; You can use semicolons to make a comment!

; There are two kinds of lines, directives and instructions
; Directives are like lines with INCLUDE, SECTION, and ds, they tell RGBASM to do things.
; Instructions are like lines with jp ld, they tell the ROM itself to do things.

; Instructions are made of a mnemonic and a series of operands.
; The mnemonic is "ld" for example, it is the name of the instruction
; The operands are the parameters it is passed to use.

INCLUDE "hardware.inc"

SECTION "Header", ROM0[$100]

    jp EntryPoint

    ds $150 - @, 0 ; Make room for the header

EntryPoint: 
    ; Shut down audio correctly

    ; ld stands for LoaD, it simply copies the second operand into the first operand.
    ; You can think of these as the left-hand side and right-hand side of an equation.
    ; This line, for example, copies the value "0" into our 8-bit register a.
    ; When RGBASM sees this line, it stores the value 0 just after the instruction so it can immediately access it.
    ; Not all things can be copied because of size differences!
    ld a, 0
    ld [rNR52], a