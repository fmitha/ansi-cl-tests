;-*- Mode:     Lisp -*-
;;;; Author:   Paul Dietz
;;;; Created:  Sun Oct  6 21:49:33 2002
;;;; Contains: Names of standard CL symbols

(in-package :cl-test)

;;;
;;; These are the names of the 978 symbols that can and must be external to
;;; the COMMON-LISP package.
;;;

(defparameter *cl-symbol-names*
(mapcar #'string
'(
#:&allow-other-keys
#:&aux
#:&body
#:&environment
#:&key
#:&optional
#:&rest
#:&whole
#:*
#:**
#:***
#:*break-on-signals*
#:*compile-file-pathname*
#:*compile-file-truename*
#:*compile-print*
#:*compile-verbose*
#:*debug-io*
#:*debugger-hook*
#:*default-pathname-defaults*
#:*error-output*
#:*features*
#:*gensym-counter*
#:*load-pathname*
#:*load-print*
#:*load-truename*
#:*load-verbose*
#:*macroexpand-hook*
#:*modules*
#:*package*
#:*print-array*
#:*print-base*
#:*print-case*
#:*print-circle*
#:*print-escape*
#:*print-gensym*
#:*print-length*
#:*print-level*
#:*print-lines*
#:*print-miser-width*
#:*print-pprint-dispatch*
#:*print-pretty*
#:*print-radix*
#:*print-readably*
#:*print-right-margin*
#:*query-io*
#:*random-state*
#:*read-base*
#:*read-default-float-format*
#:*read-eval*
#:*read-suppress*
#:*readtable*
#:*standard-input*
#:*standard-output*
#:*terminal-io*
#:*trace-output*
#:+
#:++
#:+++
#:-
#:/
#://
#:///
#:/=
#:1+
#:1-
#:<
#:<=
#:=
#:>
#:>=
#:abort
#:abs
#:acons
#:acos
#:acosh
#:add-method
#:adjoin
#:adjust-array
#:adjustable-array-p
#:allocate-instance
#:alpha-char-p
#:alphanumericp
#:and
#:append
#:apply
#:apropos
#:apropos-list
#:aref
#:arithmetic-error
#:arithmetic-error-operands
#:arithmetic-error-operation
#:array
#:array-dimension
#:array-dimension-limit
#:array-dimensions
#:array-displacement
#:array-element-type
#:array-has-fill-pointer-p
#:array-in-bounds-p
#:array-rank
#:array-rank-limit
#:array-row-major-index
#:array-total-size
#:array-total-size-limit
#:arrayp
#:ash
#:asin
#:asinh
#:assert
#:assoc
#:assoc-if
#:assoc-if-not
#:atan
#:atanh
#:atom
#:base-char
#:base-string
#:bignum
#:bit
#:bit-and
#:bit-andc1
#:bit-andc2
#:bit-eqv
#:bit-ior
#:bit-nand
#:bit-nor
#:bit-not
#:bit-orc1
#:bit-orc2
#:bit-vector
#:bit-vector-p
#:bit-xor
#:block
#:boole
#:boole-1
#:boole-2
#:boole-and
#:boole-andc1
#:boole-andc2
#:boole-c1
#:boole-c2
#:boole-clr
#:boole-eqv
#:boole-ior
#:boole-nand
#:boole-nor
#:boole-orc1
#:boole-orc2
#:boole-set
#:boole-xor
#:boolean
#:both-case-p
#:boundp
#:break
#:broadcast-stream
#:broadcast-stream-streams
#:built-in-class
#:butlast
#:byte
#:byte-position
#:byte-size
#:caaaar
#:caaadr
#:caaar
#:caadar
#:caaddr
#:caadr
#:caar
#:cadaar
#:cadadr
#:cadar
#:caddar
#:cadddr
#:caddr
#:cadr
#:call-arguments-limit
#:call-method
#:call-next-method
#:car
#:case
#:catch
#:ccase
#:cdaaar
#:cdaadr
#:cdaar
#:cdadar
#:cdaddr
#:cdadr
#:cdar
#:cddaar
#:cddadr
#:cddar
#:cdddar
#:cddddr
#:cdddr
#:cddr
#:cdr
#:ceiling
#:cell-error
#:cell-error-name
#:cerror
#:change-class
#:char
#:char-code
#:char-code-limit
#:char-downcase
#:char-equal
#:char-greaterp
#:char-int
#:char-lessp
#:char-name
#:char-not-equal
#:char-not-greaterp
#:char-not-lessp
#:char-upcase
#:char/=
#:char<
#:char<=
#:char=
#:char>
#:char>=
#:character
#:characterp
#:check-type
#:cis
#:class
#:class-name
#:class-of
#:clear-input
#:clear-output
#:close
#:clrhash
#:code-char
#:coerce
#:compilation-speed
#:compile
#:compile-file
#:compile-file-pathname
#:compiled-function
#:compiled-function-p
#:compiler-macro
#:compiler-macro-function
#:complement
#:complex
#:complexp
#:compute-applicable-methods
#:compute-restarts
#:concatenate
#:concatenated-stream
#:concatenated-stream-streams
#:cond
#:condition
#:conjugate
#:cons
#:consp
#:constantly
#:constantp
#:continue
#:control-error
#:copy-alist
#:copy-list
#:copy-pprint-dispatch
#:copy-readtable
#:copy-seq
#:copy-structure
#:copy-symbol
#:copy-tree
#:cos
#:cosh
#:count
#:count-if
#:count-if-not
#:ctypecase
#:debug
#:decf
#:declaim
#:declaration
#:declare
#:decode-float
#:decode-universal-time
#:defclass
#:defconstant
#:defgeneric
#:define-compiler-macro
#:define-condition
#:define-method-combination
#:define-modify-macro
#:define-setf-expander
#:define-symbol-macro
#:defmacro
#:defmethod
#:defpackage
#:defparameter
#:defsetf
#:defstruct
#:deftype
#:defun
#:defvar
#:delete
#:delete-duplicates
#:delete-file
#:delete-if
#:delete-if-not
#:delete-package
#:denominator
#:deposit-field
#:describe
#:describe-object
#:destructuring-bind
#:digit-char
#:digit-char-p
#:directory
#:directory-namestring
#:disassemble
#:division-by-zero
#:do
#:do*
#:do-all-symbols
#:do-external-symbols
#:do-symbols
#:documentation
#:dolist
#:dotimes
#:double-float
#:double-float-epsilon
#:double-float-negative-epsilon
#:dpb
#:dribble
#:dynamic-extent
#:ecase
#:echo-stream
#:echo-stream-input-stream
#:echo-stream-output-stream
#:ed
#:eighth
#:elt
#:encode-universal-time
#:end-of-file
#:endp
#:enough-namestring
#:ensure-directories-exist
#:ensure-generic-function
#:eq
#:eql
#:equal
#:equalp
#:error
#:etypecase
#:eval
#:eval-when
#:evenp
#:every
#:exp
#:export
#:expt
#:extended-char
#:fboundp
#:fceiling
#:fdefinition
#:ffloor
#:fifth
#:file-author
#:file-error
#:file-error-pathname
#:file-length
#:file-namestring
#:file-position
#:file-stream
#:file-string-length
#:file-write-date
#:fill
#:fill-pointer
#:find
#:find-all-symbols
#:find-class
#:find-if
#:find-if-not
#:find-method
#:find-package
#:find-restart
#:find-symbol
#:finish-output
#:first
#:fixnum
#:flet
#:float
#:float-digits
#:float-precision
#:float-radix
#:float-sign
#:floating-point-inexact
#:floating-point-invalid-operation
#:floating-point-overflow
#:floating-point-underflow
#:floatp
#:floor
#:fmakunbound
#:force-output
#:format
#:formatter
#:fourth
#:fresh-line
#:fround
#:ftruncate
#:ftype
#:funcall
#:function
#:function-keywords
#:function-lambda-expression
#:functionp
#:gcd
#:generic-function
#:gensym
#:gentemp
#:get
#:get-decoded-time
#:get-dispatch-macro-character
#:get-internal-real-time
#:get-internal-run-time
#:get-macro-character
#:get-output-stream-string
#:get-properties
#:get-setf-expansion
#:get-universal-time
#:getf
#:gethash
#:go
#:graphic-char-p
#:handler-bind
#:handler-case
#:hash-table
#:hash-table-count
#:hash-table-p
#:hash-table-rehash-size
#:hash-table-rehash-threshold
#:hash-table-size
#:hash-table-test
#:host-namestring
#:identity
#:if
#:ignorable
#:ignore
#:ignore-errors
#:imagpart
#:import
#:in-package
#:incf
#:initialize-instance
#:inline
#:input-stream-p
#:inspect
#:integer
#:integer-decode-float
#:integer-length
#:integerp
#:interactive-stream-p
#:intern
#:internal-time-units-per-second
#:intersection
#:invalid-method-error
#:invoke-debugger
#:invoke-restart
#:invoke-restart-interactively
#:isqrt
#:keyword
#:keywordp
#:labels
#:lambda
#:lambda-list-keywords
#:lambda-parameters-limit
#:last
#:lcm
#:ldb
#:ldb-test
#:ldiff
#:least-negative-double-float
#:least-negative-long-float
#:least-negative-normalized-double-float
#:least-negative-normalized-long-float
#:least-negative-normalized-short-float
#:least-negative-normalized-single-float
#:least-negative-short-float
#:least-negative-single-float
#:least-positive-double-float
#:least-positive-long-float
#:least-positive-normalized-double-float
#:least-positive-normalized-long-float
#:least-positive-normalized-short-float
#:least-positive-normalized-single-float
#:least-positive-short-float
#:least-positive-single-float
#:length
#:let
#:let*
#:lisp-implementation-type
#:lisp-implementation-version
#:list
#:list*
#:list-all-packages
#:list-length
#:listen
#:listp
#:load
#:load-logical-pathname-translations
#:load-time-value
#:locally
#:log
#:logand
#:logandc1
#:logandc2
#:logbitp
#:logcount
#:logeqv
#:logical-pathname
#:logical-pathname-translations
#:logior
#:lognand
#:lognor
#:lognot
#:logorc1
#:logorc2
#:logtest
#:logxor
#:long-float
#:long-float-epsilon
#:long-float-negative-epsilon
#:long-site-name
#:loop
#:loop-finish
#:lower-case-p
#:machine-instance
#:machine-type
#:machine-version
#:macro-function
#:macroexpand
#:macroexpand-1
#:macrolet
#:make-array
#:make-broadcast-stream
#:make-concatenated-stream
#:make-condition
#:make-dispatch-macro-character
#:make-echo-stream
#:make-hash-table
#:make-instance
#:make-instances-obsolete
#:make-list
#:make-load-form
#:make-load-form-saving-slots
#:make-method
#:make-package
#:make-pathname
#:make-random-state
#:make-sequence
#:make-string
#:make-string-input-stream
#:make-string-output-stream
#:make-symbol
#:make-synonym-stream
#:make-two-way-stream
#:makunbound
#:map
#:map-into
#:mapc
#:mapcan
#:mapcar
#:mapcon
#:maphash
#:mapl
#:maplist
#:mask-field
#:max
#:member
#:member-if
#:member-if-not
#:merge
#:merge-pathnames
#:method
#:method-combination
#:method-combination-error
#:method-qualifiers
#:min
#:minusp
#:mismatch
#:mod
#:most-negative-double-float
#:most-negative-fixnum
#:most-negative-long-float
#:most-negative-short-float
#:most-negative-single-float
#:most-positive-double-float
#:most-positive-fixnum
#:most-positive-long-float
#:most-positive-short-float
#:most-positive-single-float
#:muffle-warning
#:multiple-value-bind
#:multiple-value-call
#:multiple-value-list
#:multiple-value-prog1
#:multiple-value-setq
#:multiple-values-limit
#:name-char
#:namestring
#:nbutlast
#:nconc
#:next-method-p
#:nil
#:nintersection
#:ninth
#:no-applicable-method
#:no-next-method
#:not
#:notany
#:notevery
#:notinline
#:nreconc
#:nreverse
#:nset-difference
#:nset-exclusive-or
#:nstring-capitalize
#:nstring-downcase
#:nstring-upcase
#:nsublis
#:nsubst
#:nsubst-if
#:nsubst-if-not
#:nsubstitute
#:nsubstitute-if
#:nsubstitute-if-not
#:nth
#:nth-value
#:nthcdr
#:null
#:number
#:numberp
#:numerator
#:nunion
#:oddp
#:open
#:open-stream-p
#:optimize
#:or
#:otherwise
#:output-stream-p
#:package
#:package-error
#:package-error-package
#:package-name
#:package-nicknames
#:package-shadowing-symbols
#:package-use-list
#:package-used-by-list
#:packagep
#:pairlis
#:parse-error
#:parse-integer
#:parse-namestring
#:pathname
#:pathname-device
#:pathname-directory
#:pathname-host
#:pathname-match-p
#:pathname-name
#:pathname-type
#:pathname-version
#:pathnamep
#:peek-char
#:phase
#:pi
#:plusp
#:pop
#:position
#:position-if
#:position-if-not
#:pprint
#:pprint-dispatch
#:pprint-exit-if-list-exhausted
#:pprint-fill
#:pprint-indent
#:pprint-linear
#:pprint-logical-block
#:pprint-newline
#:pprint-pop
#:pprint-tab
#:pprint-tabular
#:prin1
#:prin1-to-string
#:princ
#:princ-to-string
#:print
#:print-not-readable
#:print-not-readable-object
#:print-object
#:print-unreadable-object
#:probe-file
#:proclaim
#:prog
#:prog*
#:prog1
#:prog2
#:progn
#:program-error
#:progv
#:provide
#:psetf
#:psetq
#:push
#:pushnew
#:quote
#:random
#:random-state
#:random-state-p
#:rassoc
#:rassoc-if
#:rassoc-if-not
#:ratio
#:rational
#:rationalize
#:rationalp
#:read
#:read-byte
#:read-char
#:read-char-no-hang
#:read-delimited-list
#:read-from-string
#:read-line
#:read-preserving-whitespace
#:read-sequence
#:reader-error
#:readtable
#:readtable-case
#:readtablep
#:real
#:realp
#:realpart
#:reduce
#:reinitialize-instance
#:rem
#:remf
#:remhash
#:remove
#:remove-duplicates
#:remove-if
#:remove-if-not
#:remove-method
#:remprop
#:rename-file
#:rename-package
#:replace
#:require
#:rest
#:restart
#:restart-bind
#:restart-case
#:restart-name
#:return
#:return-from
#:revappend
#:reverse
#:room
#:rotatef
#:round
#:row-major-aref
#:rplaca
#:rplacd
#:safety
#:satisfies
#:sbit
#:scale-float
#:schar
#:search
#:second
#:sequence
#:serious-condition
#:set
#:set-difference
#:set-dispatch-macro-character
#:set-exclusive-or
#:set-macro-character
#:set-pprint-dispatch
#:set-syntax-from-char
#:setf
#:setq
#:seventh
#:shadow
#:shadowing-import
#:shared-initialize
#:shiftf
#:short-float
#:short-float-epsilon
#:short-float-negative-epsilon
#:short-site-name
#:signal
#:signed-byte
#:signum
#:simple-array
#:simple-base-string
#:simple-bit-vector
#:simple-bit-vector-p
#:simple-condition
#:simple-condition-format-arguments
#:simple-condition-format-control
#:simple-error
#:simple-string
#:simple-string-p
#:simple-type-error
#:simple-vector
#:simple-vector-p
#:simple-warning
#:sin
#:single-float
#:single-float-epsilon
#:single-float-negative-epsilon
#:sinh
#:sixth
#:sleep
#:slot-boundp
#:slot-exists-p
#:slot-makunbound
#:slot-missing
#:slot-unbound
#:slot-value
#:software-type
#:software-version
#:some
#:sort
#:space
#:special
#:special-operator-p
#:speed
#:sqrt
#:stable-sort
#:standard
#:standard-char
#:standard-char-p
#:standard-class
#:standard-generic-function
#:standard-method
#:standard-object
#:step
#:storage-condition
#:store-value
#:stream
#:stream-element-type
#:stream-error
#:stream-error-stream
#:stream-external-format
#:streamp
#:string
#:string-capitalize
#:string-downcase
#:string-equal
#:string-greaterp
#:string-left-trim
#:string-lessp
#:string-not-equal
#:string-not-greaterp
#:string-not-lessp
#:string-right-trim
#:string-stream
#:string-trim
#:string-upcase
#:string/=
#:string<
#:string<=
#:string=
#:string>
#:string>=
#:stringp
#:structure
#:structure-class
#:structure-object
#:style-warning
#:sublis
#:subseq
#:subsetp
#:subst
#:subst-if
#:subst-if-not
#:substitute
#:substitute-if
#:substitute-if-not
#:subtypep
#:svref
#:sxhash
#:symbol
#:symbol-function
#:symbol-macrolet
#:symbol-name
#:symbol-package
#:symbol-plist
#:symbol-value
#:symbolp
#:synonym-stream
#:synonym-stream-symbol
#:t
#:tagbody
#:tailp
#:tan
#:tanh
#:tenth
#:terpri
#:the
#:third
#:throw
#:time
#:trace
#:translate-logical-pathname
#:translate-pathname
#:tree-equal
#:truename
#:truncate
#:two-way-stream
#:two-way-stream-input-stream
#:two-way-stream-output-stream
#:type
#:type-error
#:type-error-datum
#:type-error-expected-type
#:type-of
#:typecase
#:typep
#:unbound-slot
#:unbound-slot-instance
#:unbound-variable
#:undefined-function
#:unexport
#:unintern
#:union
#:unless
#:unread-char
#:unsigned-byte
#:untrace
#:unuse-package
#:unwind-protect
#:update-instance-for-different-class
#:update-instance-for-redefined-class
#:upgraded-array-element-type
#:upgraded-complex-part-type
#:upper-case-p
#:use-package
#:use-value
#:user-homedir-pathname
#:values
#:values-list
#:variable
#:vector
#:vector-pop
#:vector-push
#:vector-push-extend
#:vectorp
#:warn
#:warning
#:when
#:wild-pathname-p
#:with-accessors
#:with-compilation-unit
#:with-condition-restarts
#:with-hash-table-iterator
#:with-input-from-string
#:with-open-file
#:with-open-stream
#:with-output-to-string
#:with-package-iterator
#:with-simple-restart
#:with-slots
#:with-standard-io-syntax
#:write
#:write-byte
#:write-char
#:write-line
#:write-sequence
#:write-string
#:write-to-string
#:y-or-n-p
#:yes-or-no-p
#:zerop)))

(defparameter *cl-symbols*
  (let ((pkg (find-package :common-lisp)))
    (#-clisp progn
     #+clisp ext:without-package-lock  #+clisp ("COMMON-LISP")
     (mapcar #'(lambda (str) (intern str pkg))
	     *cl-symbol-names*))))

(defparameter *cl-symbols-vector*
  (make-array (length *cl-symbols*) :initial-contents *cl-symbols*))

;;; Symbols classified by their kind in the spec
(defparameter *cl-function-symbols*
  '(
    *
    +
    -
    /
    /=
    1+
    1-
    <
    <=
    =
    >
    >=
    abort
    abs
    acons
    acos
    acosh
    adjoin
    adjust-array
    adjustable-array-p
    alpha-char-p
    alphanumericp
    append
    apply
    apropos
    apropos-list
    arithmetic-error-operands
    arithmetic-error-operation
    array-dimension
    array-dimensions
    array-displacement
    array-element-type
    array-has-fill-pointer-p
    array-in-bounds-p
    array-rank
    array-row-major-index
    array-total-size
    arrayp
    ash
    asin
    asinh
    assoc-if-not
    assoc
    assoc-if
    atan
    atanh
    atom
    bit-and
    bit-andc1
    bit-andc2
    bit-eqv
    bit-ior
    bit-nand
    bit-nor
    bit-not
    bit-orc1
    bit-orc2
    bit-vector-p
    bit-xor
    boole
    both-case-p
    boundp
    break
    broadcast-stream-streams
    butlast
    byte
    byte-position
    byte-size
    ceiling
    cell-error-name
    cerror
    char-code
    char-downcase
    char-equal
    char-greaterp
    char-int
    char-lessp
    char-name
    char-not-equal
    char-not-greaterp
    char-not-lessp
    char-upcase
    char/=
    char<
    char<=
    char=
    char>
    char>=
    character
    characterp
    cis
    class-of
    clear-input
    clear-output
    close
    clrhash
    code-char
    coerce
    compile
    compile-file
    compile-file-pathname
    compiled-function-p
    complement
    complex
    complexp
    compute-restarts
    concatenate
    concatenated-stream-streams
    conjugate
    cons
    consp
    constantly
    constantp
    continue
    copy-alist
    copy-list
    copy-pprint-dispatch
    copy-readtable
    copy-seq
    copy-structure
    copy-symbol
    copy-tree
    cos
    cosh
    count
    count-if
    count-if-not
    decode-float
    decode-universal-time
    delete
    delete-duplicates
    delete-file
    delete-if
    delete-if-not
    delete-package
    denominator
    deposit-field
    describe
    digit-char
    digit-char-p
    directory
    directory-namestring
    disassemble
    dpb
    dribble
    echo-stream-input-stream
    echo-stream-output-stream
    ;;; The function ED is commented out because an implementation
    ;;; needn't provide this function.
    ;; ed
    encode-universal-time
    endp
    enough-namestring
    ensure-directories-exist
    ensure-generic-function
    eq
    eql
    equal
    equalp
    error
    eval
    evenp
    every
    exp
    export
    expt
    fboundp
    fceiling
    ffloor
    file-author
    file-error-pathname
    file-length
    file-namestring
    file-position
    file-string-length
    file-write-date
    fill
    find
    find-all-symbols
    find-if
    find-if-not
    find-package
    find-restart
    find-symbol
    finish-output
    float
    float-digits
    float-precision
    float-radix
    float-sign
    floatp
    floor
    fmakunbound
    force-output
    format
    fresh-line
    fround
    funcall
    function-lambda-expression
    functionp
    gcd
    gensym
    gentemp
    get-decoded-time
    get-dispatch-macro-character
    get-internal-real-time
    get-internal-run-time
    get-macro-character
    get-output-stream-string
    get-properties
    get-setf-expansion
    get-universal-time
    graphic-char-p
    hash-table-count
    hash-table-p
    hash-table-rehash-size
    hash-table-rehash-threshold
    hash-table-size
    hash-table-test
    host-namestring
    identity
    imagpart
    import
    input-stream-p
    inspect
    integer-decode-float
    integer-length
    integerp
    interactive-stream-p
    intern
    intersection
    invalid-method-error
    invoke-debugger
    invoke-restart
    invoke-restart-interactively
    isqrt
    keywordp
    last
    lcm
    ldb-test
    ldiff
    length
    lisp-implementation-type
    lisp-implementation-version
    list
    list*
    list-all-packages
    list-length
    listen
    listp
    load
    load-logical-pathname-translations
    log
    logand
    logandc1
    logandc2
    logbitp
    logcount
    logeqv
    logical-pathname
    logior
    lognand
    lognor
    lognot
    logorc1
    logorc2
    logtest
    logxor
    long-site-name
    lower-case-p
    machine-instance
    machine-type
    machine-version
    macroexpand
    macroexpand-1
    make-array
    make-broadcast-stream
    make-concatenated-stream
    make-condition
    make-dispatch-macro-character
    make-echo-stream
    make-hash-table
    make-list
    make-load-form-saving-slots
    make-package
    make-pathname
    make-random-state
    make-sequence
    make-string
    make-string-input-stream
    make-string-output-stream
    make-symbol
    make-synonym-stream
    make-two-way-stream
    makunbound
    map
    map-into
    mapc
    mapcan
    mapcar
    mapcon
    maphash
    mapl
    maplist
    max
    member
    member-if
    member-if-not
    merge
    merge-pathnames
    method-combination-error
    min
    minusp
    mismatch
    mod
    muffle-warning
    name-char
    namestring
    nbutlast
    nconc
    nintersection
    not
    notany
    notevery
    nreconc
    nreverse
    nset-difference
    nset-exclusive-or
    nstring-capitalize
    nstring-downcase
    nstring-upcase
    nsublis
    nsubst
    nsubst-if
    nsubst-if-not
    nsubstitute
    nsubstitute-if
    nsubstitute-if-not
    nthcdr
    null
    numberp
    numerator
    nunion
    oddp
    open
    open-stream-p
    output-stream-p
    package-error-package
    package-name
    package-nicknames
    package-shadowing-symbols
    package-use-list
    package-used-by-list
    packagep
    pairlis
    parse-integer
    parse-namestring
    pathname
    pathname-device
    pathname-directory
    pathname-host
    pathname-match-p
    pathname-name
    pathname-type
    pathname-version
    pathnamep
    peek-char
    phase
    plusp
    position
    position-if
    position-if-not
    pprint
    pprint-dispatch
    pprint-fill
    pprint-indent
    pprint-linear
    pprint-newline
    pprint-tab
    pprint-tabular
    prin1
    prin1-to-string
    princ
    princ-to-string
    print
    print-not-readable-object
    probe-file
    proclaim
    provide
    random
    random-state-p
    rassoc
    rassoc-if
    rassoc-if-not
    rational
    rationalize
    rationalp
    read
    read-byte
    read-char
    read-char-no-hang
    read-delimited-list
    read-from-string
    read-line
    read-preserving-whitespace
    read-sequence
    readtablep
    realp
    realpart
    reduce
    rem
    remhash
    remove
    remove-duplicates
    remove-if
    remove-if-not
    remprop
    rename-file
    rename-package
    replace
    require
    restart-name
    revappend
    reverse
    room
    round
    rplaca
    rplacd
    scale-float
    search
    set
    set-difference
    set-dispatch-macro-character
    set-exclusive-or
    set-macro-character
    set-pprint-dispatch
    set-syntax-from-char
    shadow
    shadowing-import
    short-site-name
    signal
    signum
    simple-bit-vector-p
    simple-condition-format-arguments
    simple-condition-format-control
    simple-string-p
    simple-vector-p
    sin
    sinh
    slot-exists-p
    sleep
    slot-boundp
    slot-makunbound
    slot-value
    software-type
    software-version
    some
    sort
    special-operator-p
    sqrt
    stable-sort
    standard-char-p
    store-value
    stream-element-type
    stream-error-stream
    stream-external-format
    streamp
    string
    string-capitalize
    string-downcase
    string-equal
    string-greaterp
    string-left-trim
    string-lessp
    string-not-equal
    string-not-greaterp
    string-not-lessp
    string-right-trim
    string-trim
    string-upcase
    string/=
    string<
    string<=
    string=
    string>
    string>=
    stringp
    sublis
    subsetp
    subst
    subst-if
    subst-if-not
    substitute
    substitute-if
    substitute-if-not
    subtypep
    sxhash
    symbol-name
    symbol-package
    symbolp
    synonym-stream-symbol
    tailp
    tan
    tanh
    terpri
    translate-logical-pathname
    translate-pathname
    tree-equal
    truename
    truncate ftruncate
    two-way-stream-input-stream
    two-way-stream-output-stream
    type-error-datum
    type-error-expected-type
    type-of
    typep
    unbound-slot-instance
    unexport
    unintern
    union
    unread-char
    unuse-package
    upgraded-array-element-type
    upgraded-complex-part-type
    upper-case-p
    use-package
    use-value
    user-homedir-pathname
    values-list
    vector
    vector-pop
    vector-push
    vector-push-extend
    vectorp
    warn
    wild-pathname-p
    write
    write-byte
    write-char
    write-line
    write-sequence
    write-string
    write-to-string
    y-or-n-p
    yes-or-no-p
    zerop
    ))

(defparameter *cl-variable-symbols*
  '(
    *
    **
    ***
    *break-on-signals*
    *compile-file-pathname*
    *compile-file-truename*
    *compile-print*
    *compile-verbose*
    *debug-io*
    *debugger-hook*
    *default-pathname-defaults*
    *error-output*
    *features*
    *gensym-counter*
    *load-pathname*
    *load-print*
    *load-truename*
    *load-verbose*
    *macroexpand-hook*
    *modules*
    *package*
    *print-array*
    *print-base*
    *print-case*
    *print-circle*
    *print-escape*
    *print-gensym*
    *print-length*
    *print-level*
    *print-lines*
    *print-miser-width*
    *print-pprint-dispatch*
    *print-pretty*
    *print-radix*
    *print-readably*
    *print-right-margin*
    *query-io*
    *random-state*
    *read-base*
    *read-default-float-format*
    *read-eval*
    *read-suppress*
    *readtable*
    *standard-input*
    *standard-output*
    *terminal-io*
    *trace-output*
    +
    ++
    +++
    /
    //
    ///
    -
    ))

(defparameter *cl-constant-symbols*
  '(
    array-dimension-limit
    array-rank-limit
    array-total-size-limit
    boole-1
    boole-2
    boole-and
    boole-andc1
    boole-andc2
    boole-c1
    boole-c2
    boole-clr
    boole-eqv
    boole-ior
    boole-nand
    boole-nor
    boole-orc1
    boole-orc2
    boole-set
    boole-xor
    call-arguments-limit
    char-code-limit
    double-float-epsilon
    double-float-negative-epsilon
    internal-time-units-per-second
    lambda-list-keywords
    lambda-parameters-limit
    least-negative-double-float
    least-negative-long-float
    least-negative-normalized-double-float
    least-negative-normalized-long-float
    least-negative-normalized-short-float
    least-negative-normalized-single-float
    least-negative-short-float
    least-negative-single-float
    least-positive-double-float
    least-positive-long-float
    least-positive-normalized-double-float
    least-positive-normalized-long-float
    least-positive-normalized-short-float
    least-positive-normalized-single-float
    least-positive-short-float
    least-positive-single-float
    long-float-epsilon
    long-float-negative-epsilon
    most-negative-double-float
    most-negative-fixnum
    most-negative-long-float
    most-negative-short-float
    most-negative-single-float
    most-positive-double-float
    most-positive-fixnum
    most-positive-long-float
    most-positive-short-float
    most-positive-single-float
    multiple-values-limit
    nil
    pi
    short-float-epsilon
    short-float-negative-epsilon
    single-float-epsilon
    single-float-negative-epsilon
    t
    ))

(defparameter *cl-macro-symbols*
  '(
    and
    assert
    case
    ccase
    ecase
    check-type
    cond
    declaim
    defclass
    defconstant
    defgeneric
    define-compiler-macro
    define-condition
    define-method-combination
    define-modify-macro
    define-setf-expander
    define-symbol-macro
    defmacro
    defmethod
    defpackage
    defparameter
    defvar
    defsetf
    defstruct
    deftype
    defun
    destructuring-bind
    do
    do*
    do-symbols
    do-external-symbols
    do-all-symbols
    dolist
    dotimes
    formatter
    cl:handler-bind
    cl:handler-case
    ignore-errors
    in-package
    incf
    decf
    lambda
    loop
    multiple-value-bind
    multiple-value-list
    multiple-value-setq
    nth-value
    or
    pop
    pprint-logical-block
    print-unreadable-object
    prog
    prog*
    prog1
    prog2
    psetq
    push
    pushnew
    remf
    restart-bind
    restart-case
    return
    rotatef
    setf
    psetf
    shiftf
    step
    time
    trace
    untrace
    typecase
    ctypecase
    etypecase
    when
    unless
    with-accessors
    with-compilation-unit
    with-condition-restarts
    with-hash-table-iterator
    with-input-from-string
    with-open-file
    with-open-stream
    with-output-to-string
    with-package-iterator
    with-simple-restart
    with-slots
    with-standard-io-syntax
    ))

(defparameter *cl-accessor-symbols*
  '(
    aref
    bit
    caaaar
    caaadr
    caaar
    caadar
    caaddr
    caadr
    caar
    cadaar
    cadadr
    cadar
    caddar
    cadddr
    caddr
    cadr
    car
    cdaaar
    cdaadr
    cdaar
    cdadar
    cdaddr
    cdadr
    cdar
    cddaar
    cddadr
    cddar
    cdddar
    cddddr
    cdddr
    cddr
    cdr
    char
    compiler-macro-function
    eighth
    elt
    fdefinition
    fifth
    fill-pointer
    find-class
    first
    fourth
    get
    getf
    gethash
    ldb
    logical-pathname-translations
    macro-function
    mask-field
    ninth
    nth
    readtable-case
    rest
    row-major-aref
    sbit
    schar
    second
    seventh
    sixth
    subseq
    svref
    symbol-function
    symbol-plist
    symbol-value
    tenth
    third
    values
    ))

(defparameter *cl-condition-type-symbols*
  '(
    arithmetic-error
    cell-error
    condition
    control-error
    division-by-zero
    end-of-file
    error
    file-error
    floating-point-inexact
    floating-point-invalid-operation
    floating-point-overflow
    floating-point-underflow
    package-error
    parse-error
    print-not-readable
    program-error
    reader-error
    serious-condition
    simple-condition
    simple-error
    simple-type-error
    simple-warning
    storage-condition
    stream-error
    style-warning
    type-error
    unbound-slot
    unbound-variable
    undefined-function
    warning
    ))

(defparameter *cl-class-symbols*
  '(standard-object structure-object))

(defparameter *cl-declaration-symbols*
  '(
    declaration
    dynamic-extent
    ftype
    ignore
    ignorable
    inline
    notinline
    optimize
    special
    type))

(defparameter *cl-local-function-symbols*
  '(call-next-method next-method-p))

(defparameter *cl-local-macro-symbols*
  '(
    call-method
    make-method
    loop-finish
    pprint-exit-if-list-exhausted
    pprint-pop
    ))

(defparameter *cl-special-operator-symbols*
  '(
    block
    catch
    eval-when
    flet
    function
    go
    if
    labels
    let
    let*
    load-time-value
    locally
    macrolet
    multiple-value-call
    multiple-value-prog1
    progn
    progv
    quote
    return-from
    setq
    symbol-macrolet
    tagbody
    the
    throw
    unwind-protect
))

(defparameter *cl-standard-generic-function-symbols*
  '(
    add-method
    allocate-instance
    change-class
    class-name
    compute-applicable-methods
    describe-object
    documentation
    find-method
    function-keywords
    initialize-instance
    make-instance
    make-instances-obsolete
    make-load-form
    method-qualifiers
    no-applicable-method
    no-next-method
    print-object
    reinitialize-instance
    remove-method
    shared-initialize
    slot-missing
    slot-unbound
    update-instance-for-different-class
    update-instance-for-redefined-class
    ))

(defparameter *cl-system-class-symbols*
  '(
    array
    bit-vector
    broadcast-stream
    built-in-class
    character
    class
    complex
    concatenated-stream
    cons
    echo-stream
    file-stream
    float
    function
    generic-function
    hash-table
    integer
    list
    logical-pathname
    method
    method-combination
    null
    number
    package
    pathname
    random-state
    ratio
    rational
    readtable
    real
    restart
    sequence
    standard-class
    standard-generic-function
    standard-method
    stream
    string
    string-stream
    structure-class
    symbol
    synonym-stream
    t
    two-way-stream
    vector
    ))

(defparameter *cl-type-symbols*
  '(
    atom
    base-char
    base-string
    bignum
    bit
    boolean
    compiled-function
    extended-char
    fixnum
    keyword
    nil
    short-float
    single-float
    double-float
    long-float
    signed-byte
    simple-array
    simple-base-string
    simple-bit-vector
    simple-string
    simple-vector
    standard-char
    unsigned-byte
    ))

(defparameter *cl-type-specifier-symbols*
  '(
    and
    eql
    member
    mod
    not
    or
    satisfies
    values
    ))

(defparameter *cl-restart-symbols*
  '(
    abort
    continue
    muffle-warning
    store-value
    use-value
    ))

;;; Symbols that are names of types that are also classes
;;; See figure 4-8 in section 4.3.7
(defparameter *cl-types-that-are-classes-symbols*
  '(
    arithmetic-error
    array
    bit-vector
    broadcast-stream
    built-in-class
    cell-error
    character
    class
    complex
    concatenated-stream
    condition
    cons
    control-error
    division-by-zero
    echo-stream
    end-of-file
    error
    file-error
    file-stream
    float
    floating-point-inexact
    floating-point-invalid-operation
    floating-point-overflow
    floating-point-underflow
    function
    generic-function
    hash-table
    integer
    list
    logical-pathname
    method
    method-combination
    null
    number
    package
    package-error
    parse-error
    pathname
    print-not-readable
    program-error
    random-state
    ratio
    rational
    reader-error
    readtable
    real
    restart
    sequence
    serious-condition
    simple-condition
    simple-error
    simple-type-error
    simple-warning
    standard-class
    standard-generic-function
    standard-method
    standard-object
    storage-condition
    stream
    stream-error
    string
    string-stream
    structure-class
    structure-object
    style-warning
    symbol
    synonym-stream
    t
    two-way-stream
    type-error
    unbound-slot
    unbound-variable
    undefined-function
    vector
    warning
    ))

(defparameter *cl-all-type-symbols*
  (reduce #'union
	  (list *cl-type-symbols* *cl-types-that-are-classes-symbols*
		*cl-system-class-symbols* *cl-class-symbols*
		*cl-condition-type-symbols*)))

(defparameter *cl-non-function-macro-special-operator-symbols*
  (set-difference
   *cl-symbols*
   (reduce #'union
	   (list *cl-function-symbols*
		 *cl-macro-symbols*
		 *cl-accessor-symbols*
		 *cl-local-function-symbols*
		 *cl-local-macro-symbols*
		 *cl-special-operator-symbols*
		 *cl-standard-generic-function-symbols*
		 '(declare ed)))))

(defparameter *cl-function-or-accessor-symbols*
  (append *cl-function-symbols* *cl-accessor-symbols*))

(defparameter *cl-non-variable-constant-symbols*
  (set-difference
   *cl-symbols*
   (union *cl-variable-symbols*
	  *cl-constant-symbols*)))
