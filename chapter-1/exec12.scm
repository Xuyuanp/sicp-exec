(define (pascals-triangle row col)
  (if (or (= col 1) (= row 1)) 1
    (+ (pascals-triangle (- row 1) (+ col 1))
       (pascals-triangle (- row 1) col))))
