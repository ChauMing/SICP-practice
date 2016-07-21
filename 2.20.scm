(define (same-parity . l)

  (define (iter items f)
    (if (null? items)
        '()
        (if (f (car items))
            (cons (car items) (iter (cdr items) f))
            (iter (cdr items) f))))
  (iter l (if (odd? (car l)) odd? even?)))

(define (odd? num)
  (cond ((= num 0) #f)
        ((= num 1) #t)
        (else (odd? (- num 2)))))

(define (even? num)
  (cond ((= num 1) #f)
        ((= num 0) #t)
        (else (even? (- num 2)))))


(same-parity 2 2 3 4 5 6 7 8)

;((odd-even? 1) 1)