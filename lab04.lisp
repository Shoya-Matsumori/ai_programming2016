;local variable
(defun average (x y)
 	(let ((sum (+ x y))))
	(list x y 'average ' is (/ sum 2.0))
)

;q01

;q02
;reverse function
;INCOMPLETE
(defun rev (x)
 (if (equal (cdr x) nil)
  	x
 	(append (rev (cdr x)) (cons (car x) nil))
 )
)

;q03
;remove from a list
(defun rm (c x)
 (if (equal x nil)
  nil
  (if (eq c (car x))
   (rm c (cdr x))
   (cons (car x) (rm c (cdr x)))
  )
 )
)

;q04
;function MEM
(defun mem (c x)
 (if (equal x nil)
  nil
  (if (eq c (car x))
   x
   (mem c (cdr x))
  )
 )
)

;q05-1
(defun beforep (x y l)
	(> (length (mem x l)) (length (mem y l)))
)

;q05-2
(defun beforep2 (x y l)
	(if (equal x nil)
	 nil
	 (cond
	  ((eq x (car l)) l)
	  ((eq y (cdr l)) nil)
	  (beforep (x y (cdr l)))
	 )
	)
)

;q06
(defun rmdup2 (x)
	(if (equal (cdr x) nil)
		nil
		(if (equal (car x) (car (cdr x)))
		 (rmdup (cdr x))
		 (cons (car x) (rmdup (cdr x)))
		)
	)
)

(defun rmdup (x)
 (if (equal (cdr x) nil)
  (cons (car x) nil)
  (if (equal (mem (car x) (cdr x)) nil)
   (cons (car x) (rmdup (cdr x)))
   (rmdup (cdr x))
  )
 )
)

;q07
