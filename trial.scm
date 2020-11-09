(define (list-change total denoms)
  ; BEGIN PROBLEM 17
  (define (helper total denoms listSoFar)
      (cond
          ((= (car denoms) 1)  1)
          ((= (car denoms) 0) 0)
          ((= total 0) 1)
          ((< total 0) 0)
          (else 
                
                (let (())
                     )
                
                
                
                (+ (list-change (- total (car denoms)) denoms) (list-change total (cdr denoms))))
       )
  )
    (helper total denoms ())
)

(list-change 10 (list 25 10 5 1))