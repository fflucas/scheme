;Q2- Implemente uma função 'deaparab' que receba dois inteiros 'a' e 'b' e retorne uma lista com todos os inteiros entre os dois parâmetros.
;Testes:
;(deaparab 1 5) => (1 2 3 4 5)
;(deaparab 5 3) => (5 4 3)
;(deaparab -2 0) => (-2 -1 0)

(define (deaparab x y)
  (if (< x y)
    (reverse (deaparab_aux x y '()))
    (deaparab_aux y x '())
  )
)
(define (deaparab_aux x y acc)
  (if (= x y)
    (cons y acc)
    (deaparab_aux (+ x 1) y (cons x acc))
  )
)