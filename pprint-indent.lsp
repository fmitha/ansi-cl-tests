;-*- Mode:     Lisp -*-
;;;; Author:   Paul Dietz
;;;; Created:  Sat Jul  3 08:50:40 2004
;;;; Contains: Tests of PPRINT-INDENT

(in-package :cl-test)

(deftest pprint-indent.1
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (with-open-stream (*standard-output* (make-string-output-stream))
		       (pprint-indent :block 0))))
  nil)

(deftest pprint-indent.2
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (with-open-stream (*standard-output* (make-broadcast-stream))
		       (pprint-indent :current 0))))
  nil)

(deftest pprint-indent.3
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (with-open-stream (s (make-string-output-stream))
		       (pprint-indent :current 10 s))))
  nil)

(deftest pprint-indent.4
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (with-open-stream (s (make-string-output-stream))
		       (pprint-indent :block 1/2 s))))
  nil)

(deftest pprint-indent.5
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (with-open-stream (s (make-string-output-stream))
		       (pprint-indent :block 0.1 s))))
  nil)

(deftest pprint-indent.6
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (loop for x in '(1.0s0 1.0f0 1.0d0 1.0l0)
	   unless
	   (equal
	    (multiple-value-list
	     (with-open-stream (s (make-string-output-stream))
			       (pprint-indent :block x s)))
	    '(nil))
	   collect x)))
  nil)

(deftest pprint-indent.7
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (with-open-stream (*standard-output* (make-broadcast-stream))
		       (pprint-indent :current 0 nil))))
  nil)

(deftest pprint-indent.8
  (my-with-standard-io-syntax
   (let ((*print-pretty* nil))
     (with-open-stream
      (os (make-string-output-stream))
      (with-open-stream
       (is (make-string-input-stream ""))
       (with-open-stream (*terminal-io* (make-two-way-stream is os))
			 (pprint-indent :current 0 t))))))
  nil)


