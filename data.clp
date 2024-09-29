; ============================================================
; Definindo Fatos
; ============================================================

; Insere caracteristicas do ponto turistico
(deffacts caracteristicas-pontos-turisticos
    (caracteristicas-turistico (ponto teatro_colon) (entrada-gratuita nao) (tipo-ambiente urbano) (melhor-epoca outono) (possui-acessibilidade sim) (duracao-dia metade))
    (caracteristicas-turistico (ponto museu_nacional_belas_artes) (entrada-gratuita sim) (tipo-ambiente urbano) (melhor-epoca primavera) (possui-acessibilidade sim) (duracao-dia metade))
    (caracteristicas-turistico (ponto glacial_perito_moreno) (entrada-gratuita nao) (tipo-ambiente montanha) (melhor-epoca outono) (possui-acessibilidade nao) (duracao-dia total))
    (caracteristicas-turistico (ponto parque_terra_do_fogo) (entrada-gratuita nao) (tipo-ambiente montanha) (melhor-epoca verao) (possui-acessibilidade sim) (duracao-dia total))
    (caracteristicas-turistico (ponto parque_nahuelito) (entrada-gratuita nao) (tipo-ambiente montanha) (melhor-epoca primavera) (possui-acessibilidade nao) (duracao-dia metade))
    (caracteristicas-turistico (ponto cerro_fitz_roy) (entrada-gratuita sim) (tipo-ambiente montanha) (melhor-epoca outono) (possui-acessibilidade nao) (duracao-dia total))
    (caracteristicas-turistico (ponto catena_zapata) (entrada-gratuita nao) (tipo-ambiente rural) (melhor-epoca verao) (possui-acessibilidade nao) (duracao-dia metade))
    (caracteristicas-turistico (ponto pulenta_estate_winery) (entrada-gratuita nao) (tipo-ambiente rural) (melhor-epoca verao) (possui-acessibilidade sim) (duracao-dia metade))
    (caracteristicas-turistico (ponto cataratas_iguazu) (entrada-gratuita nao) (tipo-ambiente floresta) (melhor-epoca outono) (possui-acessibilidade sim) (duracao-dia metade))
    (caracteristicas-turistico (ponto vale_da_lua) (entrada-gratuita nao) (tipo-ambiente deserto) (melhor-epoca verao) (possui-acessibilidade nao) (duracao-dia total))
)

; Insere informacoes do perfil do usuario
(deffacts perfil-exemplo
    (perfil (disponibilidade-financeira alta) (estilo-social relaxante) (preferencia-clima quente ameno frio) (nivel-mobilidade alta) (tempo-disponivel total))
)
