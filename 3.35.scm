(define (accumulate op initial sequence)
    (if (null? sequence) 
        initial 
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define (fringe tree)
    (cond ((null? tree) '())
          ((not (pair? tree)) (list tree))
          (else (append (fringe (car tree))
                        (fringe (cdr tree))))))


; 1
(define (count-leaves t)
    (accumulate 
        (lambda (x y) (+ 1 y))
        0
        (fringe t)))
            

(count-leaves (list 1 2 3 4 (list 1 23 3 4)))


; 2.
(define (count-leaves tree)
    (accumulate +
                0
                (map (lambda (sub-tree)
                         (if (pair? sub-tree)
                             (count-leaves sub-tree)
                             1))
                     tree)))

; (count-leaves (list 1 2 3 4))
























