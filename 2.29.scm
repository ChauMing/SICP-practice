
(define (make-mobile left right)
    (list left right))

(define (make-branch length structure)
    (list length structure))


(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cadr branch)))

(define (left-branch tree)
  (car tree))

(define (rigth-branch tree)
  (cadr tree))


(define (total-weight mobile)
    (+ (branch-weight (left-branch mobile))         ; 计算左右两个分支的重量之和
       (branch-weight (right-branch mobile))))

(define (branch-weight branch)
    (if (hangs-another-mobile? branch)              ; 如果分支吊着另一个活动体
        (total-weight (branch-structure branch))    ; 那么这个活动体的总重量就是这个分支的重量
        (branch-structure branch)))                 ; 否则， 分支的 structure 部分就是分支的重量

(define (hangs-another-mobile? branch)              ; 检查分支是否吊着另一个活动体
    (pair? (branch-structure branch)))










    