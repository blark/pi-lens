; Grammar health fixture for the lwasm 6809/HD6309 dialect.
; Multi-construct on purpose: a one-liner would not reach the constructs that have
; actually broken this grammar, which were the operand/comment boundary cases below.
ACIA_DATA           equ     $FF00
decimal_places_end  equ     *
start
        lds     #$7FFF
        lda     ,x+
        ldd     label+2
        fcc     "hi there"
        tsta                    * an inherent instruction has no operand
        lda     5 , x           * text after the operand is discarded by lwasm
        rts
label
        end
