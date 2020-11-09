(define (cons-all first rests)
    (map (lambda (lst) (cons first lst) )
         rests
    )
)

(define (list-change total denoms)
    (cond ((null? denoms) nil)
        
          ((= total 0) '(()) )
        
        ((< total (car denoms)) (list-change total (cdr denoms)))
        
        (else (append
                (cons-all (car denoms) (list-change (- total (car denoms)) denoms))      
                  
                (list-change total (cdr denoms)) 
            )
              
        )
    )    
    
    
)

(list-change 10 '(25 10 5 1))