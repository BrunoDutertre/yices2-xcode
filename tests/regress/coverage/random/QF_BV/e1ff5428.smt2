(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_BV)
(declare-fun v0 () (_ BitVec 12))
(declare-fun v1 () (_ BitVec 2))
(declare-fun v2 () (_ BitVec 1))
(assert (let ((e3(_ bv15594 15)))
(let ((e4 (! ((_ extract 3 0) e3) :named term4)))
(let ((e5 (! (bvmul e3 ((_ zero_extend 14) v2)) :named term5)))
(let ((e6 (! (bvsub ((_ zero_extend 2) v1) e4) :named term6)))
(let ((e7 (! (ite (bvult e5 ((_ sign_extend 13) v1)) (_ bv1 1) (_ bv0 1)) :named term7)))
(let ((e8 (! (concat v2 e7) :named term8)))
(let ((e9 (! (bvudiv ((_ zero_extend 11) e7) v0) :named term9)))
(let ((e10 (! (bvsge ((_ zero_extend 3) v0) e3) :named term10)))
(let ((e11 (! (bvuge ((_ zero_extend 11) e6) e5) :named term11)))
(let ((e12 (! (bvsge v1 e8) :named term12)))
(let ((e13 (! (bvsgt e3 ((_ sign_extend 13) v1)) :named term13)))
(let ((e14 (! (bvslt e5 ((_ zero_extend 11) e4)) :named term14)))
(let ((e15 (! (bvugt ((_ zero_extend 13) v1) e3) :named term15)))
(let ((e16 (! (bvult ((_ zero_extend 14) v2) e3) :named term16)))
(let ((e17 (! (bvuge ((_ sign_extend 10) e8) e9) :named term17)))
(let ((e18 (! (bvuge ((_ sign_extend 8) e4) v0) :named term18)))
(let ((e19 (! (bvule e6 ((_ sign_extend 2) v1)) :named term19)))
(let ((e20 (! (bvsge e9 ((_ zero_extend 8) e6)) :named term20)))
(let ((e21 (! (distinct e5 ((_ zero_extend 11) e6)) :named term21)))
(let ((e22 (! (bvugt ((_ zero_extend 14) e7) e3) :named term22)))
(let ((e23 (! (or e15 e16) :named term23)))
(let ((e24 (! (or e12 e13) :named term24)))
(let ((e25 (! (or e18 e17) :named term25)))
(let ((e26 (! (and e14 e20) :named term26)))
(let ((e27 (! (not e26) :named term27)))
(let ((e28 (! (=> e21 e23) :named term28)))
(let ((e29 (! (not e28) :named term29)))
(let ((e30 (! (or e25 e11) :named term30)))
(let ((e31 (! (xor e27 e30) :named term31)))
(let ((e32 (! (ite e24 e22 e29) :named term32)))
(let ((e33 (! (ite e32 e31 e31) :named term33)))
(let ((e34 (! (ite e10 e33 e19) :named term34)))
(let ((e35 (! (and e34 (not (= v0 (_ bv0 12)))) :named term35)))
e35
))))))))))))))))))))))))))))))))))

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
(get-value (term34))
(get-value (term35))
(get-info :all-statistics)
