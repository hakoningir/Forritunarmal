;; Notkun: squaresum(x).
;; Fyrir: Listann (x1 x2 x3 ... xN).
;; Gildi: Talan (x1 * x1 + x2 *x2 + x3 * x3 + xN * xN).

(define(squaresum x)
  (if(null? x) 0)
  ;; Notkun: helpsum(n m)
  ;; Fyrir: Hjálparfall fyrir squaresum. Leggur saman veldistölur.
  ;; Gildi: Talan (x1 * x1 + x2 *x2 + x3 * x3 + xN * xN).
  (define(helpsum n m)
    (if(null? n) m
    (helpsum(cdr n)(+ (* (car n) (car n)) m))
  ))
  (helpsum x 0)
)
