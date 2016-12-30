;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; UNIVERSO DE EMOCIONES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain SENTIMIENTOS)
  (:requirements :strips :typing)
  (:types emocion accion escenario numero)
  (:predicates (reaccion_accion_emocion ?x - accion ?y - emocion)
               (escenario_numero ?x - escenario ?y - numero)
               (turno)
               (meta)
	       )

  (:functions (turno_escenario ?x - escenario)
  )

  

(:action inicia-escenario
	     :parameters (?x - accion ?y - emocion ?v - escenario ?w - numero)
	     :precondition 
                   (and (reaccion_accion_emocion ?x ?y) 
                        (turno) 
                        (escenario_numero ?v ?w) 
                        (= (turno_escenario ?v) 1))
	     :effect
	     (and (meta)
                  (increase (turno_escenario ?v) 1) 
                  (not (turno)))))
