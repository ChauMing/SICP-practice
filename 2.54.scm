(define (equal? item1 item2)
    (cond ((and (symbol? item1) (symbol? item2))
                (eq? item1 item2))
          ((and (list? item1) (list? item2)) 
                (list-equal? item1 item2))
        (else "are you kidding me?")))

(define (list-equal? item1 item2)
    (cond ((and (null? item1) (null? item2)) #t)
        ((or (null? item1) (null? item2)) #f)
        ((equal? (car item1) (car item2))
            (equal? (cdr item1) (cdr item2)))
        (else #f)))

; test
(equal? '(red blue) '(red blue))
(equal? '(red blue) '(red blue yellow))