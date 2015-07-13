(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

(define (f2 n)
  (define (sum a b c)
    (+ c
       (* 2 b)
       (* 3 a)))
  (define (f2-iter a b c count)
    (if (= count n)
      (sum a b c)
      (f2-iter b c (sum a b c) (+ count 1))))

  (if (< n 3) n
    (f2-iter 0 1 2 3)))
