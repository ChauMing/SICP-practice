(define (fast-expt b n)
    (expt-iter b n 1))

(define (expt-iter b n a)
    (cond ((= n 0)
            a)
          ((even? n)
            (expt-iter (square b)
                       (/ n 2)
                       a))
          ((odd? n)
            (expt-iter b
                       (- n 1)
                       (* b a)))))



((define (square n)
  (* n n)))

(define (even? n)
    (cond ((= n 0) #t)
          ((< n 0) #f)
          (else (even? (- n 2)))))


(define (odd? n)
    (if (even? n)
        #f
        #t))