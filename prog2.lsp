;-*- Mode:     Lisp -*-
;;;; Author:   Paul Dietz
;;;; Created:  Sat Oct 19 09:40:51 2002
;;;; Contains: Tests for PROG2

(in-package :cl-test)

(deftest prog2.1
  (prog2 'a 'b)
  b)

(deftest prog2.2
  (prog2 'a 'b 'c)
  b)

(deftest prog2.3
  (prog2 'a (values) 'c)
  nil)

(deftest prog2.4
  (prog2 'a (values 'b 'd) 'c)
  b)

(deftest prog2.5
  (let ((x 0))
    (values
     (prog2 (incf x) (incf x) (incf x))
     x))
  2 3)

(deftest prog2.6
  (let ((x 1))
    (values
     (prog2 (incf x (1+ x)) (incf x (+ 2 x)) (incf x 100))
     x))
  8 108)






