;-*- Mode:     Lisp -*-
;;;; Author:   Paul Dietz
;;;; Created:  Sat Oct  5 12:52:18 2002
;;;; Contains: Tests associated with the class CHARACTER

(in-package :cl-test)

(deftest character-class.1
  (subtypep* 'character t)
  t t)

(deftest base-char.1
  (subtypep* 'base-char 'character)
  t t)

(deftest base-char.2
  (subtypep* 'base-char t)
  t t)

(deftest base-char.3
  (every #'(lambda (c) (typep c 'base-char)) +standard-chars+)
  t)

(deftest standard-char.1
  (subtypep* 'standard-char 'base-char)
  t t)

(deftest standard-char.2
  (subtypep* 'standard-char 'character)
  t t)

(deftest standard-char.3
  (subtypep* 'standard-char t)
  t t)

(deftest standard-char.4
  (every #'(lambda (c) (typep c 'standard-char)) +standard-chars+)
  t)

(deftest standard-char.5
  (standard-char.5.body)
  t)

(deftest extended-char.1
  (subtypep* 'extended-char 'character)
  t t)

(deftest extended-char.2
  (subtypep* 'extended-char t)
  t t)

(deftest extended-char.3
  (extended-char.3.body)
  t)

;;; 

(deftest character.1
  (character.1.body)
  t)

(deftest character.2
  (character.2.body)
  nil)

(deftest character.order.1
  (let ((i 0))
    (values
     (character (progn (incf i) #\a))
     i))
  #\a 1)

(deftest character.error.1
  (classify-error (character))
  program-error)

(deftest character.error.2
  (classify-error (character #\a #\a))
  program-error)

;;;

(deftest characterp.1
  (every #'characterp +standard-chars+)
  t)

(deftest characterp.2
  (characterp.2.body)
  t)

(deftest characterp.3
  (characterp.3.body)
  t)

(deftest characterp.order.1
  (let ((i 0))
    (values
     (characterp (incf i))
     i))
  nil 1)

(deftest characterp.error.1
  (classify-error (characterp))
  program-error)

(deftest characterp.error.2
  (classify-error (characterp #\a #\b))
  program-error)


(deftest alpha-char-p.1
  (loop for c across +standard-chars+
	always
	(or (find c +alpha-chars+)
	    (not (alpha-char-p c))))
  t)

;;;

(deftest alpha-char-p.2
  (every #'alpha-char-p +alpha-chars+)
  t)

(deftest alpha-char-p.3
  (char-type-error-check #'alpha-char-p)
  t)

(deftest alpha-char-p.order.1
  (let ((i 0))
    (values
     (alpha-char-p (progn (incf i) #\8))
     i))
  nil 1)

(deftest alpha-char-p.error.1
  (classify-error (alpha-char-p))
  program-error)

(deftest alpha-char-p.error.2
  (classify-error (alpha-char-p #\a #\b))
  program-error)

;;;

(deftest alphanumericp.1
  (loop for c across +standard-chars+
	always
	(or (find c +alphanumeric-chars+)
	    (not (alphanumericp c))))
  t)

(deftest alphanumericp.2
  (every #'alphanumericp +alphanumeric-chars+)
  t)

(deftest alphanumericp.3
  (char-type-error-check #'alphanumericp)
  t)

(deftest alphanumericp.4
  (alphanumericp.4.body)
  t)

(deftest alphanumericp.5
  (alphanumericp.5.body)
  t)

(deftest alphanumericp.order.1
  (let ((i 0))
    (values
     (alphanumericp (progn (incf i) #\?))
     i))
  nil 1)

(deftest alphanumericp.error.1
  (classify-error (alphanumericp))
  program-error)

(deftest alphanumericp.error.2
  (classify-error (alphanumericp #\a #\b))
  program-error)

;;;

(deftest digit-char.1
  (digit-char.1.body)
  t)

(deftest digit-char.2
  (map 'list #'digit-char (loop for i from 0 to 39 collect i))
  (#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9
   nil nil nil nil nil nil nil nil nil nil
   nil nil nil nil nil nil nil nil nil nil
   nil nil nil nil nil nil nil nil nil nil))

(deftest digit-char.order.1
  (let ((i 0))
    (values
     (digit-char (incf i))
     i))
  #\1 1)

(deftest digit-char.order.2
  (let ((i 0) x)
    (values
     (digit-char (incf i) (progn (setf x (incf i)) 10))
     i x))
  #\1 2 2)

(deftest digit-char.error.1
  (classify-error (digit-char))
  program-error)

(deftest digit-char.error.2
  (classify-error (digit-char 0 10 'foo))
  program-error)

;;;

(deftest digit-char-p.1
  (digit-char-p.1.body)
  t)

(deftest digit-char-p.2
  (digit-char-p.2.body)
  t)
		   
(deftest digit-char-p.3
  (digit-char-p.3.body)
  t)

(deftest digit-char-p.4
  (digit-char-p.4.body)
  t)

(deftest digit-char-p.5
  (loop for i from 10 to 35
	for c = (char +extended-digit-chars+ i)
	never (or (digit-char-p c)
		  (digit-char-p (char-downcase c))))
  t)

(deftest digit-char-p.6
  (loop for i from 0 below 10
	for c = (char +extended-digit-chars+ i)
	always (eqlt (digit-char-p c) i))
  t)

(deftest digit-char-p.order.1
  (let ((i 0))
    (values
     (digit-char-p (progn (incf i) #\0))
     i))
  0 1)

(deftest digit-char-p.order.2
  (let ((i 0) x y)
    (values
     (digit-char-p (progn (setf x (incf i)) #\0)
		   (progn (setf y (incf i)) 10))
     i x y))
  0 2 1 2)

(deftest digit-char-p.error.1
  (classify-error (digit-char-p))
  program-error)
  
(deftest digit-char-p.error.2
  (classify-error (digit-char-p #\1 10 'foo))
  program-error)

;;;

(deftest graphic-char-p.1
  (loop for c across +standard-chars+
	always (if (eqlt c #\Newline)
		   (not (graphic-char-p c))
		 (graphic-char-p c)))
  t)

(deftest graphic-char-p.2
  (loop
   for name in '("Rubout" "Page" "Backspace" "Tab" "Linefeed" "Return")
   for c = (name-char name)
   when (and c (graphic-char-p c)) collect c)
  nil)

(deftest graphic-char-p.3
  (char-type-error-check #'graphic-char-p)
  t)

(deftest graphic-char-p.order.1
  (let ((i 0))
    (values
     (not (graphic-char-p (progn (incf i) #\a)))
     i))
  nil 1)

(deftest graphic-char-p.error.1
  (classify-error (graphic-char-p))
  program-error)

(deftest graphic-char-p.error.2
  (classify-error (graphic-char-p #\a #\a))
  program-error)

;;;

(deftest standard-char-p.1
  (every #'standard-char-p +standard-chars+)
  t)

(deftest standard-char-p.2
  (standard-char-p.2.body)
  t)

(deftest standard-char-p.2a
  (standard-char-p.2a.body)
  t)

(deftest standard-char-p.3
  (char-type-error-check #'standard-char-p)
  t)

(deftest standard-char-p.order.1
  (let ((i 0))
    (values
     (not (standard-char-p (progn (incf i) #\a)))
     i))
  nil 1)

(deftest standard-char-p.error.1
  (classify-error (standard-char-p))
  program-error)
  
(deftest standard-char-p.error.2
  (classify-error (standard-char-p #\a #\a))
  program-error)

;;;

(deftest char-upcase.1
  (char-upcase.1.body)
  t)

(deftest char-upcase.2
  (char-upcase.2.body)
  t)

(deftest char-upcase.3
  (map 'string #'char-upcase +alpha-chars+)
  "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ")

(deftest char-upcase.4
  (char-type-error-check #'char-upcase)
  t)

(deftest char-upcase.order.1
  (let ((i 0))
    (values
     (char-upcase (progn (incf i) #\a))
     i))
  #\A 1)

(deftest char-upcase.error.1
  (classify-error (char-upcase))
  program-error)

(deftest char-upcase.error.2
  (classify-error (char-upcase #\a #\a))
  program-error)

;;;

(deftest char-downcase.1
  (char-downcase.1.body)
  t)

(deftest char-downcase.2
  (char-downcase.2.body)
  t)

(deftest char-downcase.3
  (map 'string #'char-downcase +alpha-chars+)
  "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz")

(deftest char-downcase.4
  (char-type-error-check #'char-downcase)
  t)

(deftest char-downcase.order.1
  (let ((i 0))
    (values
     (char-downcase (progn (incf i) #\A))
     i))
  #\a 1)

(deftest char-downcase.error.1
  (classify-error (char-downcase))
  program-error)

(deftest char-downcase.error.2
  (classify-error (char-downcase #\A #\A))
  program-error)

;;;

(deftest upper-case-p.1
  (find-if-not #'upper-case-p +standard-chars+ :start 26 :end 52)
  nil)

(deftest upper-case-p.2
  (find-if #'upper-case-p +standard-chars+ :end 26)
  nil)

(deftest upper-case-p.3
  (find #'upper-case-p +standard-chars+ :start 52)
  nil)

(deftest upper-case-p.4
  (char-type-error-check #'upper-case-p)
  t)

(deftest upper-case-p.order.1
  (let ((i 0))
    (values
     (upper-case-p (progn (incf i) #\a))
     i))
  nil 1)

(deftest upper-case-p.error.1
  (classify-error (upper-case-p))
  program-error)

(deftest upper-case-p.error.2
  (classify-error (upper-case-p #\a #\A))
  program-error)

;;;

(deftest lower-case-p.1
  (find-if-not #'lower-case-p +standard-chars+ :end 26)
  nil)

(deftest lower-case-p.2
  (find-if #'lower-case-p +standard-chars+ :start 26)
  nil)

(deftest lower-case-p.3
  (char-type-error-check #'lower-case-p)
  t)

(deftest lower-case-p.order.1
  (let ((i 0))
    (values
     (lower-case-p (progn (incf i) #\A))
     i))
  nil 1)

(deftest lower-case-p.error.1
  (classify-error (lower-case-p))
  program-error)

(deftest lower-case-p.error.2
  (classify-error (lower-case-p #\a #\a))
  program-error)

;;;

(deftest both-case-p.1
  (both-case-p.1.body)
  t)

(deftest both-case-p.2
  (both-case-p.2.body)
  t)

(deftest both-case-p.3
  (char-type-error-check #'both-case-p)
  t)

(deftest both-case-p.order.1
  (let ((i 0))
    (values
     (both-case-p (progn (incf i) #\5))
     i))
  nil 1)

(deftest both-case-p.error.1
  (classify-error (both-case-p))
  program-error)

(deftest both-case-p.error.2
  (classify-error (both-case-p #\a #\a))
  program-error)

;;;

(deftest char-code.1
  (char-type-error-check #'char-code)
  t)

(deftest char-code.2
  (char-code.2.body)
  t)

(deftest char-code.order.1
  (let ((i 0))
    (values
     (not (numberp (char-code (progn (incf i) #\a))))
     i))
  nil 1)

(deftest char-code.error.1
  (classify-error (char-code))
  program-error)

(deftest char-code.error.2
  (classify-error (char-code #\a #\a))
  program-error)

;;;

(deftest code-char.1
  (loop for x across +standard-chars+
	always (eqlt (code-char (char-code x)) x))
  t)

(deftest code-char.order.1
  (let ((i 0))
    (values
     (code-char (progn (incf i) (char-code #\a)))
     i))
  #\a 1)

(deftest code-char.error.1
  (classify-error (code-char))
  program-error)

(deftest code-char.error.2
  (classify-error (code-char 1 1))
  program-error)

;;;

(deftest char-int.1
  (loop for x across +standard-chars+
	always (eqlt (char-int x) (char-code x)))
  t)

(deftest char-int.2
  (char-int.2.fn)
  t)

(deftest char-int.order.1
  (let ((i 0))
    (values
     (code-char (char-int (progn (incf i) #\a)))
     i))
  #\a 1)

(deftest char-int.error.1
  (classify-error (char-int))
  program-error)

(deftest char-int.error.2
  (classify-error (char-int #\a #\a))
  program-error)

;;;

(deftest char-name.1
  (char-name.1.fn)
  t)

(deftest char-name.2
  (string= (char-name #\Space) "Space")
  t)

(deftest char-name.3
  (string= (char-name #\Newline) "Newline")
  t)

;;; Check that the names of various semi-standard characters are
;;; appropriate.  This is complicated by the possibility that two different
;;; names may refer to the same character (as is allowed by the standard,
;;; for example in the case of Newline and Linefeed).
 
(deftest char-name.4
  (loop for s in '("Rubout" "Page" "Backspace" "Return" "Tab" "Linefeed")
	for c = (name-char s)
	unless (or (not c)
		   ;; If the char-name is not even string-equal,
		   ;; assume we're sharing the character with some other
		   ;; name, and assume it's ok
		   (not (string-equal (char-name c) s))
		   (string= (char-name c) s))
	;; Collect list of cases that failed
	collect (list s c (char-name c)))
  nil)

(deftest char-name.5
  (char-type-error-check #'char-name)
  t)

(deftest char-name.order.1
  (let ((i 0))
    (values
     (char-name (progn (incf i) #\Space))
     i))
  "Space" 1)

(deftest char-name.error.1
  (classify-error (char-name))
  program-error)

(deftest char-name.error.2
  (classify-error (char-name #\a #\a))
  program-error)

;;;

(deftest name-char.1
  (name-char.1.body)
  t)

(deftest name-char.2
  (loop for s in '("RubOut" "PAGe" "BacKspace" "RetUrn" "Tab" "LineFeed"
		   "SpaCE" "NewLine")
	always
	(let ((c1 (name-char (string-upcase s)))
	      (c2 (name-char (string-downcase s)))
	      (c3 (name-char (string-capitalize s)))
	      (c4 (name-char s)))
	  (and (eqlt c1 c2) (eqlt c2 c3) (eqlt c3 c4))))
  t)

(deftest name-char.order.1
  (let ((i 0))
    (values
     (name-char (progn (incf i) "Space"))
     i))
  #\Space 1)

(deftest name-char.error.1
  (classify-error (name-char))
  program-error)

(deftest name-char.error.2
  (classify-error (name-char "space" "space"))
  program-error)
