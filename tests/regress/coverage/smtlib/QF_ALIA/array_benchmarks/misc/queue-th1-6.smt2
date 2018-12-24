(set-logic QF_ALIA)
(set-info :source |
Benchmarks from Leonardo de Moura <demoura@csl.sri.com>

This benchmark was automatically translated into SMT-LIB format from
CVC format using CVC Lite
|)
(set-info :smt-lib-version 2.0)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x_0 () Int)
(declare-fun x_1 () Int)
(declare-fun x_2 () (Array Int Int))
(declare-fun x_3 () Int)
(declare-fun x_4 () (Array Int Int))
(declare-fun x_5 () Int)
(declare-fun x_6 () Int)
(declare-fun x_7 () Int)
(declare-fun x_8 () Int)
(declare-fun x_9 () Int)
(declare-fun x_10 () (Array Int Int))
(declare-fun x_11 () Int)
(declare-fun x_12 () Int)
(declare-fun x_13 () Int)
(declare-fun x_14 () (Array Int Int))
(declare-fun x_15 () Int)
(declare-fun x_16 () Int)
(declare-fun x_17 () Int)
(declare-fun x_18 () (Array Int Int))
(declare-fun x_19 () Int)
(declare-fun x_20 () Int)
(declare-fun x_21 () Int)
(declare-fun x_22 () (Array Int Int))
(declare-fun x_23 () Int)
(declare-fun x_24 () Int)
(declare-fun x_25 () Int)
(declare-fun x_26 () (Array Int Int))
(declare-fun x_27 () Int)
(declare-fun x_28 () Int)
(declare-fun x_29 () Int)
(declare-fun x_30 () (Array Int Int))
(declare-fun x_31 () Int)
(declare-fun x_32 () Int)
(declare-fun x_33 () Int)
(declare-fun x_34 () Int)
(declare-fun x_35 () (Array Int Int))
(declare-fun x_36 () Int)
(declare-fun x_37 () (Array Int Int))
(declare-fun x_38 () Int)
(declare-fun x_39 () (Array Int Int))
(declare-fun x_40 () Int)
(declare-fun x_41 () (Array Int Int))
(declare-fun x_42 () Int)
(declare-fun x_43 () (Array Int Int))
(declare-fun x_44 () Int)
(assert (let ((?v_5 (= x_9 1)) (?v_3 (= x_17 1)) (?v_0 (= x_29 1)) (?v_6 (= x_3 0)) (?v_2 (= x_21 1)) (?v_1 (= x_25 1)) (?v_4 (= x_13 1)) (?v_7 (store x_43 x_32 (select x_30 x_31)))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= x_33 2) (>= x_33 0)) (<= x_29 2)) (>= x_29 0)) (<= x_25 2)) (>= x_25 0)) (<= x_21 2)) (>= x_21 0)) (<= x_17 2)) (>= x_17 0)) (<= x_13 2)) (>= x_13 0)) (<= x_9 2)) (>= x_9 0)) (not (< x_0 0))) (not (< x_1 0))) (not (< x_3 0))) (not (< x_11 0))) (not (< x_12 0))) (not (< x_15 0))) (not (< x_16 0))) (not (< x_19 0))) (not (< x_20 0))) (not (< x_23 0))) (not (< x_24 0))) (not (< x_27 0))) (not (< x_28 0))) (not (< x_31 0))) (not (< x_32 0))) (not (< x_34 0))) (not (< x_36 0))) (not (< x_38 0))) (not (< x_40 0))) (not (< x_42 0))) (not (< x_44 0))) (= x_0 0)) (= x_1 0)) ?v_6) (= x_33 (ite (<= x_32 2) 1 (ite (<= x_32 5) 0 2)))) (= x_29 (ite (<= x_28 2) 1 (ite (<= x_28 5) 0 2)))) (= x_25 (ite (<= x_24 2) 1 (ite (<= x_24 5) 0 2)))) (= x_21 (ite (<= x_20 2) 1 (ite (<= x_20 5) 0 2)))) (= x_17 (ite (<= x_16 2) 1 (ite (<= x_16 5) 0 2)))) (= x_13 (ite (<= x_12 2) 1 (ite (<= x_12 5) 0 2)))) (= (select x_4 0) (select x_2 x_0))) (= x_9 (ite (<= x_3 2) 1 (ite (<= x_3 5) 0 2)))) (= x_31 (ite (= x_29 0) (+ x_27 1) x_27))) (= x_44 (ite ?v_0 (+ x_42 1) x_42))) (= x_30 (ite ?v_0 (store x_26 x_42 (ite (= x_28 0) x_5 (ite (= x_28 1) x_6 (ite (= x_28 2) x_7 x_8)))) x_26))) (= x_32 (+ x_28 1))) (= x_27 (ite (= x_25 0) (+ x_23 1) x_23))) (= x_42 (ite ?v_1 (+ x_40 1) x_40))) (= x_26 (ite ?v_1 (store x_22 x_40 (ite (= x_24 0) x_5 (ite (= x_24 1) x_6 (ite (= x_24 2) x_7 x_8)))) x_22))) (= x_28 (+ x_24 1))) (= x_43 (store x_41 x_28 (select x_26 x_27)))) (= x_23 (ite (= x_21 0) (+ x_19 1) x_19))) (= x_40 (ite ?v_2 (+ x_38 1) x_38))) (= x_22 (ite ?v_2 (store x_18 x_38 (ite (= x_20 0) x_5 (ite (= x_20 1) x_6 (ite (= x_20 2) x_7 x_8)))) x_18))) (= x_24 (+ x_20 1))) (= x_41 (store x_39 x_24 (select x_22 x_23)))) (= x_19 (ite (= x_17 0) (+ x_15 1) x_15))) (= x_38 (ite ?v_3 (+ x_36 1) x_36))) (= x_18 (ite ?v_3 (store x_14 x_36 (ite (= x_16 0) x_5 (ite (= x_16 1) x_6 (ite (= x_16 2) x_7 x_8)))) x_14))) (= x_20 (+ x_16 1))) (= x_39 (store x_37 x_20 (select x_18 x_19)))) (= x_15 (ite (= x_13 0) (+ x_11 1) x_11))) (= x_36 (ite ?v_4 (+ x_34 1) x_34))) (= x_14 (ite ?v_4 (store x_10 x_34 (ite (= x_12 0) x_5 (ite (= x_12 1) x_6 (ite (= x_12 2) x_7 x_8)))) x_10))) (= x_16 (+ x_12 1))) (= x_37 (store x_35 x_16 (select x_14 x_15)))) (= x_11 (ite (= x_9 0) (+ x_0 1) x_0))) (= x_34 (ite ?v_5 (+ x_1 1) x_1))) (= x_10 (ite ?v_5 (store x_2 x_1 (ite ?v_6 x_5 (ite (= x_3 1) x_6 (ite (= x_3 2) x_7 x_8)))) x_2))) (= x_12 (+ x_3 1))) (= x_35 (store x_4 x_12 (select x_10 x_11)))) (or (or (or (or (or (or (and (not (< x_32 6)) (or (or (not (= (select ?v_7 3) x_5)) (not (= (select ?v_7 4) x_6))) (not (= (select ?v_7 5) x_7)))) (and (not (< x_28 6)) (or (or (not (= (select x_43 3) x_5)) (not (= (select x_43 4) x_6))) (not (= (select x_43 5) x_7))))) (and (not (< x_24 6)) (or (or (not (= (select x_41 3) x_5)) (not (= (select x_41 4) x_6))) (not (= (select x_41 5) x_7))))) (and (not (< x_20 6)) (or (or (not (= (select x_39 3) x_5)) (not (= (select x_39 4) x_6))) (not (= (select x_39 5) x_7))))) (and (not (< x_16 6)) (or (or (not (= (select x_37 3) x_5)) (not (= (select x_37 4) x_6))) (not (= (select x_37 5) x_7))))) (and (not (< x_12 6)) (or (or (not (= (select x_35 3) x_5)) (not (= (select x_35 4) x_6))) (not (= (select x_35 5) x_7))))) (and (not (< x_3 6)) (or (or (not (= (select x_4 3) x_5)) (not (= (select x_4 4) x_6))) (not (= (select x_4 5) x_7))))))))
(check-sat)
(exit)
