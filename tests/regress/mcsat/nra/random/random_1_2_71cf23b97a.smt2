(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_NRA)
(declare-fun v0 () Real)
(declare-fun v1 () Real)
(assert (let ((e2 9))
(let ((e3 0))
(let ((e4 5))
(let ((e5 (+ v0 v1)))
(let ((e6 (+ e5 v1)))
(let ((e7 (* v0 e5)))
(let ((e8 (* (- e4) e6)))
(let ((e9 (- e7 v1)))
(let ((e10 (+ v1 e5)))
(let ((e11 (/ e3 (- e4))))
(let ((e12 (- e11 e11)))
(let ((e13 (* (- e4) e9)))
(let ((e14 (* e12 (- e3))))
(let ((e15 (/ e2 (- e2))))
(let ((e16 (>= e7 e15)))
(let ((e17 (>= v1 e15)))
(let ((e18 (>= e5 e9)))
(let ((e19 (>= e5 e15)))
(let ((e20 (< e8 e9)))
(let ((e21 (>= e11 v1)))
(let ((e22 (> e12 e15)))
(let ((e23 (> v1 e6)))
(let ((e24 (distinct v1 e10)))
(let ((e25 (<= e11 e13)))
(let ((e26 (< v0 v1)))
(let ((e27 (< e6 v0)))
(let ((e28 (< e6 e10)))
(let ((e29 (>= e13 e12)))
(let ((e30 (>= e13 e12)))
(let ((e31 (> e9 e12)))
(let ((e32 (= v0 e7)))
(let ((e33 (<= v1 v1)))
(let ((e34 (< e6 e12)))
(let ((e35 (= v1 e5)))
(let ((e36 (> e13 e10)))
(let ((e37 (< e13 e7)))
(let ((e38 (>= e6 e10)))
(let ((e39 (< e10 e15)))
(let ((e40 (distinct e7 e5)))
(let ((e41 (<= e13 v0)))
(let ((e42 (> e12 e7)))
(let ((e43 (<= e8 e14)))
(let ((e44 (>= v1 v1)))
(let ((e45 (= e14 v0)))
(let ((e46 (= v0 e13)))
(let ((e47 (<= e13 e12)))
(let ((e48 (distinct e13 e15)))
(let ((e49 (= e13 e9)))
(let ((e50 (<= v1 v0)))
(let ((e51 (>= e11 e10)))
(let ((e52 (distinct e14 v1)))
(let ((e53 (distinct e6 e9)))
(let ((e54 (< e5 e10)))
(let ((e55 (< e6 e13)))
(let ((e56 (<= e12 e15)))
(let ((e57 (> e15 e10)))
(let ((e58 (>= e14 e10)))
(let ((e59 (>= e11 e10)))
(let ((e60 (> e14 e8)))
(let ((e61 (<= e11 e15)))
(let ((e62 (>= e7 e10)))
(let ((e63 (ite e57 e44 e51)))
(let ((e64 (= e49 e28)))
(let ((e65 (xor e40 e40)))
(let ((e66 (=> e62 e50)))
(let ((e67 (not e36)))
(let ((e68 (not e23)))
(let ((e69 (xor e24 e31)))
(let ((e70 (not e33)))
(let ((e71 (= e43 e25)))
(let ((e72 (= e42 e42)))
(let ((e73 (not e29)))
(let ((e74 (xor e73 e66)))
(let ((e75 (not e16)))
(let ((e76 (or e20 e47)))
(let ((e77 (xor e18 e17)))
(let ((e78 (or e69 e37)))
(let ((e79 (= e76 e53)))
(let ((e80 (not e64)))
(let ((e81 (= e21 e72)))
(let ((e82 (or e67 e34)))
(let ((e83 (= e59 e27)))
(let ((e84 (not e61)))
(let ((e85 (=> e46 e58)))
(let ((e86 (ite e83 e38 e38)))
(let ((e87 (and e22 e32)))
(let ((e88 (ite e80 e81 e70)))
(let ((e89 (xor e54 e79)))
(let ((e90 (not e52)))
(let ((e91 (=> e87 e87)))
(let ((e92 (and e19 e26)))
(let ((e93 (not e30)))
(let ((e94 (= e77 e55)))
(let ((e95 (or e63 e78)))
(let ((e96 (not e74)))
(let ((e97 (=> e35 e45)))
(let ((e98 (and e75 e94)))
(let ((e99 (=> e71 e41)))
(let ((e100 (=> e88 e96)))
(let ((e101 (not e99)))
(let ((e102 (=> e101 e60)))
(let ((e103 (ite e102 e90 e90)))
(let ((e104 (= e84 e97)))
(let ((e105 (=> e82 e86)))
(let ((e106 (= e100 e48)))
(let ((e107 (and e85 e106)))
(let ((e108 (xor e56 e68)))
(let ((e109 (xor e107 e92)))
(let ((e110 (xor e109 e91)))
(let ((e111 (= e93 e104)))
(let ((e112 (ite e105 e95 e105)))
(let ((e113 (or e89 e103)))
(let ((e114 (and e39 e113)))
(let ((e115 (and e65 e110)))
(let ((e116 (=> e115 e114)))
(let ((e117 (and e116 e112)))
(let ((e118 (= e111 e117)))
(let ((e119 (and e118 e108)))
(let ((e120 (not e98)))
(let ((e121 (not e120)))
(let ((e122 (xor e119 e119)))
(let ((e123 (or e121 e122)))
e123
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
