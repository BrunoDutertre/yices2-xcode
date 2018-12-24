(set-logic LRA)
(set-info :source |
These benchmarks used in the paper:

  Dejan Jovanovic and Leonardo de Moura.  Solving Non-Linear Arithmetic.
  In IJCAR 2012, published as LNCS volume 7364, pp. 339--354.

The keymaera family contains VCs from Keymaera verification, see:

  A. Platzer, J.-D. Quesel, and P. Rummer.  Real world verification.
  In CADE 2009, pages 485-501. Springer, 2009.

Submitted by Dejan Jovanovic for SMT-LIB.

 KeYmaera example: water_tank, node 13854 For more info see: No further information available.
|)
(set-info :smt-lib-version 2.0)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun stuscore2dollarskuscore20 () Real)
(declare-fun yuscore2dollarskuscore20 () Real)
(declare-fun ts12uscore0 () Real)
(declare-fun t12uscore0dollarskuscore0 () Real)
(declare-fun xuscore2dollarskuscore12 () Real)
(assert (not (exists ((ts12uscore0 Real)) (=> (and (and (and (and (and (and (=> (and (<= 0 ts12uscore0) (<= ts12uscore0 t12uscore0dollarskuscore0)) (>= (+ (* (- 2) ts12uscore0) yuscore2dollarskuscore20) 5)) (>= t12uscore0dollarskuscore0 0)) (> yuscore2dollarskuscore20 5)) (= stuscore2dollarskuscore20 2)) (>= yuscore2dollarskuscore20 1)) (<= yuscore2dollarskuscore20 12)) (<= yuscore2dollarskuscore20 (+ 10 xuscore2dollarskuscore12))) (or (= stuscore2dollarskuscore20 3) (>= (+ (* (- 2) t12uscore0dollarskuscore0) yuscore2dollarskuscore20) 1))))))
(check-sat)
(exit)
