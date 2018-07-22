;Q4 - Implemente uma fun��o que receba como par�metro uma lista e retorne a lista de tr�s para frente.
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