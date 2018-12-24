(set-logic QF_UFLIA)
(set-info :source |
  These benchmarks were obtained from the KIND tool during verification of
  Lustre programs.  See also the lustre family of benchmarks in QF_LIA.
|)
(set-info :smt-lib-version 2.0)
(set-info :category "industrial")
(declare-fun _base () Int)
(declare-fun _n () Int)
(assert (<= 0 _n))
(declare-fun ___z2z___ (Int) Int)
(declare-fun ___z3z___ (Int) Bool)
(declare-fun ___z4z___ (Int) Bool)
(declare-fun ___z5z___ (Int) Bool)
(declare-fun ___z6z___ (Int) Bool)
(declare-fun ___z7z___ (Int) Bool)
(declare-fun ___z8z___ (Int) Int)
(declare-fun ___z9z___ (Int) Int)
(declare-fun ___z10z___ (Int) Int)
(declare-fun ___z11z___ (Int) Int)
(declare-fun ___z12z___ (Int) Int)
(declare-fun ___z13z___ (Int) Bool)
(declare-fun ___z14z___ (Int) Bool)
(declare-fun ___z15z___ (Int) Bool)
(declare-fun ___z16z___ (Int) Bool)
(declare-fun ___z17z___ (Int) Bool)
(declare-fun ___z18z___ (Int) Bool)
(declare-fun ___z19z___ (Int) Bool)
(push 1)
(assert (let ((?v_0 (___z10z___ (- 1)))) (= (ite (= _base 0) 0 (ite (___z3z___ 0) (ite (___z15z___ 0) (+ 1 (+ ?v_0 (* (- 1) (___z9z___ (- 1))))) ?v_0) (ite (___z5z___ 0) (ite (___z17z___ 0) 0 ?v_0) (ite (___z6z___ 0) (ite (___z18z___ 0) 0 ?v_0) ?v_0)))) (___z10z___ 0))))
(assert (let ((?v_0 (___z11z___ (- 1)))) (let ((?v_1 (+ (- 1) (+ (___z12z___ (- 1)) (+ (___z10z___ (- 1)) (+ (___z9z___ (- 1)) (+ ?v_0 (___z8z___ (- 1))))))))) (= (ite (= _base 0) (___z2z___ 0) (ite (___z3z___ 0) (ite (___z15z___ 0) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ 0) (ite (___z17z___ 0) ?v_1 ?v_0) (ite (___z6z___ 0) (ite (___z18z___ 0) ?v_1 ?v_0) ?v_0)))) (___z11z___ 0)))))
(assert (let ((?v_0 (___z12z___ (- 1)))) (= (ite (= _base 0) 0 (ite (___z3z___ 0) (ite (___z15z___ 0) (+ ?v_0 (___z8z___ (- 1))) ?v_0) (ite (___z5z___ 0) (ite (___z17z___ 0) 0 ?v_0) (ite (___z6z___ 0) (ite (___z18z___ 0) 0 ?v_0) ?v_0)))) (___z12z___ 0))))
(assert (let ((?v_0 (= _base 0))) (= (and (not ?v_0) (or ?v_0 (<= 2 (___z9z___ 0)))) (___z13z___ 0))))
(assert (let ((?v_0 (= _base 0)) (?v_1 (___z19z___ 0))) (= (and (or (not ?v_0) ?v_1) (or ?v_0 (and ?v_1 (___z14z___ (- 1))))) (___z14z___ 0))))
(assert (= (___z15z___ 0) (<= 1 (___z11z___ (- 1)))))
(assert (= (<= 1 (___z9z___ (- 1))) (___z16z___ 0)))
(assert (= (or (not (___z14z___ 0)) (and (or (= _base 0) (= (+ (___z10z___ (- 1)) (+ (___z9z___ (- 1)) (+ (* (- 1) (___z10z___ 0)) (+ (___z11z___ (- 1)) (+ (___z12z___ (- 1)) (+ (___z8z___ (- 1)) (+ (* (- 1) (___z11z___ 0)) (+ (* (- 1) (___z12z___ 0)) (+ (* (- 1) (___z9z___ 0)) (* (- 1) (___z8z___ 0))))))))))) 0)) (not (___z13z___ 0)))) (___z7z___ 0)))
(assert (= (___z17z___ 0) (<= 1 (+ (___z10z___ (- 1)) (* (- 1) (___z12z___ (- 1)))))))
(assert (let ((?v_0 (___z8z___ (- 1)))) (= (___z8z___ 0) (ite (= _base 0) 0 (ite (___z3z___ 0) (ite (___z15z___ 0) 0 ?v_0) (ite (___z4z___ 0) (ite (___z16z___ 0) (+ 1 ?v_0) ?v_0) (ite (___z5z___ 0) (ite (___z17z___ 0) 0 ?v_0) (ite (___z6z___ 0) (ite (___z18z___ 0) 0 ?v_0) ?v_0))))))))
(assert (= (___z18z___ 0) (<= 1 (___z11z___ (- 1)))))
(assert (let ((?v_0 (___z9z___ (- 1)))) (= (___z9z___ 0) (ite (= _base 0) 0 (ite (___z3z___ 0) (ite (___z15z___ 0) 0 ?v_0) (ite (___z4z___ 0) (ite (___z16z___ 0) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ 0) (ite (___z17z___ 0) 1 ?v_0) (ite (___z6z___ 0) (ite (___z18z___ 0) 1 ?v_0) ?v_0))))))))
(assert (let ((?v_0 (___z6z___ 0)) (?v_1 (___z5z___ 0)) (?v_3 (___z3z___ 0)) (?v_2 (___z4z___ 0))) (= (___z19z___ 0) (not (or (and ?v_0 ?v_1) (or (and ?v_0 ?v_2) (or (and ?v_1 ?v_2) (or (and ?v_0 ?v_3) (or (and ?v_1 ?v_3) (and ?v_3 ?v_2))))))))))
(assert (let ((?v_0 (___z10z___ (- 2)))) (= (___z10z___ (- 1)) (ite (= _base (- 1)) 0 (ite (___z3z___ (- 1)) (ite (___z15z___ (- 1)) (+ 1 (+ ?v_0 (* (- 1) (___z9z___ (- 2))))) ?v_0) (ite (___z5z___ (- 1)) (ite (___z17z___ (- 1)) 0 ?v_0) (ite (___z6z___ (- 1)) (ite (___z18z___ (- 1)) 0 ?v_0) ?v_0)))))))
(assert (let ((?v_0 (___z11z___ (- 2)))) (let ((?v_1 (+ (- 1) (+ (___z12z___ (- 2)) (+ (___z10z___ (- 2)) (+ (___z9z___ (- 2)) (+ ?v_0 (___z8z___ (- 2))))))))) (= (___z11z___ (- 1)) (ite (= _base (- 1)) (___z2z___ (- 1)) (ite (___z3z___ (- 1)) (ite (___z15z___ (- 1)) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ (- 1)) (ite (___z17z___ (- 1)) ?v_1 ?v_0) (ite (___z6z___ (- 1)) (ite (___z18z___ (- 1)) ?v_1 ?v_0) ?v_0))))))))
(assert (let ((?v_0 (___z12z___ (- 2)))) (= (___z12z___ (- 1)) (ite (= _base (- 1)) 0 (ite (___z3z___ (- 1)) (ite (___z15z___ (- 1)) (+ ?v_0 (___z8z___ (- 2))) ?v_0) (ite (___z5z___ (- 1)) (ite (___z17z___ (- 1)) 0 ?v_0) (ite (___z6z___ (- 1)) (ite (___z18z___ (- 1)) 0 ?v_0) ?v_0)))))))
(assert (let ((?v_0 (= _base (- 1)))) (= (and (not ?v_0) (or ?v_0 (<= 2 (___z9z___ (- 1))))) (___z13z___ (- 1)))))
(assert (let ((?v_0 (= _base (- 1))) (?v_1 (___z19z___ (- 1)))) (= (___z14z___ (- 1)) (and (or (not ?v_0) ?v_1) (or ?v_0 (and ?v_1 (___z14z___ (- 2))))))))
(assert (= (___z15z___ (- 1)) (<= 1 (___z11z___ (- 2)))))
(assert (= (<= 1 (___z9z___ (- 2))) (___z16z___ (- 1))))
(assert (= (or (not (___z14z___ (- 1))) (and (or (= _base (- 1)) (= (+ (___z10z___ (- 1)) (+ (___z9z___ (- 1)) (+ (___z11z___ (- 1)) (+ (___z12z___ (- 1)) (+ (___z8z___ (- 1)) (+ (* (- 1) (___z10z___ (- 2))) (+ (* (- 1) (___z9z___ (- 2))) (+ (* (- 1) (___z11z___ (- 2))) (+ (* (- 1) (___z12z___ (- 2))) (* (- 1) (___z8z___ (- 2)))))))))))) 0)) (not (___z13z___ (- 1))))) (___z7z___ (- 1))))
(assert (= (___z17z___ (- 1)) (<= 1 (+ (___z10z___ (- 2)) (* (- 1) (___z12z___ (- 2)))))))
(assert (let ((?v_0 (___z8z___ (- 2)))) (= (___z8z___ (- 1)) (ite (= _base (- 1)) 0 (ite (___z3z___ (- 1)) (ite (___z15z___ (- 1)) 0 ?v_0) (ite (___z4z___ (- 1)) (ite (___z16z___ (- 1)) (+ 1 ?v_0) ?v_0) (ite (___z5z___ (- 1)) (ite (___z17z___ (- 1)) 0 ?v_0) (ite (___z6z___ (- 1)) (ite (___z18z___ (- 1)) 0 ?v_0) ?v_0))))))))
(assert (= (___z18z___ (- 1)) (<= 1 (___z11z___ (- 2)))))
(assert (let ((?v_0 (___z9z___ (- 2)))) (= (___z9z___ (- 1)) (ite (= _base (- 1)) 0 (ite (___z3z___ (- 1)) (ite (___z15z___ (- 1)) 0 ?v_0) (ite (___z4z___ (- 1)) (ite (___z16z___ (- 1)) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ (- 1)) (ite (___z17z___ (- 1)) 1 ?v_0) (ite (___z6z___ (- 1)) (ite (___z18z___ (- 1)) 1 ?v_0) ?v_0))))))))
(assert (let ((?v_3 (___z3z___ (- 1))) (?v_1 (___z5z___ (- 1))) (?v_0 (___z6z___ (- 1))) (?v_2 (___z4z___ (- 1)))) (= (___z19z___ (- 1)) (not (or (and ?v_0 ?v_1) (or (and ?v_0 ?v_2) (or (and ?v_1 ?v_2) (or (and ?v_0 ?v_3) (or (and ?v_1 ?v_3) (and ?v_3 ?v_2))))))))))
(push 1)
(assert (not (or (not (= _base (- 1))) (and (___z7z___ 0) (___z7z___ (- 1))))))
(assert true)
(set-info :status unsat)
(check-sat)
(pop 1)
(assert (___z7z___ (- 1)))
(assert (___z7z___ (- 2)))
(push 1)
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (___z10z___ ?v_0))) (= (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) (+ 1 (+ ?v_1 (* (- 1) (___z9z___ ?v_0)))) ?v_1) (ite (___z5z___ _n) (ite (___z17z___ _n) 0 ?v_1) (ite (___z6z___ _n) (ite (___z18z___ _n) 0 ?v_1) ?v_1)))) (___z10z___ _n)))))
(assert (let ((?v_1 (+ _n (- 1)))) (let ((?v_0 (___z11z___ ?v_1))) (let ((?v_2 (+ (- 1) (+ (___z12z___ ?v_1) (+ (___z10z___ ?v_1) (+ (___z9z___ ?v_1) (+ ?v_0 (___z8z___ ?v_1)))))))) (= (ite (= _n _base) (___z2z___ _n) (ite (___z3z___ _n) (ite (___z15z___ _n) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ _n) (ite (___z17z___ _n) ?v_2 ?v_0) (ite (___z6z___ _n) (ite (___z18z___ _n) ?v_2 ?v_0) ?v_0)))) (___z11z___ _n))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (___z12z___ ?v_0))) (= (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) (+ ?v_1 (___z8z___ ?v_0)) ?v_1) (ite (___z5z___ _n) (ite (___z17z___ _n) 0 ?v_1) (ite (___z6z___ _n) (ite (___z18z___ _n) 0 ?v_1) ?v_1)))) (___z12z___ _n)))))
(assert (let ((?v_0 (= _n _base))) (= (and (not ?v_0) (or ?v_0 (<= 2 (___z9z___ _n)))) (___z13z___ _n))))
(assert (let ((?v_0 (= _n _base)) (?v_1 (___z19z___ _n))) (= (and (or (not ?v_0) ?v_1) (or ?v_0 (and ?v_1 (___z14z___ (+ _n (- 1)))))) (___z14z___ _n))))
(assert (= (___z15z___ _n) (<= 1 (___z11z___ (+ _n (- 1))))))
(assert (= (<= 1 (___z9z___ (+ _n (- 1)))) (___z16z___ _n)))
(assert (let ((?v_0 (+ _n (- 1)))) (= (or (not (___z14z___ _n)) (and (or (= _n _base) (= (+ (___z10z___ ?v_0) (+ (___z9z___ ?v_0) (+ (* (- 1) (___z10z___ _n)) (+ (___z11z___ ?v_0) (+ (___z12z___ ?v_0) (+ (___z8z___ ?v_0) (+ (* (- 1) (___z11z___ _n)) (+ (* (- 1) (___z12z___ _n)) (+ (* (- 1) (___z9z___ _n)) (* (- 1) (___z8z___ _n))))))))))) 0)) (not (___z13z___ _n)))) (___z7z___ _n))))
(assert (let ((?v_0 (+ _n (- 1)))) (= (___z17z___ _n) (<= 1 (+ (___z10z___ ?v_0) (* (- 1) (___z12z___ ?v_0)))))))
(assert (let ((?v_0 (___z8z___ (+ _n (- 1))))) (= (___z8z___ _n) (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) 0 ?v_0) (ite (___z4z___ _n) (ite (___z16z___ _n) (+ 1 ?v_0) ?v_0) (ite (___z5z___ _n) (ite (___z17z___ _n) 0 ?v_0) (ite (___z6z___ _n) (ite (___z18z___ _n) 0 ?v_0) ?v_0))))))))
(assert (= (___z18z___ _n) (<= 1 (___z11z___ (+ _n (- 1))))))
(assert (let ((?v_0 (___z9z___ (+ _n (- 1))))) (= (___z9z___ _n) (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) 0 ?v_0) (ite (___z4z___ _n) (ite (___z16z___ _n) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ _n) (ite (___z17z___ _n) 1 ?v_0) (ite (___z6z___ _n) (ite (___z18z___ _n) 1 ?v_0) ?v_0))))))))
(assert (let ((?v_0 (___z6z___ _n)) (?v_1 (___z5z___ _n)) (?v_3 (___z3z___ _n)) (?v_2 (___z4z___ _n))) (= (___z19z___ _n) (not (or (and ?v_0 ?v_1) (or (and ?v_0 ?v_2) (or (and ?v_1 ?v_2) (or (and ?v_0 ?v_3) (or (and ?v_1 ?v_3) (and ?v_3 ?v_2))))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (+ (- 1) ?v_0))) (let ((?v_2 (___z10z___ ?v_1))) (= (___z10z___ ?v_0) (ite (= (+ _n (* (- 1) _base)) 1) 0 (ite (___z3z___ ?v_0) (ite (___z15z___ ?v_0) (+ 1 (+ ?v_2 (* (- 1) (___z9z___ ?v_1)))) ?v_2) (ite (___z5z___ ?v_0) (ite (___z17z___ ?v_0) 0 ?v_2) (ite (___z6z___ ?v_0) (ite (___z18z___ ?v_0) 0 ?v_2) ?v_2)))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_2 (+ (- 1) ?v_0))) (let ((?v_1 (___z11z___ ?v_2))) (let ((?v_3 (+ (- 1) (+ (___z12z___ ?v_2) (+ (___z10z___ ?v_2) (+ (___z9z___ ?v_2) (+ ?v_1 (___z8z___ ?v_2)))))))) (= (___z11z___ ?v_0) (ite (= (+ _n (* (- 1) _base)) 1) (___z2z___ ?v_0) (ite (___z3z___ ?v_0) (ite (___z15z___ ?v_0) (+ (- 1) ?v_1) ?v_1) (ite (___z5z___ ?v_0) (ite (___z17z___ ?v_0) ?v_3 ?v_1) (ite (___z6z___ ?v_0) (ite (___z18z___ ?v_0) ?v_3 ?v_1) ?v_1))))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (+ (- 1) ?v_0))) (let ((?v_2 (___z12z___ ?v_1))) (= (___z12z___ ?v_0) (ite (= (+ _n (* (- 1) _base)) 1) 0 (ite (___z3z___ ?v_0) (ite (___z15z___ ?v_0) (+ ?v_2 (___z8z___ ?v_1)) ?v_2) (ite (___z5z___ ?v_0) (ite (___z17z___ ?v_0) 0 ?v_2) (ite (___z6z___ ?v_0) (ite (___z18z___ ?v_0) 0 ?v_2) ?v_2)))))))))
(assert (let ((?v_1 (+ _n (- 1))) (?v_0 (= (+ _n (* (- 1) _base)) 1))) (= (and (not ?v_0) (or ?v_0 (<= 2 (___z9z___ ?v_1)))) (___z13z___ ?v_1))))
(assert (let ((?v_0 (+ _n (- 1))) (?v_1 (= (+ _n (* (- 1) _base)) 1))) (let ((?v_2 (___z19z___ ?v_0))) (= (___z14z___ ?v_0) (and (or (not ?v_1) ?v_2) (or ?v_1 (and ?v_2 (___z14z___ (+ (- 1) ?v_0)))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (= (___z15z___ ?v_0) (<= 1 (___z11z___ (+ (- 1) ?v_0))))))
(assert (let ((?v_0 (+ _n (- 1)))) (= (<= 1 (___z9z___ (+ (- 1) ?v_0))) (___z16z___ ?v_0))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (+ (- 1) ?v_0))) (= (or (not (___z14z___ ?v_0)) (and (or (= (+ _n (* (- 1) _base)) 1) (= (+ (___z10z___ ?v_0) (+ (___z9z___ ?v_0) (+ (___z11z___ ?v_0) (+ (___z12z___ ?v_0) (+ (___z8z___ ?v_0) (+ (* (- 1) (___z10z___ ?v_1)) (+ (* (- 1) (___z9z___ ?v_1)) (+ (* (- 1) (___z11z___ ?v_1)) (+ (* (- 1) (___z12z___ ?v_1)) (* (- 1) (___z8z___ ?v_1))))))))))) 0)) (not (___z13z___ ?v_0)))) (___z7z___ ?v_0)))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (+ (- 1) ?v_0))) (= (___z17z___ ?v_0) (<= 1 (+ (___z10z___ ?v_1) (* (- 1) (___z12z___ ?v_1))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (___z8z___ (+ (- 1) ?v_0)))) (= (___z8z___ ?v_0) (ite (= (+ _n (* (- 1) _base)) 1) 0 (ite (___z3z___ ?v_0) (ite (___z15z___ ?v_0) 0 ?v_1) (ite (___z4z___ ?v_0) (ite (___z16z___ ?v_0) (+ 1 ?v_1) ?v_1) (ite (___z5z___ ?v_0) (ite (___z17z___ ?v_0) 0 ?v_1) (ite (___z6z___ ?v_0) (ite (___z18z___ ?v_0) 0 ?v_1) ?v_1)))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (= (___z18z___ ?v_0) (<= 1 (___z11z___ (+ (- 1) ?v_0))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (___z9z___ (+ (- 1) ?v_0)))) (= (___z9z___ ?v_0) (ite (= (+ _n (* (- 1) _base)) 1) 0 (ite (___z3z___ ?v_0) (ite (___z15z___ ?v_0) 0 ?v_1) (ite (___z4z___ ?v_0) (ite (___z16z___ ?v_0) (+ (- 1) ?v_1) ?v_1) (ite (___z5z___ ?v_0) (ite (___z17z___ ?v_0) 1 ?v_1) (ite (___z6z___ ?v_0) (ite (___z18z___ ?v_0) 1 ?v_1) ?v_1)))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_4 (___z3z___ ?v_0)) (?v_2 (___z5z___ ?v_0)) (?v_1 (___z6z___ ?v_0)) (?v_3 (___z4z___ ?v_0))) (= (___z19z___ ?v_0) (not (or (and ?v_1 ?v_2) (or (and ?v_1 ?v_3) (or (and ?v_2 ?v_3) (or (and ?v_1 ?v_4) (or (and ?v_2 ?v_4) (and ?v_4 ?v_3)))))))))))
(assert (___z7z___ (+ _n (- 1))))
(assert (not (or (not (= _base (- 1))) (___z7z___ _n))))
(assert true)
(set-info :status sat)
(check-sat)
(pop 1)
(assert (___z7z___ (+ _n (- 1))))
(assert (___z7z___ (+ _n (- 2))))
(assert (let ((?v_0 (___z10z___ (- 3)))) (= (___z10z___ (- 2)) (ite (= _base (- 2)) 0 (ite (___z3z___ (- 2)) (ite (___z15z___ (- 2)) (+ 1 (+ ?v_0 (* (- 1) (___z9z___ (- 3))))) ?v_0) (ite (___z5z___ (- 2)) (ite (___z17z___ (- 2)) 0 ?v_0) (ite (___z6z___ (- 2)) (ite (___z18z___ (- 2)) 0 ?v_0) ?v_0)))))))
(assert (let ((?v_0 (___z11z___ (- 3)))) (let ((?v_1 (+ (- 1) (+ (___z12z___ (- 3)) (+ (___z10z___ (- 3)) (+ (___z9z___ (- 3)) (+ ?v_0 (___z8z___ (- 3))))))))) (= (___z11z___ (- 2)) (ite (= _base (- 2)) (___z2z___ (- 2)) (ite (___z3z___ (- 2)) (ite (___z15z___ (- 2)) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ (- 2)) (ite (___z17z___ (- 2)) ?v_1 ?v_0) (ite (___z6z___ (- 2)) (ite (___z18z___ (- 2)) ?v_1 ?v_0) ?v_0))))))))
(assert (let ((?v_0 (___z12z___ (- 3)))) (= (___z12z___ (- 2)) (ite (= _base (- 2)) 0 (ite (___z3z___ (- 2)) (ite (___z15z___ (- 2)) (+ ?v_0 (___z8z___ (- 3))) ?v_0) (ite (___z5z___ (- 2)) (ite (___z17z___ (- 2)) 0 ?v_0) (ite (___z6z___ (- 2)) (ite (___z18z___ (- 2)) 0 ?v_0) ?v_0)))))))
(assert (let ((?v_0 (= _base (- 2)))) (= (and (not ?v_0) (or ?v_0 (<= 2 (___z9z___ (- 2))))) (___z13z___ (- 2)))))
(assert (let ((?v_0 (= _base (- 2))) (?v_1 (___z19z___ (- 2)))) (= (___z14z___ (- 2)) (and (or (not ?v_0) ?v_1) (or ?v_0 (and ?v_1 (___z14z___ (- 3))))))))
(assert (= (___z15z___ (- 2)) (<= 1 (___z11z___ (- 3)))))
(assert (= (<= 1 (___z9z___ (- 3))) (___z16z___ (- 2))))
(assert (= (___z7z___ (- 2)) (or (not (___z14z___ (- 2))) (and (or (= _base (- 2)) (= (+ (___z10z___ (- 2)) (+ (___z9z___ (- 2)) (+ (___z11z___ (- 2)) (+ (___z12z___ (- 2)) (+ (___z8z___ (- 2)) (+ (* (- 1) (___z10z___ (- 3))) (+ (* (- 1) (___z9z___ (- 3))) (+ (* (- 1) (___z11z___ (- 3))) (+ (* (- 1) (___z12z___ (- 3))) (* (- 1) (___z8z___ (- 3)))))))))))) 0)) (not (___z13z___ (- 2)))))))
(assert (= (___z17z___ (- 2)) (<= 1 (+ (___z10z___ (- 3)) (* (- 1) (___z12z___ (- 3)))))))
(assert (let ((?v_0 (___z8z___ (- 3)))) (= (___z8z___ (- 2)) (ite (= _base (- 2)) 0 (ite (___z3z___ (- 2)) (ite (___z15z___ (- 2)) 0 ?v_0) (ite (___z4z___ (- 2)) (ite (___z16z___ (- 2)) (+ 1 ?v_0) ?v_0) (ite (___z5z___ (- 2)) (ite (___z17z___ (- 2)) 0 ?v_0) (ite (___z6z___ (- 2)) (ite (___z18z___ (- 2)) 0 ?v_0) ?v_0))))))))
(assert (= (___z18z___ (- 2)) (<= 1 (___z11z___ (- 3)))))
(assert (let ((?v_0 (___z9z___ (- 3)))) (= (___z9z___ (- 2)) (ite (= _base (- 2)) 0 (ite (___z3z___ (- 2)) (ite (___z15z___ (- 2)) 0 ?v_0) (ite (___z4z___ (- 2)) (ite (___z16z___ (- 2)) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ (- 2)) (ite (___z17z___ (- 2)) 1 ?v_0) (ite (___z6z___ (- 2)) (ite (___z18z___ (- 2)) 1 ?v_0) ?v_0))))))))
(assert (let ((?v_3 (___z3z___ (- 2))) (?v_1 (___z5z___ (- 2))) (?v_0 (___z6z___ (- 2))) (?v_2 (___z4z___ (- 2)))) (= (___z19z___ (- 2)) (not (or (and ?v_0 ?v_1) (or (and ?v_0 ?v_2) (or (and ?v_1 ?v_2) (or (and ?v_0 ?v_3) (or (and ?v_1 ?v_3) (and ?v_3 ?v_2))))))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (___z10z___ ?v_0))) (= (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) (+ 1 (+ ?v_1 (* (- 1) (___z9z___ ?v_0)))) ?v_1) (ite (___z5z___ _n) (ite (___z17z___ _n) 0 ?v_1) (ite (___z6z___ _n) (ite (___z18z___ _n) 0 ?v_1) ?v_1)))) (___z10z___ _n)))))
(assert (let ((?v_1 (+ _n (- 1)))) (let ((?v_0 (___z11z___ ?v_1))) (let ((?v_2 (+ (- 1) (+ (___z12z___ ?v_1) (+ (___z10z___ ?v_1) (+ (___z9z___ ?v_1) (+ ?v_0 (___z8z___ ?v_1)))))))) (= (ite (= _n _base) (___z2z___ _n) (ite (___z3z___ _n) (ite (___z15z___ _n) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ _n) (ite (___z17z___ _n) ?v_2 ?v_0) (ite (___z6z___ _n) (ite (___z18z___ _n) ?v_2 ?v_0) ?v_0)))) (___z11z___ _n))))))
(assert (let ((?v_0 (+ _n (- 1)))) (let ((?v_1 (___z12z___ ?v_0))) (= (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) (+ ?v_1 (___z8z___ ?v_0)) ?v_1) (ite (___z5z___ _n) (ite (___z17z___ _n) 0 ?v_1) (ite (___z6z___ _n) (ite (___z18z___ _n) 0 ?v_1) ?v_1)))) (___z12z___ _n)))))
(assert (let ((?v_0 (= _n _base))) (= (and (not ?v_0) (or ?v_0 (<= 2 (___z9z___ _n)))) (___z13z___ _n))))
(assert (let ((?v_0 (= _n _base)) (?v_1 (___z19z___ _n))) (= (and (or (not ?v_0) ?v_1) (or ?v_0 (and ?v_1 (___z14z___ (+ _n (- 1)))))) (___z14z___ _n))))
(assert (= (___z15z___ _n) (<= 1 (___z11z___ (+ _n (- 1))))))
(assert (= (<= 1 (___z9z___ (+ _n (- 1)))) (___z16z___ _n)))
(assert (let ((?v_0 (+ _n (- 1)))) (= (or (not (___z14z___ _n)) (and (or (= _n _base) (= (+ (___z10z___ ?v_0) (+ (___z9z___ ?v_0) (+ (* (- 1) (___z10z___ _n)) (+ (___z11z___ ?v_0) (+ (___z12z___ ?v_0) (+ (___z8z___ ?v_0) (+ (* (- 1) (___z11z___ _n)) (+ (* (- 1) (___z12z___ _n)) (+ (* (- 1) (___z9z___ _n)) (* (- 1) (___z8z___ _n))))))))))) 0)) (not (___z13z___ _n)))) (___z7z___ _n))))
(assert (let ((?v_0 (+ _n (- 1)))) (= (___z17z___ _n) (<= 1 (+ (___z10z___ ?v_0) (* (- 1) (___z12z___ ?v_0)))))))
(assert (let ((?v_0 (___z8z___ (+ _n (- 1))))) (= (___z8z___ _n) (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) 0 ?v_0) (ite (___z4z___ _n) (ite (___z16z___ _n) (+ 1 ?v_0) ?v_0) (ite (___z5z___ _n) (ite (___z17z___ _n) 0 ?v_0) (ite (___z6z___ _n) (ite (___z18z___ _n) 0 ?v_0) ?v_0))))))))
(assert (= (___z18z___ _n) (<= 1 (___z11z___ (+ _n (- 1))))))
(assert (let ((?v_0 (___z9z___ (+ _n (- 1))))) (= (___z9z___ _n) (ite (= _n _base) 0 (ite (___z3z___ _n) (ite (___z15z___ _n) 0 ?v_0) (ite (___z4z___ _n) (ite (___z16z___ _n) (+ (- 1) ?v_0) ?v_0) (ite (___z5z___ _n) (ite (___z17z___ _n) 1 ?v_0) (ite (___z6z___ _n) (ite (___z18z___ _n) 1 ?v_0) ?v_0))))))))
(assert (let ((?v_0 (___z6z___ _n)) (?v_1 (___z5z___ _n)) (?v_3 (___z3z___ _n)) (?v_2 (___z4z___ _n))) (= (___z19z___ _n) (not (or (and ?v_0 ?v_1) (or (and ?v_0 ?v_2) (or (and ?v_1 ?v_2) (or (and ?v_0 ?v_3) (or (and ?v_1 ?v_3) (and ?v_3 ?v_2))))))))))
(push 1)
(assert (not (or (___z7z___ 0) (not (= _base (- 2))))))
(assert true)
(set-info :status sat)
(check-sat)
(exit)
