(define (add-rat x y)
  make-rat (+ (* (numer x) (denom y))
              (* (numer y) (denom x)))
            (* (numer y) (denom x)))

