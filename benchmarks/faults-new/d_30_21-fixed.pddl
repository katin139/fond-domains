(define (domain faults)
(:requirements :typing :strips :non-deterministic)
 (:types operation fault)
 (:constants  f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 - fault 
              o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 - operation)
 (:predicates 
   (not_completed ?o - operation)
   (completed ?o - operation)
   (fault ?f - fault)
   (not_fault ?f - fault)
   (faulted_op ?o - operation ?f - fault)
   (last_fault ?f - fault)
   (made)
  )

 (:action perform_operation_1_fault
  :parameters (?o - operation)
  :precondition (and  (not_fault f1) (not_fault f2) (not_fault f3) (not_fault f4) (not_fault f5) (not_fault f6) (not_fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f1) (not (not_fault f1))
                                 (faulted_op ?o f1) (last_fault f1))))
 )
 (:action perform_operation_2_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (not_fault f2) (not_fault f3) (not_fault f4) (not_fault f5) (not_fault f6) (not_fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f2) (not (not_fault f2))
                                 (faulted_op ?o f2) (last_fault f2))))
 )
 (:action perform_operation_3_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (not_fault f3) (not_fault f4) (not_fault f5) (not_fault f6) (not_fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f3) (not (not_fault f3))
                                 (faulted_op ?o f3) (last_fault f3))))
 )
 (:action perform_operation_4_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (not_fault f4) (not_fault f5) (not_fault f6) (not_fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f4) (not (not_fault f4))
                                 (faulted_op ?o f4) (last_fault f4))))
 )
 (:action perform_operation_5_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (not_fault f5) (not_fault f6) (not_fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f5) (not (not_fault f5))
                                 (faulted_op ?o f5) (last_fault f5))))
 )
 (:action perform_operation_6_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (not_fault f6) (not_fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f6) (not (not_fault f6))
                                 (faulted_op ?o f6) (last_fault f6))))
 )
 (:action perform_operation_7_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (not_fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f7) (not (not_fault f7))
                                 (faulted_op ?o f7) (last_fault f7))))
 )
 (:action perform_operation_8_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (not_fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f8) (not (not_fault f8))
                                 (faulted_op ?o f8) (last_fault f8))))
 )
 (:action perform_operation_9_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (not_fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f9) (not (not_fault f9))
                                 (faulted_op ?o f9) (last_fault f9))))
 )
 (:action perform_operation_10_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (not_fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f10) (not (not_fault f10))
                                 (faulted_op ?o f10) (last_fault f10))))
 )
 (:action perform_operation_11_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (not_fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f11) (not (not_fault f11))
                                 (faulted_op ?o f11) (last_fault f11))))
 )
 (:action perform_operation_12_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (not_fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f12) (not (not_fault f12))
                                 (faulted_op ?o f12) (last_fault f12))))
 )
 (:action perform_operation_13_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (not_fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f13) (not (not_fault f13))
                                 (faulted_op ?o f13) (last_fault f13))))
 )
 (:action perform_operation_14_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (not_fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f14) (not (not_fault f14))
                                 (faulted_op ?o f14) (last_fault f14))))
 )
 (:action perform_operation_15_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (fault f14) (not_fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f15) (not (not_fault f15))
                                 (faulted_op ?o f15) (last_fault f15))))
 )
 (:action perform_operation_16_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (fault f14) (fault f15) (not_fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f16) (not (not_fault f16))
                                 (faulted_op ?o f16) (last_fault f16))))
 )
 (:action perform_operation_17_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (fault f14) (fault f15) (fault f16) (not_fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f17) (not (not_fault f17))
                                 (faulted_op ?o f17) (last_fault f17))))
 )
 (:action perform_operation_18_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (fault f14) (fault f15) (fault f16) (fault f17) (not_fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f18) (not (not_fault f18))
                                 (faulted_op ?o f18) (last_fault f18))))
 )
 (:action perform_operation_19_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (fault f14) (fault f15) (fault f16) (fault f17) (fault f18) (not_fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f19) (not (not_fault f19))
                                 (faulted_op ?o f19) (last_fault f19))))
 )
 (:action perform_operation_20_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (fault f14) (fault f15) (fault f16) (fault f17) (fault f18) (fault f19) (not_fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f20) (not (not_fault f20))
                                 (faulted_op ?o f20) (last_fault f20))))
 )
 (:action perform_operation_21_fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (fault f2) (fault f3) (fault f4) (fault f5) (fault f6) (fault f7) (fault f8) (fault f9) (fault f10) (fault f11) (fault f12) (fault f13) (fault f14) (fault f15) (fault f16) (fault f17) (fault f18) (fault f19) (fault f20) (not_fault f21) (not_completed ?o))
  :effect (and (completed ?o) (not (not_completed ?o))
               (oneof (and) (and (fault f21) (not (not_fault f21))
                                 (faulted_op ?o f21) (last_fault f21))))
 )
 (:action repair_fault_1
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f1) (last_fault f1))
  :effect (and (not (faulted_op ?o f1))
               (not_completed ?o) (not (completed ?o))
               (not (last_fault f1)) (not_fault f1) (not (fault f1))
          )
  )
 (:action repair_fault_2
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f2) (last_fault f2))
  :effect (and (not (faulted_op ?o f2))
               (not_completed ?o) (not (completed ?o))
               (last_fault f1)
               (not (last_fault f2)) (not_fault f2) (not (fault f2))
          )
  )
 (:action repair_fault_3
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f3) (last_fault f3))
  :effect (and (not (faulted_op ?o f3))
               (not_completed ?o) (not (completed ?o))
               (last_fault f2)
               (not (last_fault f3)) (not_fault f3) (not (fault f3))
          )
  )
 (:action repair_fault_4
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f4) (last_fault f4))
  :effect (and (not (faulted_op ?o f4))
               (not_completed ?o) (not (completed ?o))
               (last_fault f3)
               (not (last_fault f4)) (not_fault f4) (not (fault f4))
          )
  )
 (:action repair_fault_5
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f5) (last_fault f5))
  :effect (and (not (faulted_op ?o f5))
               (not_completed ?o) (not (completed ?o))
               (last_fault f4)
               (not (last_fault f5)) (not_fault f5) (not (fault f5))
          )
  )
 (:action repair_fault_6
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f6) (last_fault f6))
  :effect (and (not (faulted_op ?o f6))
               (not_completed ?o) (not (completed ?o))
               (last_fault f5)
               (not (last_fault f6)) (not_fault f6) (not (fault f6))
          )
  )
 (:action repair_fault_7
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f7) (last_fault f7))
  :effect (and (not (faulted_op ?o f7))
               (not_completed ?o) (not (completed ?o))
               (last_fault f6)
               (not (last_fault f7)) (not_fault f7) (not (fault f7))
          )
  )
 (:action repair_fault_8
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f8) (last_fault f8))
  :effect (and (not (faulted_op ?o f8))
               (not_completed ?o) (not (completed ?o))
               (last_fault f7)
               (not (last_fault f8)) (not_fault f8) (not (fault f8))
          )
  )
 (:action repair_fault_9
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f9) (last_fault f9))
  :effect (and (not (faulted_op ?o f9))
               (not_completed ?o) (not (completed ?o))
               (last_fault f8)
               (not (last_fault f9)) (not_fault f9) (not (fault f9))
          )
  )
 (:action repair_fault_10
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f10) (last_fault f10))
  :effect (and (not (faulted_op ?o f10))
               (not_completed ?o) (not (completed ?o))
               (last_fault f9)
               (not (last_fault f10)) (not_fault f10) (not (fault f10))
          )
  )
 (:action repair_fault_11
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f11) (last_fault f11))
  :effect (and (not (faulted_op ?o f11))
               (not_completed ?o) (not (completed ?o))
               (last_fault f10)
               (not (last_fault f11)) (not_fault f11) (not (fault f11))
          )
  )
 (:action repair_fault_12
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f12) (last_fault f12))
  :effect (and (not (faulted_op ?o f12))
               (not_completed ?o) (not (completed ?o))
               (last_fault f11)
               (not (last_fault f12)) (not_fault f12) (not (fault f12))
          )
  )
 (:action repair_fault_13
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f13) (last_fault f13))
  :effect (and (not (faulted_op ?o f13))
               (not_completed ?o) (not (completed ?o))
               (last_fault f12)
               (not (last_fault f13)) (not_fault f13) (not (fault f13))
          )
  )
 (:action repair_fault_14
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f14) (last_fault f14))
  :effect (and (not (faulted_op ?o f14))
               (not_completed ?o) (not (completed ?o))
               (last_fault f13)
               (not (last_fault f14)) (not_fault f14) (not (fault f14))
          )
  )
 (:action repair_fault_15
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f15) (last_fault f15))
  :effect (and (not (faulted_op ?o f15))
               (not_completed ?o) (not (completed ?o))
               (last_fault f14)
               (not (last_fault f15)) (not_fault f15) (not (fault f15))
          )
  )
 (:action repair_fault_16
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f16) (last_fault f16))
  :effect (and (not (faulted_op ?o f16))
               (not_completed ?o) (not (completed ?o))
               (last_fault f15)
               (not (last_fault f16)) (not_fault f16) (not (fault f16))
          )
  )
 (:action repair_fault_17
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f17) (last_fault f17))
  :effect (and (not (faulted_op ?o f17))
               (not_completed ?o) (not (completed ?o))
               (last_fault f16)
               (not (last_fault f17)) (not_fault f17) (not (fault f17))
          )
  )
 (:action repair_fault_18
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f18) (last_fault f18))
  :effect (and (not (faulted_op ?o f18))
               (not_completed ?o) (not (completed ?o))
               (last_fault f17)
               (not (last_fault f18)) (not_fault f18) (not (fault f18))
          )
  )
 (:action repair_fault_19
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f19) (last_fault f19))
  :effect (and (not (faulted_op ?o f19))
               (not_completed ?o) (not (completed ?o))
               (last_fault f18)
               (not (last_fault f19)) (not_fault f19) (not (fault f19))
          )
  )
 (:action repair_fault_20
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f20) (last_fault f20))
  :effect (and (not (faulted_op ?o f20))
               (not_completed ?o) (not (completed ?o))
               (last_fault f19)
               (not (last_fault f20)) (not_fault f20) (not (fault f20))
          )
  )
 (:action repair_fault_21
  :parameters (?o - operation)
  :precondition (and (faulted_op ?o f21) (last_fault f21))
  :effect (and (not (faulted_op ?o f21))
               (not_completed ?o) (not (completed ?o))
               (last_fault f20)
               (not (last_fault f21)) (not_fault f21) (not (fault f21))
          )
  )
 (:action finish
  :parameters () 
  :precondition (and  (completed o1) (completed o2) (completed o3) (completed o4) (completed o5) (completed o6) (completed o7) (completed o8) (completed o9) (completed o10) (completed o11) (completed o12) (completed o13) (completed o14) (completed o15) (completed o16) (completed o17) (completed o18) (completed o19) (completed o20) (completed o21) (completed o22) (completed o23) (completed o24) (completed o25) (completed o26) (completed o27) (completed o28) (completed o29) (completed o30) (not (last_fault f21)))
  :effect (made)
 )
)