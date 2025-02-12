@ /0
COND_INICIAL    LD N
                SB LIMITE
; if (N > 63) ou (N - 63 = 0) pula pro HALT
                JZ HALT ;Termino se N - 101 = 0 (funcina de 0 a 100)
; inicio do programa
;primeiro passo, verificar se a soma ultrapassou o N
;   while (aux <= n)
;       ac = aux
INICIO_WHILE    LD N ; carrego N
                SB UM
;       ac = 2 * aux
                ML DOIS ; 
;       ac = 2*aux + 1 
                AD UM ; somo um, tenho a parcela pronta
;       ac = (2*aux + 1) + soma
                AD SOMA ;somo com o valor antigo da soma
                MM SOMA ; salvo na variavel soma o valor da soma + parcela atual
;       soma = ac
SALVAR_N        K /9102
;       N = N + 1
PROX_N          LD N ;
                AD UM
                MM N
                ; atualizar valor do endereco pra salvar
                LD SALVAR_N
                AD DOIS
                MM SALVAR_N
                JP COND_INICIAL ;volta para proximo loop de N

HALT            HM /000


ENDERECO K /102
LIMITE K =64
N K =1
AUX K =0
SOMA K =0
UM K =1
DOIS K =2


