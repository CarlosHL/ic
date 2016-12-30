;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; UNIVERSO DE EMOCIONES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain SENTIMIENTOS)
  (:requirements :strips :typing)
  (:types escenario usuario accion personalidad emocion etiqueta)
  (:predicates (inicio)
               (meta)
               (bot_accion ?x - usuario ?y - accion)
               (bot_personalidad ?x - usuario ?y - personalidad)
               (personalidad_accion ?x - personalidad ?y - accion)
               (usuario_emocion ?x - usuario ?y -emocion)
               (provoca_emocion)
               (gestion_emocion ?x - emocion ?y - etiqueta)
               (gestion_emo)
               )

  (:functions (turno_escenario)
              (turno_usuario ?y - usuario)
              (turno))
  

(:action inicia-escenario
	     :parameters (?v - escenario)
	     :precondition (inicio) 
	     :effect
	     (and 
                  (increase (turno) 1)
                  (not (inicio))))


(:action ejecutar-accion
	     :parameters (?y - usuario ?x - accion ?t - personalidad)
	     :precondition (and 
                                (= (turno) 1) 
                                (= (turno_usuario ?y) 1)
                                (bot_personalidad ?y ?t)
                                (personalidad_accion ?t ?x))
	     :effect
	     (and (provoca_emocion)))


(:action emocion
	     :parameters (?y - usuario ?x - emocion)
	     :precondition (and (provoca_emocion) (usuario_emocion ?y ?x))
	     :effect
	     (and (not (provoca_emocion))
                  (increase (turno_escenario) 1)
                  (increase (turno) 1)))



(:action ejecutar-accion
	     :parameters (?y - usuario ?x - accion ?t - personalidad)
             :precondition (and 
                                (= (turno) 2) 
                                (= (turno_usuario ?y) 2)
                                (bot_personalidad ?y ?t)
                                (personalidad_accion ?t ?x))
	     :effect
	     (and (gestion_emo)))


(:action gestion
	     :parameters (?x - emocion ?y - etiqueta)
             :precondition (and 
                                (gestion_emo)
        
                                (gestion_emocion ?x ?y))
	     :effect
	     (and (meta)
                  (increase (turno_escenario) 1)))









)






