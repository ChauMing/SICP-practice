(define (accumulate op initial sequence)
    (if (null? sequence) 
        initial 
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))


(define (fold-left op initial sequence) 
    (define (iter result rest)
            (if (null? rest)
                result 
                (iter (op result (car rest))
                        (cdr rest))))
    (iter initial sequence))


; op满足交换律即可对任何序列产生相同的结果