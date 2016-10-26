(define (make-accumulator init-value)
  (lambda (x) (set! init-value (+ init-value x))
    init-value))