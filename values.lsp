;-*- Mode:     Lisp -*-
;;;; Author:   Paul Dietz
;;;; Created:  Sat Oct 19 08:18:50 2002
;;;; Contains: Tests of VALUES

(in-package :cl-test)

(deftest values.0
  (values))

(deftest values.1
  (values 1)
  1)

(deftest values.2
  (values 1 2)
  1 2)

(deftest values.3
  (values 1 2 3)
  1 2 3)

(deftest values.4
  (values 1 2 3 4)
  1 2 3 4)

(deftest values.10
  (values 1 2 3 4 5 6 7 8 9 10)
  1 2 3 4 5 6 7 8 9 10)

(deftest values.15
  (values 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)

(deftest values.19
  (values 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19)
  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19)

(deftest values.A
  (values (values 1 2) (values 3 4 5) (values) (values 10))
  1 3 nil 10)
