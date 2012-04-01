;;(make-segment (make-point ) (make-point ))

;; a
(list (make-segment (make-point 0.0 0.0) (make-point 0.0 1.0))
      (make-segment (make-point 0.0 1.0) (make-point 1.0 1.0))
      (make-segment (make-point 1.0 1.0) (make-point 1.0 0.0))
      (make-segment (make-point 1.0 0.0) (make-point 0.0 0.0)))

;; b
(list (make-segment (make-point 0.0 0.0) (make-point 1.0 1.0))
      (make-segment (make-point 1.0 0.0) (make-point 0.0 1.0)))

;; c
(list (make-segment (make-point 0.5 0) (make-point 1 0.5))
      (make-segment (make-point 1 0.5) (make-point 0.5 1))
      (make-segment (make-point 0.5 1) (make-point 0 0.5))
      (make-segment (make-point 0 0.5) (make-point 0.5 0)))

;; d
(list (make-segment (make-point 0.000 0.645) (make-point 0.154 0.411))
      (make-segment (make-point 0.154 0.411) (make-point 0.302 0.588))
      (make-segment (make-point 0.302 0.588) (make-point 0.354 0.497))
      (make-segment (make-point 0.354 0.497) (make-point 0.245 0.000))
      (make-segment (make-point 0.419 0.000) (make-point 0.497 0.171))
      (make-segment (make-point 0.497 0.171) (make-point 0.575 0.000))
      (make-segment (make-point 0.748 0.000) (make-point 0.605 0.462))
      (make-segment (make-point 0.605 0.462) (make-point 1.000 0.142))
      (make-segment (make-point 1.000 0.354) (make-point 0.748 0.657))
      (make-segment (make-point 0.748 0.657) (make-point 0.582 0.657))
      (make-segment (make-point 0.582 0.657) (make-point 0.640 0.857))
      (make-segment (make-point 0.640 0.857) (make-point 0.575 1.000))
      (make-segment (make-point 0.419 1.000) (make-point 0.354 0.857))
      (make-segment (make-point 0.354 0.857) (make-point 0.411 0.657))
      (make-segment (make-point 0.411 0.657) (make-point 0.285 0.657))
      (make-segment (make-point 0.285 0.657) (make-point 0.154 0.605))
      (make-segment (make-point 0.154 0.605) (make-point 0.000 0.857)))