;   Random Number Generator
;   Credit : MCPU 
;   Code Writer : Sam Mae Krue 

USE "cpu3.inc"

start:
    ADD 12
    STA a        ; load garbarge value from shift register (seed value)
repeat:
    ADD a        ; Shitf Left  
    STA b
   
    ;####### XOR #############
    ; (A_NOR_A NOR B_NOR_B) NOR A_NOR_B

    NOR a        
    STA temp

    LDA b
    NOR b
    STA b
    
    LDA a
    NOR a
    NOR b   
    NOR temp  
    STA a
    ;#########################
    
JMP repeat           ; Loop to start
;####  Define value
a:
    DCB (0)
b:
    DCB (0)
temp:
    DCB (0)
