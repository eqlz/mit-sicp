;; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

;; Better solution
(define (larger x y)
    (if (> x y) x y))

(define (sum-square x y)
    (+ (* x x)
       (* y y)))

(define (sum-square-large x y z)
    (if (= x (larger x y))
        (sum-square x (larger y z))
        (sum-square y (larger x z))))

;; First solution I came up
((define (smaller x y)
    (if (< x y) x y)))

(define (smallest x y z)
    (smaller x (smaller y z)))

(define (square x)
    (* x x))

(define (sum-square-large-first x y z)
    (- (+ (square x) (square y) (square z))
       (square (smallest x y z))))

