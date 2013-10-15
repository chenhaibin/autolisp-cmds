;;;; Written by Derek Evenson 
;;;; 10/4/13

;;;; For use by J&D Construction of Montevideo, MN

(defun slottedhole()	
 
	(setq center (getpoint "\nChoose center point:") )
	
	(setq radius (getreal  "\nInput radius(inches):") )
	
	(setq len0 (getreal "\nInput total length(inches):") )
	
	(prin1 center)
	
)


(defun postest()
	
	(setq p1 (getpoint "\nSelect initial point:") )

	(prin1 p1)

	(setq p2 (getpoint "\nSelect second point:") )

	(prin1 p2)
	
	(setq fp (+ p1 p2) )
	
	(prin1 fp)
	
)
