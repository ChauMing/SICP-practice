(define x (list (list 1 2) (list 3 4)))

;(define (deep-reverse tree)
;    (cond ((null? tree)         ; 空树
;            '())
;          ((not (pair? tree))   ; 叶子
;            tree)
;          (else
;            (reverse (list (deep-reverse (car tree))            ; 递归地逆序左右子树
;                           (deep-reverse (cadr tree)))))))

;(deep-reverse x)


(define (tree-reverse lst)
    (define (iter remained-items result)
        (if (null? remained-items)
            result
            (iter (cdr remained-items)
                  (cons (if (pair? (car remained-items))
                            (tree-reverse (car remained-items))
                            (car remained-items))
                        result))))
    (iter lst '()))