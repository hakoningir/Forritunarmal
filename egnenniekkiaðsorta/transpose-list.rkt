;; Notkun: (transpose-list z)
;; Fyrir: z er listi jafnlangra lista,
;; z=((x11 x12 ... x1N)
;; (x21 x22 ... x2N)
;; (x31 x32 ... x3N)
;; .
;; .
;; .
;; (xM1 xM2 ... xMN)
;; )
;; Gildi: Listinn sem er byltingin
;; (transpose) af z, þ.e.
;; ((x11 x21 ... xM1)
;; (x12 x22 ... xM2)
;; (x13 x23 ... xM3)
;; .
;; .
;; .
;; (x1N x2N ... xMN)
;; )

(define (transpose-list z)
  (if(null? (car z))
     '()
     (cons (map car z) (transpose-list (map cdr z)))
  )
)
(transpose-list'((1 2 3)(4 5 6)(7 8 9)))




;; líka hægt að gera eftirfarandi:
;; (define (transpose-list z)
;;    (apply map list z)
;; )
