(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (mid-point segment)
  (cons (/ 
            (+ 
                (x-point (start-segment segment)) 
                (x-point (end-segment segment)))
            2)
        (/ 
            (+ 
                (y-point (start-segment segment)) 
                (y-point (end-segment segment)))
            2)

))

(define (make-rect start-point end-point)
    (cons start-point end-point))

(define (start-rect rect)
  (car rect))

(define (end-rect rect)
  (cdr rect))


(define (area-rect rect)
  (*  (- (x-point (start-rect rect))
        (x-point (end-rect rect)))
      (- (y-point (start-rect rect))
         (y-point (end-rect rect)))))
(define (print-point point)
    (newline)
    (display "(")
    (display (x-point point))
    (display ", ")
    (display (y-point point))
    (display ")"))











