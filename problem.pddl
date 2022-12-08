(define (domain waypoint-navigation)
  (:predicates
    (at ?a - agent ?w - waypoint)
    (adjacent ?w1 ?w2 - waypoint)
    (docked ?a - agent ?t - trolley)
    (on ?t - trolley ?p - product)
    (connected ?t - trolley ?a - agent)
  )
  (:action move
    :parameters (?a - agent ?from ?to - waypoint)
    :precondition (and (at ?a ?from) (adjacent ?from ?to) (docked ?a trolley))
    :effect (and (not (at ?a ?from)) (at ?a ?to))
  )
)

(define (problem waypoint-navigation)
  (:domain waypoint-navigation)
  (:objects
    agent - agent
    trolley - trolley
    p1 p2 p3 p4 - product
    w1 w2 w3 w4 - waypoint
  )
  (:init
    (at agent w1)
    (docked agent trolley)
    (on trolley p1 p2 p3 p4)
    (connected trolley agent)
    (adjacent w1 w2)
    (adjacent w2 w3)
    (adjacent w3 w4)
  )
  (:goal
    (and (at agent w2) (at agent w3) (at agent w4))
    (and (at p1 w2) (at p2 w3) (at p3 w4) (at p4 w4))
  )
)