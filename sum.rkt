;; Notkun: sum(x).
;; Fyrir: Listann (x1 x2 x3 ... xN).
;; Gildi: Talan (x1 + x2 + x3 + xN.
(define (sum x)
  (if(null? x) 0
     (+ (car x)
  (sum (cdr x))
  ))
)
