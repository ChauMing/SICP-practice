(define (reverse items)
  (define (iter lst result)
    (if (null? lst)
        result
        (iter (cdr lst) (cons (car lst) result))))
    (iter items '()))

(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            (reverse answer)
            (iter (cdr things)  
                  (cons (square (car things))
                        answer))))
    (iter items '()))

(square-list (list 1 2 3 4 5))
