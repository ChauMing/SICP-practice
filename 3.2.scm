(define (make-monitored fn)
    (define times 0)
    (lambda (x)
            (cond ((eq? x 'how-many-call?) times)
            (else (set! times (+ times 1)) 
                (fn x)))))


(define ff (make-monitored sqrt))

(ff 100)