(defun add-up (x)
	(if (equal x nil)
		0
		(+ (car x) (add-up (cdr x)))
	)
)

(defun laugh (n)
 	(if (= n 0)
	 nil
	 (cons 'HA (laugh	(- n 1)))
	)
)

(defun count-down (n)
	(if (= n 1)
	 '(1)
	 (cons n (count-down (- n 1)))
	)
)

(defun square-list (x)
 	(if (equal x nil)
	 nil
	 (cons (* (car x) (car x)) (square-list (cdr x)))
	)
)

(defun anyoddp (x)
 	(if (equal x nil)
	 nil
	 (if (oddp (car x))
	  t
	  (anyoddp (cdr x))
	 )
	)
)

(defun extract-numbers (x)
	(if (equal x nil)
	 nil
	 (if (numberp (car x))
	  	(cons (car x) (extract-numbers (cdr x)))
		(extract-numbers (cdr x))
	 )
	)
)

(defun count-odd (x)
	(if (equal x nil)
	 0
	 (if (oddp (car x))
	  (+ 1 (count-odd (cdr x)))
	  (count-odd (cdr x))
	 )
	)
)
