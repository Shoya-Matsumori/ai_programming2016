

(defun comb (n m)
 	(if (OR (= m 0) (= m n)) 1
		(+ (comb (- n 1) m) (comb (- n 1) (- m 1)))
	)
)

(defun len(x)
 	(if (null x) 
	 0
	 (+ (len (cdr x)) 1)
	)		;don't use (= nil x) for = can only compare integer
)

(defun my-nth (e x)
 	(if (= e 0) (car x)
	 	(my-nth (- e 1) (cdr x))
	)
)

(defun my-append (x y)
 	(if (null x)
		y
		(cons (car x) (my-append (cdr x) y))
	)
)
