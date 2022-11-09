;; Notkun:   (rpr x y)
;; Fyrir:    x er jákvæð rauntala > 0, y er heiltala > 0
;; Gildi:    Rauntalan x í veldinu y
(define (rpr x y )
  (if (= y 0) 1.0
     (if (= (remainder y 2)0)
         (* 1.0 (rpr (* 1.0 x x)(quotient y 2)))
         (* 1.0 x (rpr (* 1.0 x x)(quotient(- y 1)2)))
     )
  )
)
(rpr(+ 1( expt 10 -10)) (rpr 10 10))