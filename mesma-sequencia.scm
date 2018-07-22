;Q3. Implemente uma função 'mesma-sequencia?' que recebe duas listas e retorna verdadeiro caso elas contenham visualmente a mesma lista de inteiros
;Testes:
;(mesma-sequencia? '() '()) => #t
;(mesma-sequencia? '(1 ((2) 3)) '(1 2 (3))) => #t
;(mesma-sequencia? '(1 2) '(2 1)) => #f
(define (mesma-sequencia? lst1 lst2)
  (
    cond
      ((and (null? lst1)(null? lst2)) #t) 
      ((equal? (planifica lst1 '()) (planifica lst2 '())) #t)
      (else #f)
  )
)
(define (planifica lst acc)
    (cond
      ;final da lista
      ((null? lst) acc)
      ;se lista
      ((list? (car lst)) (append (planifica (car lst) acc) (planifica (cdr lst) acc)))
      ;se elemento
      (else (cons (car lst) (planifica (cdr lst) acc)))
    )
)