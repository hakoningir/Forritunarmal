;; Notkun: ((incall y)x)
;; Fyrir: y er tala, x=(x1 x2 ... xN) er listi talna sem y er löggð við.
;; Gildi: Talnalistinn (x1+y x2+y ... xN+y).
(define (incall y)
  ;; Notkun: (Helpin x)
  ;; Fyrir: x er listi (1 2 3)
  ;; Gildi: Leggur y við (x1, x2 ... xn.)
  (define (helpin x)
    (if (null?(cdr x))
        (list (+ y (car x)))
        (cons (+ y (car x))(helpin(cdr x)))
    )
  )
  helpin
)
((incall 3)'(1 2 3))