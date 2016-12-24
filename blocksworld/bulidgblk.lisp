(setf blockdata
       '((b1 shape brick)
         (b1 color green)
         (b1 size small)
         (b1 supported-by b2)
         (b1 supported-by b3)
         (b2 shape brick)
         (b2 color red)
         (b2 size small)
         (b2 supports b1)
         (b2 left-of b3)
         (b3 shape brick)
         (b3 color red)
         (b3 size small)
         (b3 supports b1)
         (b3 right-of b2)
         (b4 shape pyramid)
         (b4 color blue)
         (b4 size large)
         (b4 supported-by b5)
         (b5 shape cube)
         (b5 color green)
         (b5 size large)
         (b5 supports b4)
         (b6 shape brick)
         (b6 color purple)
         (b6 size large)))

;q01
(defun match-element (x y)	
 (cond 
  ((equal y '?) t)
  ((equal x y) t)
  (t nil)
 )
)

;q02

(defun match-triple (x y)
 (every #'match-element 
  x y)
)

;q03
(defun fetch (ptn)
 (remove-if-not #'(lambda (x) (match-triple x ptn)) blockdata)
)

(fetch '(? supports b1))

;q04


;q05
(defun color-pattern (blk)
 (list blk 'color '?)
)

;q06
(defun supporters (blk)
 (mapcar #'car
 (fetch (list '? 'supports blk))
 )
)

;q07
(defun desc1 (blk)
 (fetch (list blk '? '?))
)
(defun desc2 (seq)
 (mapcar #'cdr seq)
)
(defun description (blk)
 (reduce #'append (desc2 (desc1 blk)))
)

;q08
(defun supp-cube (blk)
 	(some #'(lambda (blk) 
			 (if (equal (member 'cube (description blk)) nil) nil
			  't
			 )
			)
	 (supporters blk))
)
