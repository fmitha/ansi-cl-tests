;-*- Mode:     Lisp -*-
;;;; Author:   Paul Dietz
;;;; Created:  Sat Sep  6 21:15:54 2003
;;;; Contains: Tests of PHASE

(in-package :cl-test)

(deftest phase.error.1
  (classify-error (phase))
  program-error)

(deftest phase.error.2
  (classify-error (phase 0 0))
  program-error)

(deftest phase.error.3
  (loop for x in *mini-universe*
	unless (or (numberp x)
		   (eq (eval `(classify-error (phase ',x))) 'type-error))
	collect x)
  nil)

(deftest phase.1
  (eqlt (phase 0) 0.0f0)
  t)

(deftest phase.2
  (eqlt (phase 1) 0.0f0)
  t)

(deftest phase.3
  (eqlt (phase 1/2) 0.0f0)
  t)

(deftest phase.4
  (eqlt (phase 100.0f0) 0.0f0)
  t)

(deftest phase.5
  (eqlt (phase 100.0s0) 0.0s0)
  t)

(deftest phase.6
  (eqlt (phase 100.0d0) 0.0d0)
  t)

(deftest phase.7
  (eqlt (phase 100.0l0) 0.0l0)
  t)

(deftest phase.8
  (eqlt (phase -1) (coerce pi 'single-float))
  t)

(deftest phase.9
  (eqlt (phase -1/2) (coerce pi 'single-float))
  t)

(deftest phase.10
  (let ((p1 (phase #c(0 1)))
	(p2 (phase #c(0.0f0 1.0f0))))
    (and (eql p1 p2)
	 (approx= p1 (coerce (/ pi 2) 'single-float))))
  t)

(deftest phase.11
  (let ((p (phase #c(0.0d0 1.0d0))))
    (approx= p (coerce (/ pi 2) 'double-float)))
  t)

(deftest phase.12
  (let ((p (phase #c(0.0s0 1.0s0))))
    (approx= p (coerce (/ pi 2) 'single-float)))
  t)

(deftest phase.13
  (let ((p (phase #c(0.0l0 1.0l0))))
    (approx= p (/ pi 2)))
  t)

(deftest phase.14
  (let ((p1 (phase #c(1 1)))
	(p2 (phase #c(1.0f0 1.0f0))))
    (and (eql p1 p2)
	 (approx= p1 (coerce (/ pi 4) 'single-float))))
  t)

(deftest phase.15
  (let ((p (phase #c(1.0d0 1.0d0))))
    (approx= p (coerce (/ pi 4) 'double-float)))
  t)

(deftest phase.16
  (let ((p (phase #c(1.0s0 1.0s0))))
    (approx= p (coerce (/ pi 4) 'single-float)))
  t)

(deftest phase.17
  (let ((p (phase #c(1.0l0 1.0l0))))
    (approx= p (/ pi 4)))
  t)
