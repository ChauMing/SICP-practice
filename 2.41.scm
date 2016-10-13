(define s 10)

(define n 10)

(define accumulate fold-right)

(define (flatmap proc seq)
    (accumulate append '() (map proc seq)))


; 生成(1 2 3 4 5 6 .... n)
(define (enumerate-interval m n)
    (if (> m n) '()
        (cons m (enumerate-interval (+ m 1) n))))

; 生成三个元素的序列((1 1 1) (1 1 2)......)
(define (three-pairs n)
    (flatmap 
        (lambda (two-pairs) 
            (map (lambda (k) (append two-pairs (list k)))
                (enumerate-interval 1 n)))
        (flatmap
            (lambda (i)
                (map (lambda (j) (list i j))
                (enumerate-interval 1 n)))
            (enumerate-interval 1 n))))


; 判断三元组items三个数字相加是否等于 s
(define (triple-sum-equal-to? items s)
    (= (+ (car items) (cadr items) (cadr (cdr items))) s))

; 从生成的所有三元组中过滤出三个元素相加等于s的元祖
(define (sum-eq n s)
    (filter
        (lambda (items) (triple-sum-equal-to? items s))
        (three-pairs n)))






