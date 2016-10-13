(define n 6)

(define (% n m) 
    (if (< n m) n
        (% (- n m) m)))

(define (prime? n) 
    (= (% n 2) 1))


(define accumulate fold-right)

(define (enumerate-interval m n)
    (if (> m n) '()
        (cons m (enumerate-interval (+ m 1) n))))



(define (flatmap proc seq)
    (accumulate append '() (map proc seq)))

(define (prime-sum? pair)
    (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
    (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))



; unique-pairs
(define (unique-pairs n)
    (flatmap 
        (lambda (i) 
            (map (lambda (j) (list i j))
                (enumerate-interval 1 (- i 1))))
        (enumerate-interval 1 n)))



(define (prime-sum-pair n)
    (map make-pair-sum
        (filter prime-sum? 
            (unique-pairs n))))













