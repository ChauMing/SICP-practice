(define (make-sum a1 a2)
    (cond ((=number? a1 0)
            a2)
          ((=number? a2 0)
            a1)
          ((and (number? a1) (number? a2))
            (+ a1 a2))
          (else
            (list a1 '+ a2))))              ; 修改

(define (sum? x)
    (and (pair? x)
         (eq? (cadr x) '+)))                ; 修改

(define (addend s)
    (car s))                                ; 修改

(define (augend s)
    (caddr s))

(define (make-product m1 m2)
    (cond ((or (=number? m1 0) (=number? m2 0))
            0)
          ((=number? m1 1)
            m2)
          ((=number? m2 1)
            m1)
          ((and (number? m1) (number? m2))
            (* m1 m2))
          (else
            (list m1 '* m2))))              ; 修改

(define (product? x)
    (and (pair? x)
         (eq? (cadr x) '*)))                ; 修改

(define (multiplier p)
    (car p))                                ; 修改

(define (multiplicand p)
    (caddr p))