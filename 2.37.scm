(define (accumulate op initial sequence)
    (if (null? sequence) 
        initial 
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))


(define (car-n seqs)
    (map car seqs))

(define (cdr-n seqs)
    (map cdr seqs))

(define (accumulate-n op init seqs)
    (if (null? (car seqs))
        '()
        (cons (accumulate op init (car-n seqs))
              (accumulate-n op init (cdr-n seqs)))))


(define s  (list (list 1 2)
                (list 3 4))

(define v (list (list 3 4)
                (list 5 6))

(define (transpose m)
    (accumulate-n cons '() m))

(define (matrix-*-vector m v)
    (map (lambda (col)
             (dot-product col v))
         m))

(define (matrix-*-matrix m n)
    (let ((cols (transpose n)))
        (map (lambda (col-of-m)
                 (map (lambda (col-of-cols)
                          (dot-product col-of-m 
                                       col-of-cols))
                      cols))
             m)))


