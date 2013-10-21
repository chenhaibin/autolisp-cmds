;;; slotted.lsp
;;;
;;; Edited and revised by Derek Evenson of J&D Construction 10/16/2013
;;; 	Orginal from http://www.cadtutor.net/forum/archive/index.php/t-10010.html
;;;		by thalon
;;;
;;;	Changes
;;; ==================
;;; 	"SELECT SLOT CENTRE POINT" -> "SELECT CENTER POINT"
;;; 	Calculations kept the same but made slightly more dense in order to improve readability
;;; 	base layer changed from "OBJECT-1" to "0" 
;;; 	Added binary question to Expoding finished slot
;;;  
;;;


(defun C:SLOT (/ PT1 DIA LEN PT2 PT3 PT4 PT5 PT6 ANS ANG)

(setvar "CMDECHO" 0)
(setq PT1 (getpoint "\nSELECT SLOT CENTER POINT: ")
DIA (getdist "\nENTER SLOT DIAMETER:... ")
LEN (getdist "\nENTER SLOT LENGTH:..... ")
)
; ...................... Calculations


(setq PT2 (polar PT1 0.0 (/ (- LEN DIA) 2.0)))
(setq PT3 (polar PT2 (/ pi 2.0) (/ DIA 2.0)))
(setq PT4 (polar PT3 pi (- LEN DIA)))
(setq PT5 (polar PT4 (* pi 1.5) DIA))
(setq PT6 (polar PT5 0.0 (- LEN DIA)))

;(COMMAND "_LAYER" "S" "0" "")

(command ".PLINE" PT3 "W" "0" ""
PT4 "ARC" PT5 "LINE" PT6 "ARC" "CLOSE"
)
(initget "Y N")
(setq ANS (getkword "\nROTATE SLOT ?... Y/N <N>: "))

(if (= ANS "Y")
(progn
(setq ANG (getangle "\nENTER ANGLE: "))
(SETQ ANG (/(* ANG 180) 3.14159265359))
(command "ROTATE" "L" "" PT1 ANG)

)
)

(COMMAND "-LAYER" "S" "" "L" "")


;(initget "Y N")
;(setq ANS2 (getkword "\nEXPLODE SLOT ?... Y/N <N>: "))

;(if (= ANS2 "Y")
;(COMMAND "EXPLODE" "L" "")
;)
	
(setvar "CMDECHO" 1)
(princ)
) ; 


