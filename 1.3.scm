;mit-scheme --heap 512 --band "C:\Program Files (x86)\MIT-GNU Scheme\lib\all.com" --library "C:\Program Files (x86)\MIT-GNU Scheme\lib" --load test.scm

(define (sum-of-squares x y)
    (+  (* x x)
        (* y y)
    )
)


(define (big x y)
  (if (< x y) y x)
)


(define (small x y)
  (if (< x y) x y)
)

(define (result x y z)
  (sum-of-squares (big x y)
                  (big (small x y) z)
  )
)