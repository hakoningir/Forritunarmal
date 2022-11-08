;; Notkun: (sum1 n)
;; Fyrir: n er heiltala, n>=0
;; Gildi: Summan 0+1+...+n

(define (sum1 n)
  ;; Notkun: (helper sum i)
  ;; Fyrir: sum heldur um summuna, i er teljari.
  ;; Gildi: Summan 0+1+...+n
  (define (helper sum i)
    (if (> i n) sum
    (helper (+ sum i) (+ i 1))
  ))
  (helper 0 0)
) 
(sum1 5)
