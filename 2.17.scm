(define l
  (list 1 2 3 4 5 6 7 8 9))

;(define (length items)
;  (if (null? items)
;      0
;      (+ 1 (length (cdr items)))))



(define (length items)
  (define (length-iter a n)
    (if (null? a)
        n
        (length-iter (cdr a) (+ n 1))))
  (length-iter items 0))


(define (list-ref items n)
  (if (= n 0 )
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (car list1 ) list2))))




(define (last-pair items)
  (list-ref items (- (length items) 1)))




