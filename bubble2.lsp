
;;; bubble2.lsp
;;;
;;; By Derek Evenson of J&D Construction 10/18/13
;;;
;;;
;;; Based on the AutoCAD macro "Bubble" by Ken Mages of J&D Construction
;;;
;;; 
;;;	Bubble Macros
;;; ========================
;;;		^C^Ccircle;\;text;m;@;;0;\qleader;\per;\^C 
;;;
;;; 	^C^Csnap;on;circle;\;text;m;@;;0;\snap;off;qleader;nea;\per;\^C 


(defun C:bubble2( / DIM RAD DIA TEXT_HEIGHT) 
	(setvar "CMDECHO" 0)								;;Commands won't reveal themselves in AutoCad terminal but will still occur
	
	(setq DIM (getvar "dimscale") )						;;Set the current dimscale to variable
	;(print DIM)


	(setq DIA (* DIM 0.635) )							;;Diameter = 0.635 * Dimscale
	(setq RAD (/ DIA 2) )								;;Radius is half of diameter
	(setq TEXT_HEIGHT (* DIM 0.25) )					;;Text height = 0.25 * Dimscale
	(print "Specify center point for circle:")
	(command "circle" pause RAD)
	(print "Enter text for bubble: (Press enter twice to continue)")
	(command "dtext" "m" "@" TEXT_HEIGHT "0")
	(print "Select End point of qleader:")
	(command "qleader" pause "per")
	(print "Select Start point of qleader:")
	(command pause ^C)
	
	(setvar "CMDECHO" 1	)								;;Commands will again reveal in AutoCad terminal
	(princ)												;;Something needs to be printed or else "1" will be shown due to previous line
) ;End
