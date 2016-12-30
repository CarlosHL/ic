(define (problem SENTIMIENTOS-1-0)
(:domain SENTIMIENTOS)
(:objects accion1 - accion
          accion2 - accion
          escenario1 - escenario
          bot1 - usuario
          bot2 - usuario
          personalidad1 - personalidad
          emocion2 - emocion
          personalidad2 - personalidad
          etiqueta1 - etiqueta)

(:INIT  (inicio)
        (= (turno) 0)
        (= (turno_escenario) 0)
        (= (turno_usuario bot1) 1)
        (= (turno_usuario bot2) 2)
        (bot_personalidad bot1 personalidad1)
        (bot_personalidad bot2 personalidad2)
        (bot_accion bot1 accion1)
        (bot_accion bot2 accion2)
        (usuario_emocion bot2 emocion2)
        (personalidad_accion personalidad1 accion1)
        (personalidad_accion personalidad2 accion2)
        (gestion_emocion emocion2 etiqueta1)
        )

(:goal (AND (meta)))

)
