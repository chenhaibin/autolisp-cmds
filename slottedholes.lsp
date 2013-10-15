;;;; Written by Derek Evenson 
;;;; 10/4/13

;;;; For use by J&D Construction of Montevideo, MN

(defun slottedhole()	
 
	(setq center (getpoint "\nChoose center point:") )
	
	(setq radius (getreal  "\nInput radius(inches):") )
	
	(setq len0 (getreal "\nInput total length(inches):") )
	
	(prin1 center)
	
)


(defun C:postest()
	
	(setq p1 (getpoint "\nSelect Center point:") )

	(setq heightradius (getreal "\nInput radius:") )
	
	(setq lengthradius (getreal "\nInput length:") )
	
	(SeverCoord(p1))

	


	
)

;(defun addpoints (p1 p2 / p3) 									; adds 2 points together – By Brian Forbes – http://www.autolisp.org/
;   (setq p3 (list (+ (car p1) (car p2)) (+ (cadr p1) (cadrp2)) (+ (caddr p1) (caddr p2)) ))
;)

(defun SeverCoord(p1)		;; Disassembles the position(list) into individual reals
	(setq p1x (car p1)		)
	
	(setq p1y (cadr p1)		)
	
	(setq p1z (caddr p1) 	)
	
)

(defun C:findcoord()   ;; Returns a mouse position (Only for debugging)

	(prin1 (getpoint "\nPick point") )

)
