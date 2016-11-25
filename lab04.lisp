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

(defun beforep (x y l)
 (mem y (mem x l))
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
(defun wa (x y)
 (if (null x)
  	y
	(cons (car x) (wa (cdr x) y))
 )
)

(defun seki (x y)
 (if (null y)
  nil
  (if (member (car y) x)
	(cons (car y) (seki x (cdr y)))
	(seki x (cdr y))
  )
 )
)

(defun sa (x y)
 (if (null y)
  x
  (if (member (car y) x)
   (sa (rm (car y) x) (cdr y))
   (sa x (cdr y))
  )
 )
)

;q08
(defun lookup (key x)
 (if (equal (cdr x) nil)
  nil
  (if (equal (car (car x)) key)
   	(car x)
	(lookup key (cdr x))
  )
 )
)

(setf x '((one eins) (two zwei) (three drei) (four vier)))


;q09
(defun sum-tree (x)
 (if (null x)
  0
  (if (numberp x)
	(+ x (sum-tree (cdr x)))
	(+ (sum-tree x) (sum-tree (cdr x)))
  )
 )
)

(setf pen '((pen 2 5 pens) ((or 4 5) books)))

;q10
(defun flat (x)
 (if (null x)
  nil
  (if (symbolp (car x))
	(cons (car x) (flat (cdr x)))
	(cons (flat (car x)) (flat (cdr x)))
  )
 )
)

(setf flist '(a (i ((u)) (e) o)))
