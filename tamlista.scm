;Q1 - Desenvolva uma fun��o tamlista que retorna o tamanho (n�mero de elementos) de uma lista.
;Fun��o SEM recurs�o em cauda
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

;Fun��o COM recurs�o em cauda
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