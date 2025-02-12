K /A030
K /C000

@ /100
N K /5
RES K /1
I K /1

@ /30
K /0000 
LD N ; load N no AC
N_IGUAL_0 K /1050 ; se N==0, pular para 040
;else (ou seja N > 0) pois nao trataremos N < 0
            LD RES ; AC = 1
            ML N ; AC = AC * iteracaoo
            MM RES ; endereco 102 = AC
            LD N ; AC = iteracao
            SB I ; AC = iteracao - 1 
            MM N ; endereco 100 recebe AC
            JP N_IGUAL_0 ; volte para linha 0034

; fim do loop e da funcao
@ /50
K /B030 ; fim de subrotina