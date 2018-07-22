;Q5 - Implemente uma função 'filtrador' que recebe uma função e uma lista. Retorne outra lista com todos os elementos que gerem #t caso 'func[elem] => #t'
;Testes:
;(filtrador zero? '(0 1 -2)) => (0)
;(filtrador even? '(0 1 (6))) => (0 6)
;(filtrador string? '(() 2 "a")) => ("a")
(define (filtrador func lista)
  (
    filt_aux func lista '()
  )
)
(define (filt_aux func lista lst_aux)
  (
    cond
      ((null? lista) lst_aux)
      ((list? (car lista)) (append (filt_aux func (car lista) lst_aux) (filt_aux func (cdr lista) lst_aux)))
      ((eq? (func (car lista)) #t) (cons (car lista) (filt_aux func (cdr lista) lst_aux)))
      (else (filt_aux func (cdr lista) lst_aux))
  )
)