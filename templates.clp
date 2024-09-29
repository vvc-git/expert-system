; ============================================================
; Definindo Templates
; ============================================================

; Template para as características dos pontos turísticos
(deftemplate caracteristicas-turistico
    (slot ponto) ; Nome do ponto turístico associado
    (slot entrada-gratuita) ; sim ou nao
    (slot tipo-ambiente) ; deserto, rural, urbano, montanha ou floresta
    (slot melhor-epoca) ; verao, outono, inverno ou primavera
    (slot possui-acessibilidade) ; sim ou nao
    (slot duracao-dia) ; total ou metade
)

; Template para o perfil do usuário
(deftemplate perfil
    (slot disponibilidade-financeira) ; Aceita um valor como baixa ou alta
    (multislot estilo-social) ; Aceita múltiplos valores, como aventureiro, cultural e/ou relaxante
    (multislot preferencia-clima) ; Aceita múltiplos valores, como quente, ameno e/ou frio
    (slot nivel-mobilidade) ; Aceita um valor como baixa ou alta
    (slot tempo-disponivel) ; Aceita um valor, como total ou metade
)
