(define (fringe tree)
    (cond ((empty-tree? tree)
            '())
          ((leaf? tree))
            (list tree))
          (else
            (append (fringe (car tree))
                    (fringe (cadr tree)))))) 


(define (empty-tree? tree)
    (null? tree))

(define (leaf? tree)
    (not (pair? tree)))
