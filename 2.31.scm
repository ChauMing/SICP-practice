(define (tree-map proc tree)
    (cond ((null? tree) '())
        ((not (pair? tree )) (proc tree))
        (else (cons
                    (tree-map proc (car tree))
                    (tree-map proc (cdr tree))))))

(define (square x) (* x x))

(tree-map square (list 1 2 )) ; (1 4)
(tree-map square (list 1 (list 3 (list 2 4) ))) ;(1 (9 (4 16)))