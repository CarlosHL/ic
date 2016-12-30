(define (problem SENTIMIENTOS-1-0)
(:domain SENTIMIENTOS)
(:objects alegria - emocion
          cantar - accion)
(:INIT (reaccion_accion_emocion cantar alegria) (turno))
(:goal (AND (meta)))

)
