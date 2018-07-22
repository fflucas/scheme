;Q1 - Desenvolva uma função tamlista que retorna o tamanho (número de elementos) de uma lista.
;Função SEM recursão em cauda
;Testes:
;(tamlista '(1 2)) => 2
;(tamlista '(1 (2 3))) => 2
;(tamlista '()) => 0

(define (tamlista lista)
  (if (null? lista)
    0
    (+ 1 (tamlista (cdr lista)))
  )
)

;Função COM recursão em cauda
;Testes:
;(tamlista '(1 2)) => 2
;(tamlista '(1 (2 3))) => 2
;(tamlista '()) => 0

(define (tamlista lista)
  (helper_tamlista lista 0)
)

(define (helper_tamlista lst acc)
  (if (null? lst)
    acc
    (helper_tamlista (cdr lst) (+ acc 1))
  )
)