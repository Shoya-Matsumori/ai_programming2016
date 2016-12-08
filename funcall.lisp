;mapcar
;map function to each elements
(defun square (n) (* n n))
(defun addone (n) (+ 1 n))

(defun greater-than-five-p (x)
 (mapcar #'(lambda (p) (> p 5)) x)
)

(defun flip (x)
 (mapcar #'(lambda (p)
			(if (equal p 'OFF)
				'ON
				'OFF
			))
  x)
)


(defun pick (x)
 (remove-if-not #'(lambda (p)
			 (and (< p 6) (< -1 p)))
  x)
)

;q5
(defun count-the (x)
 (length (remove-if-not #'(lambda (p)
				   (eq 'the p))
  x)
 )
)

;q6 (1 2 3) (3 1 0)
(defun my-intersection (x y)
 (remove-if-not #'(lambda (p)
				   (member (car p) (cdr p)))
  (list x y))
)
