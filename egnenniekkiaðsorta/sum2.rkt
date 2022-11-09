;; Notkun: (sum2 i n)
;; Fyrir: i og n eru heiltölur, i <= n+1
;; Gildi: Summan i+(i+1)+...+n, summa þeirra
;;        heiltalna k þannig að i <= k <= n.
(define (sum2 i n)
  ;; Notkun: (helper sum cnt)
  ;; Fyrir: sum heldur um summuna, cnt er teljari.
  ;; Gildi: Summan cnt+(cnt+1)+...+n
  (define (helper sum cnt)
    (if (> cnt n) sum
    (helper (+ sum cnt) (+ cnt 1))
  ))
  (helper 0 i)
)
(sum2 11 10)
