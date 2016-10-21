(defun comb (n m)
 	(if (OR (= m 0) (= m n)) 1
		(+ (comb (- n 1) m) (comb (- n 1) (- m 1)))
	)
)
