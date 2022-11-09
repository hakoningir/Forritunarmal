;; Notkun: (reviota n)
;; Fyrir:  Tekur inn heiltölu og skilar lista af öllum
;;         heiltölum frá henni og niður að 0.
;; Gildi:  Listinn n ... 3 2 1
(define (reviota n)
  ;; Notkun:(helper l i)
  ;; Fyrir: Hjálparfall sem að telur upp í n og setur i í lista l.
  ;; Gildi: Listinn n ... 3 2 1 
  (define (helper l i)
    (if (> i n) l
        (helper (cons i l)(+ i 1))
    )
  )
  (helper '()' 1)
)
(reviota 5)