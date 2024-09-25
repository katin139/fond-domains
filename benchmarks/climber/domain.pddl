(define (domain climber)
   (:requirements :typing :strips :non-deterministic)
   (:predicates
      (on-roof)
      (on-ground)
      (ladder-raised)
      (ladder-on-ground)
      (alive)
   )
   (:action climb-without-ladder
      :parameters ()
      :precondition (and (on-roof) (alive))
      :effect (and (not (on-roof))
         (on-ground)
         (oneof
            (and)
            (not (alive))))
   )
   (:action climb-with-ladder
      :parameters ()
      :precondition (and (on-roof) (alive) (ladder-raised))
      :effect (and (not (on-roof)) (on-ground))
   )
   (:action call-for-help
      :parameters ()
      :precondition (and (on-roof) (alive) (ladder-on-ground))
      :effect (and (not (ladder-on-ground))
         (ladder-raised))
   )
)