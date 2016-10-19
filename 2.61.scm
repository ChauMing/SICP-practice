(define (adjoin-set x set) 
    (if (<= x (car set)) 
            (cons x set)
       (cons (car set) (adjoin-set x (cdr set)))))
