(define (pow a b)
    (if (= b 1) 
        a
        (* a pow(a (- b 1)))))

(define (cons x y)
  (* (pow 2 x) (pow 3 y)))

