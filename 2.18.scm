(define l
  (list 1 2 3 4 5 6 7 8 9))


(define (reverse lst)
  (define (iter remained-items result)
    (if (null? remained-items)
        result
        (iter (cdr remained-items)
              (cons (car remained-items) result))))
  (iter lst '()))




(reverse (list 1 2 3 4))















