; ============================================================
; Regra para Recomendar Pontos Turísticos com Base no Perfil
; ============================================================

(defrule RecomendarPontoTuristico
    (perfil (disponibilidade-financeira ?financeira) (estilo-social $?estilos) (preferencia-clima $?climas) (nivel-mobilidade ?mobilidade) (tempo-disponivel ?tempo)) 
    (caracteristicas-turistico (ponto ?ponto) (entrada-gratuita ?gratuito) (tipo-ambiente ?ambiente) (melhor-epoca ?epoca) (possui-acessibilidade ?acessibilidade) (duracao-dia ?duracao))
    (test (or 
        (and (eq ?financeira baixa) (eq ?gratuito sim)) ; Pontos gratuitos => baixa disponibilidade financeira
        (eq ?financeira alta) ; Pontos pagos => alta disponibilidade financeira
    ))
    (test (or 
        (and (member$ aventureiro $?estilos) (or (eq ?ambiente deserto) (eq ?ambiente montanha) (eq ?ambiente floresta))) ; Estilo de perfil aventureiro => ambiente de deserto, montanha ou floresta
        (and (member$ cultural $?estilos) (eq ?ambiente urbano)) ; Estilo de perfil cultural => ambiente urbano
        (and (member$ relaxante $?estilos) (eq ?ambiente rural)) ; Estilo de perfil relaxante => ambiente rural
    ))
    (test (or 
        (and (member$ quente $?climas) (eq ?epoca verao) (or (eq ?ambiente deserto) (eq ?ambiente rural) (eq ?ambiente urbano) (eq ?ambiente montanha))) ; Clima quente => melhor epoca verao e ambiente de deserto, urbano ou montanha
        (and (member$ ameno $?climas) (eq ?epoca outono) (or (eq ?ambiente rural) (eq ?ambiente urbano) (eq ?ambiente montanha) (eq ?ambiente floresta))) ; Clima ameno => melhor epoca outono e ambiente rural, urbano ou de montanha
        (and (member$ frio $?climas) (or (eq ?epoca primavera) (eq ?epoca inverno)) (or (eq ?ambiente rural) (eq ?ambiente urbano) (eq ?ambiente montanha) (eq ?ambiente floresta))) ; Clima frio => melhor epoca inverno ou primavera e ambiente rural, urbano ou de montanha
    ))
    (test (or
        (and (eq ?mobilidade baixa) (or (eq ?ambiente urbano) (eq ?ambiente montanha)) (eq ?acessibilidade sim)) ; Baixa mobilidade => ambiente urbano ou de montanha e com acessibilidade
        (eq ?mobilidade alta) ; Alta mobilidade => sem restricoes
    ))
    (test (or
        (and (eq ?tempo metade) (eq ?duracao metade)) ; Metade do dia disponivel => passeio de curta duracao
        (eq ?tempo total) ; Dia todo disponivel => sem restricoes
    ))
    =>
    (printout t "Ponto turístico sugerido: " ?ponto crlf)
)

