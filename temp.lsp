(defun plus (tempList)
  (setq x (+ (car tempList) 1))
  (setq y (+ (cadr tempList) 1))
  (list x y)
)
  
(defun c:test ()
  (setq pastList (list (list 0 0) (list 1 1) (list 2 2)))
  ; (princ (length pastList))
  
  (setq i 0)
  (while (< i (length pastList))
    (setq nextList (append (list nextList) (list (plus (nth i pastList)))))
    (princ i)
    (setq i (1+ i))
  )
  
  ; (setq next (append next (list 1 1)))
  ; (princ next)
)