
;treat it as a new program (create a new scheme list)
;first eval the operator, then run body with quoted operands --> must return Scheme list that looks like program
;evaluate program-list and return result

;examples: (define (twice x)
;          (begin x x))
;(twice '(print 'a))

(define-macro (def func bindings body)
    `(begin (define ,func (lambda ,bindings ,body))
      ))
      
(define-macro (or-macro expr1 expr2)
    `(let ((v1 ,expr1))
        (if v1 v1 ,expr2))
)

(define (flatmap f x)
  'YOUR-CODE-HERE)

(define (expand lst)
  'YOUR-CODE-HERE)

(define (interpret instr dist)
  'YOUR-CODE-HERE)

(define (apply-many n f x)
  (if (zero? n)
      x
      (apply-many (- n 1) f (f x))))

(define (dragon n d)
  (interpret (apply-many n expand '(f x)) d))
