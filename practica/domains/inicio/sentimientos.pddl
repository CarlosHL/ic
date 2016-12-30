;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; UNIVERSO DE EMOCIONES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain SENTIMIENTOS)
  (:requirements :strips :typing)
  (:types emocion accion escenario)
  (:predicates (reaccion_accion_emocion ?x - accion ?y - emocion)
               (existe_accion ?x - accion)
               (existe_emocion ?y - emocion)
               (turno)
               (meta)
	       )

  

(:action inicia-escenario
	     :parameters (?x - accion ?y - emocion)
	     :precondition (and (reaccion_accion_emocion ?x ?y) (turno))
	     :effect
	     (and (meta)
                  (not (turno)))))
