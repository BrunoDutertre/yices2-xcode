(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_AUFBV)
(declare-fun v0 () (_ BitVec 4))
(declare-fun a1 () (Array  (_ BitVec 10)  (_ BitVec 9)))
(declare-fun a2 () (Array  (_ BitVec 16)  (_ BitVec 14)))
(assert (let ((e3(_ bv468 10)))
(let ((e4 (! (ite (bvule e3 ((_ zero_extend 6) v0)) (_ bv1 1) (_ bv0 1)) :named term4)))
(let ((e5 (! (select a2 ((_ zero_extend 6) e3)) :named term5)))
(let ((e6 (! (bvsub ((_ sign_extend 10) v0) e5) :named term6)))
(let ((e7 (! (bvxnor e4 e4) :named term7)))
(let ((e8 (! (bvurem ((_ zero_extend 6) v0) e3) :named term8)))
(let ((e9 (! (bvule e6 ((_ zero_extend 13) e4)) :named term9)))
(let ((e10 (! (= e8 ((_ zero_extend 6) v0)) :named term10)))
(let ((e11 (! (bvult ((_ sign_extend 10) v0) e6) :named term11)))
(let ((e12 (! (distinct e6 e6) :named term12)))
(let ((e13 (! (bvslt ((_ sign_extend 3) e4) v0) :named term13)))
(let ((e14 (! (bvult ((_ sign_extend 6) v0) e3) :named term14)))
(let ((e15 (! (bvule e3 ((_ sign_extend 6) v0)) :named term15)))
(let ((e16 (! (bvule e3 e3) :named term16)))
(let ((e17 (! (distinct ((_ zero_extend 6) v0) e8) :named term17)))
(let ((e18 (! (bvsgt e5 ((_ zero_extend 4) e8)) :named term18)))
(let ((e19 (! (bvule ((_ sign_extend 10) v0) e6) :named term19)))
(let ((e20 (! (distinct e6 ((_ sign_extend 13) e7)) :named term20)))
(let ((e21 (! (ite e18 e19 e10) :named term21)))
(let ((e22 (! (=> e12 e17) :named term22)))
(let ((e23 (! (=> e13 e15) :named term23)))
(let ((e24 (! (or e11 e20) :named term24)))
(let ((e25 (! (xor e23 e21) :named term25)))
(let ((e26 (! (xor e25 e25) :named term26)))
(let ((e27 (! (= e14 e22) :named term27)))
(let ((e28 (! (= e26 e16) :named term28)))
(let ((e29 (! (and e24 e9) :named term29)))
(let ((e30 (! (and e28 e27) :named term30)))
(let ((e31 (! (and e30 e30) :named term31)))
(let ((e32 (! (xor e31 e29) :named term32)))
(let ((e33 (! (and e32 (not (= e3 (_ bv0 10)))) :named term33)))
e33
))))))))))))))))))))))))))))))))

(check-sat)
(set-option :regular-output-channel "/dev/null")
(get-model)
(get-value (term4))
(get-value (term5))
(get-value (term6))
(get-value (term7))
(get-value (term8))
(get-value (term9))
(get-value (term10))
(get-value (term11))
(get-value (term12))
(get-value (term13))
(get-value (term14))
(get-value (term15))
(get-value (term16))
(get-value (term17))
(get-value (term18))
(get-value (term19))
(get-value (term20))
(get-value (term21))
(get-value (term22))
(get-value (term23))
(get-value (term24))
(get-value (term25))
(get-value (term26))
(get-value (term27))
(get-value (term28))
(get-value (term29))
(get-value (term30))
(get-value (term31))
(get-value (term32))
(get-value (term33))
(get-info :all-statistics)
