;;;; Written by Derek Evenson 
;;;; 10/4/13

;;;; For use by J&D Construction of Montevideo, MN

(defun c:slottedhole()

	(setq center (getpoint "\nChoose center point:") )
	
	(setq radius (getreal  "\nInput radius:") )
	
	(prin1 center)
	
)

