(defun len(x)
 	(if (null x) 
	 0
	 (+ (len (cdr x)) 1)
	)		;don't use (= nil x) for = can only compare integer
)
