;starts program
(define (x) (display "Start Transation (exit with 0):") (newline) (register -1 0))

;recursive method
(define (register i t)
	(cond ((zero? i) 
		(newline)
		(display "Final Subtotal: ")
		;(display t)
		(display (rounding t))
		(newline)
		(display "Tax: ")
		;(display (* t 0.065))
		(display (rounding (* t 0.065)))
		(newline)
		(display "Total: ")
		;(display (* t 1.065)) #t)
		(display (rounding (* t 1.065))) #t)
	(else 
		(newline)
		(display "Subtotal: ")
		;(display t)
		(display (rounding t))
		(newline)
		(let ((i (read))) (register i (+ t i)))
	)
	)
)

;used for rounding
(define (rounding x)
	(let ((power (expt 10 2)))
	(/ (round (* power x)) power)))
