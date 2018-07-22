;Q4 - Implemente uma função que receba como parâmetro uma lista e retorne a lista de trás para frente.
;Testes:
;(listinv '(1 2 3) => (3 2 1)
;(listinv '(1 ((2) 3)) => ((3 (2)) 1)

(define (listinv lst)
	(if (null? lst)
    lst
		(if (list? (car lst))
			(append (listinv (cdr lst)) (cons (listinv (car lst)) '()))
			(append (listinv (cdr lst)) (list (car lst)))
    )
  )
)