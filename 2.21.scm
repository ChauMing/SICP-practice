(define (map proc items)
  (if (null? items)
      '()
      (cons (proc (car items)) 
            (map proc (cdr items)))))


;(define (square-list items)
;  (map (lambda (x) (* x x)) items))



(define (square-list items)
  (define (iter lst result)
    (if (null? lst)
        result
        (iter (cdr lst) (cons result (car lst) ))))
    (iter items '()))

;(define (square-list items)
;  (if (null? items)
;      '()
;      (cons (* (car items) (car items)) (square-list (cdr items)))))

(square-list (list 1 2 3 4 5))