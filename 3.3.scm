(define (make-accout balance secret)


  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount)) 
            balance)

        "Insufficient funds"))

  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)

  (define (dispatch pwd msg)
    (if (not (eq? secret pwd)) 
        (display "Icorrect password")
        (cond ((eq? msg 'withdraw) withdraw)
            ((eq? msg 'deposit) deposit))))

    dispatch)

(define acc (make-accout 100 'daming))
((acc 'daming 'withdraw) 99)
((acc 'axiba 'withdraw) 100)