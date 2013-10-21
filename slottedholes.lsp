;;;; Written by Derek Evenson 
;;;; 10/4/13

;;;; For use by J&D Construction of Montevideo, MN

(defun slottedhole()	
 
	(setq center (getpoint "\nChoose center point:") )
	
	(setq radius (getreal  "\nInput radius(inches):") )
	
	(setq len0 (getreal "\nInput total length(inches):") )
	
	(prin1 center)
	
)

; Example drawing

;	p1------------p3
;  /				\
; |					 |
; |		  center	 |
; |					 |
;  \				/
;	p2------------p4

(defun C:postest()
	
	(setq pcenter (getpoint "\nSelect Center point:") )

	(setq heightradius (getreal "\nInput radius:") )
	
	(setq lengthradius (getreal "\nInput length:") )
	
	(prin1 "\nboiz1" )
	
	
		(setq pcenterx (car pcenter)		)
		
		
		(setq pcentery (cadr pcenter)		)
		
		
		(setq pcenterz (caddr pcenter) 		)

	(prin1 "\nboiz1" )
	
	;; Create the first point
	
	(setq p1x (- pcenterx (/ lengthradius 2.0) ) )
	
	(setq p1y (+ pcentery (/ heightradius 2.0) ) )
	
	(setq p1z pcenterz)
	
	(setq p1 (list(p1x p1y p1z))	)
	
	(prin1 "\nboiz1" )
	
		;;Create the second point
		
		(setq p2x (- pcenterx (/ lengthradius 2) ) )
		
		(setq p2y (- pcentery (/ heightradius 2) ) )
		
		(setq p2z pcenterz)	
		
		(setq p2 (list(p2x p2y p2z)) ) 
	
	
	;;Create the third point
	
	(setq p3x (+ pcenterx (/ lengthradius 2) ) )
	
	(setq p3y (+ pcentery (/ heightradius 2) ) )
	
	(setq p3z pcenterz)		

	(setq p3 (list(p3x p3y p3z)) )
	

		;;Create the fourth point
		
		(setq p4x (+ pcenterx (/ lengthradius 2) ) )
		
		(setq p4y (- pcentery (/ heightradius 2) ) )
		
		(setq p4z pcenterz)
		
		(setq p4 (list(p4x p4y p4z)) )


(prin1 "buttz")
	
	;;Draw lines between p1-p3 & p2-p4
	
	(command "line" p1 p3 "")
	
	(command "line" p2 p4 "")
	
	;;Draw arc between 
	
	;(command "arc" 
	
	
)

;(defun addpoints (p1 p2 / p3) 									; adds 2 points together – By Brian Forbes – http://www.autolisp.org/
;   (setq p3 (list (+ (car p1) (car p2)) (+ (cadr p1) (cadrp2)) (+ (caddr p1) (caddr p2)) ))
;)

;(defun SeverCoord()		;; Disassembles the position(list) into individual reals
;	
;	
;	
;	(setq pcenterx (car pcenter)		)
;	
;	(prin1 pcenterx)
;	
;	(setq pcentery (cadr pcenter)		)
;	
;	(setq pcenterz (caddr pcenter) 		)
;	
;

(defun C:drawlines(/ foo1 foo2)

	(setq foo1 (getpoint "\nSelect point:")	)
	(setq foo2 (getpoint "\nget another point:") ) 
	
	(command "line" foo1 foo2 "")
)




(defun C:findcoord()   ;; Returns a mouse position (Only for debugging)

	(prin1 (getpoint "\nPick point") )

)



^C^C-purge;a;;n;;a;;n;;a;;n;;r;;n;
^C^Ccircle;\;text;m;@;;0;\qleader;\per;\^C 
