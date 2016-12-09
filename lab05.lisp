;q01
(defun add1 (x)
 	(mapcar #'(lambda (p)
			   p + 1
			  )
	 x
	)
)

;q02
(defun greater-than-five-p (x)
	(mapcar #'(lambda (p) (> p 5)) x)
)



;q06
(defun my-intersection (x y)
 (remove-if-not #'(lambda (p)
				   (member (car p) (cdr p))
				   )
  				(list x y)
 )
)
