(define (problem SENTIMIENTOS-1-0)
(:domain SENTIMIENTOS)
(:objects alegria - emocion
          cantar - accion
          primero - escenario
          hola - numero)
(:INIT (reaccion_accion_emocion cantar alegria) 
       (turno) 
       (escenario_numero primero hola)
       (= (turno_escenario primero) 1))
(:goal (AND (meta)))

)
