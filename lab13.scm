; Lab 13: Final Review

; Q3
(define (compose-all funcs)
  (define (apply-all funcs x)
    (if (null? funcs)
         x
        (apply-all (cdr funcs) ((car funcs) x))))
        (lambda (x) (apply-all funcs x))
)
