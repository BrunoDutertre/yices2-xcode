(set-logic QF_UFLRA)
(set-info :source |CPAchecker with bounded model checking on SV-COMP14 program using MathSAT5, submitted by Philipp Wendler, http://cpachecker.sosy-lab.org|)
(set-info :smt-lib-version 2.0)
(set-info :category "industrial")


(define-fun _2 () Bool false)
(declare-fun |__ADDRESS_OF_main::i| () Real)
(declare-fun |main::n@3| () Real)
(declare-fun |__ADDRESS_OF_main::sn| () Real)
(declare-fun |main::i@4| () Real)
(declare-fun |main::sn@2| () Real)
(declare-fun |__ADDRESS_OF_main::n| () Real)
(declare-fun |main::i@3| () Real)
(declare-fun __BASE_ADDRESS_OF__ (Real) Real)
(declare-fun |main::sn@3| () Real)
(define-fun _7 () Real 0)
(define-fun _8 () Real |__ADDRESS_OF_main::i|)
(define-fun _9 () Real (__BASE_ADDRESS_OF__ _8))
(define-fun _10 () Bool (= _8 _9))
(define-fun _11 () Real |__ADDRESS_OF_main::n|)
(define-fun _12 () Real (__BASE_ADDRESS_OF__ _11))
(define-fun _13 () Bool (= _11 _12))
(define-fun _14 () Bool (and _10 _13))
(define-fun _15 () Real |__ADDRESS_OF_main::sn|)
(define-fun _16 () Real (__BASE_ADDRESS_OF__ _15))
(define-fun _17 () Bool (= _15 _16))
(define-fun _18 () Real |main::sn@2|)
(define-fun _19 () Bool (= _18 _7))
(define-fun _20 () Bool (and _17 _19))
(define-fun _21 () Bool (and _14 _20))
(define-fun _22 () Real |main::i@3|)
(define-fun _23 () Bool (= _22 _7))
(define-fun _24 () Bool (and _21 _23))
(define-fun _25 () Real |main::n@3|)
(define-fun _26 () Bool (<= _22 _25))
(define-fun _29 () Bool (and _24 _26))
(define-fun _41 () Real (- 1))
(define-fun _67 () Real |main::sn@3|)
(define-fun _68 () Real (* (- 1) _67))
(define-fun _69 () Real (+ _22 _68))
(define-fun _70 () Real (+ _18 _69))
(define-fun _71 () Bool (= _70 _7))
(define-fun _72 () Bool (and _29 _71))
(define-fun _74 () Real |main::i@4|)
(define-fun _75 () Real (* (- 1) _74))
(define-fun _76 () Real (+ _22 _75))
(define-fun _77 () Bool (= _76 _41))
(define-fun _78 () Bool (and _72 _77))
(declare-fun |main::i@5| () Real)
(declare-fun |main::sn@4| () Real)
(define-fun _79 () Bool (<= _74 _25))
(define-fun _81 () Bool (and _78 _79))
(define-fun _246 () Real |main::sn@4|)
(define-fun _247 () Real (* (- 1) _246))
(define-fun _248 () Real (+ _74 _247))
(define-fun _249 () Real (+ _67 _248))
(define-fun _250 () Bool (= _249 _7))
(define-fun _251 () Bool (and _81 _250))
(define-fun _253 () Real |main::i@5|)
(define-fun _254 () Real (* (- 1) _253))
(define-fun _255 () Real (+ _74 _254))
(define-fun _256 () Bool (= _255 _41))
(define-fun _257 () Bool (and _251 _256))
(declare-fun |__ADDRESS_OF_main::__CPAchecker_TMP_0| () Real)
(declare-fun Rational__*_ (Real Real) Real)
(declare-fun |main::__CPAchecker_TMP_0@3| () Real)
(declare-fun |__VERIFIER_assert::cond@2| () Real)
(define-fun _27 () Real 1)
(define-fun _30 () Bool (not _26))
(define-fun _31 () Bool (and _24 _30))
(define-fun _32 () Real |__ADDRESS_OF_main::__CPAchecker_TMP_0|)
(define-fun _33 () Real (__BASE_ADDRESS_OF__ _32))
(define-fun _34 () Bool (= _32 _33))
(define-fun _35 () Bool (and _31 _34))
(define-fun _36 () Real (+ _25 _27))
(define-fun _37 () Real (Rational__*_ _25 _36))
(define-fun _38 () Real 2)
(define-fun _42 () Real (* (- 1) _37))
(define-fun _43 () Real (* 2 _18))
(define-fun _44 () Real (+ _43 _42))
(define-fun _45 () Bool (= _44 _7))
(define-fun _47 () Bool (and _35 _45))
(define-fun _48 () Bool (not _45))
(define-fun _49 () Bool (and _35 _48))
(define-fun _51 () Bool (and _19 _49))
(define-fun _54 () Bool (or _47 _51))
(define-fun _55 () Real |main::__CPAchecker_TMP_0@3|)
(define-fun _56 () Bool (= _55 _27))
(define-fun _57 () Bool (and _54 _56))
(define-fun _58 () Real |__VERIFIER_assert::cond@2|)
(define-fun _59 () Bool (= _55 _58))
(define-fun _61 () Bool (= _58 _7))
(define-fun _82 () Bool (not _79))
(define-fun _83 () Bool (and _78 _82))
(define-fun _118 () Bool (= _55 _7))
(define-fun _210 () Bool (= _22 _74))
(define-fun _211 () Bool (= _18 _67))
(define-fun _212 () Bool (and _210 _211))
(define-fun _213 () Bool (and _31 _212))
(define-fun _214 () Bool (or _83 _213))
(define-fun _215 () Bool (and _34 _214))
(define-fun _216 () Bool (and _35 _212))
(define-fun _217 () Bool (or _215 _216))
(define-fun _218 () Real (- 2))
(define-fun _219 () Real (* (- 2) _67))
(define-fun _220 () Real (+ _37 _219))
(define-fun _221 () Bool (= _220 _7))
(define-fun _223 () Bool (and _217 _221))
(define-fun _224 () Bool (not _221))
(define-fun _225 () Bool (and _217 _224))
(define-fun _226 () Bool (and _54 _212))
(define-fun _227 () Bool (or _223 _226))
(define-fun _228 () Bool (and _49 _212))
(define-fun _229 () Bool (or _225 _228))
(define-fun _230 () Bool (= _67 _7))
(define-fun _232 () Bool (and _229 _230))
(define-fun _235 () Bool (or _227 _232))
(define-fun _236 () Bool (and _56 _235))
(define-fun _237 () Bool (and _57 _212))
(define-fun _238 () Bool (or _236 _237))
(define-fun _258 () Bool (<= _253 _25))
(define-fun _261 () Bool (not _258))
(define-fun _262 () Bool (and _257 _261))
(define-fun _338 () Bool (= _74 _253))
(define-fun _339 () Bool (= _67 _246))
(define-fun _340 () Bool (and _338 _339))
(define-fun _341 () Bool (and _214 _340))
(define-fun _342 () Bool (or _262 _341))
(define-fun _343 () Bool (and _34 _342))
(define-fun _344 () Bool (and _217 _340))
(define-fun _345 () Bool (or _343 _344))
(define-fun _346 () Real (* (- 2) _246))
(define-fun _347 () Real (+ _37 _346))
(define-fun _348 () Bool (= _347 _7))
(define-fun _350 () Bool (and _345 _348))
(define-fun _351 () Bool (not _348))
(define-fun _352 () Bool (and _345 _351))
(define-fun _353 () Bool (and _235 _340))
(define-fun _354 () Bool (or _350 _353))
(define-fun _355 () Bool (and _229 _340))
(define-fun _356 () Bool (or _352 _355))
(define-fun _357 () Bool (= _246 _7))
(define-fun _359 () Bool (and _356 _357))
(define-fun _360 () Bool (not _357))
(define-fun _361 () Bool (and _356 _360))
(define-fun _362 () Bool (or _354 _359))
(define-fun _363 () Bool (and _118 _361))
(define-fun _364 () Bool (and _238 _340))
(define-fun _365 () Bool (or _363 _364))
(define-fun _366 () Bool (and _56 _362))
(define-fun _367 () Bool (or _365 _366))
(define-fun _368 () Bool (and _59 _367))
(define-fun _369 () Bool (and _61 _368))


(push 1)
(assert _2)
(set-info :status unsat)
(check-sat)
(pop 1)
(push 1)
(assert _78)
(set-info :status sat)
(check-sat)
(pop 1)
(push 1)
(assert _2)
(set-info :status unsat)
(check-sat)
(pop 1)
(push 1)
(assert _257)
(set-info :status sat)
(check-sat)
(pop 1)
(push 1)
(assert _369)
(set-info :status sat)
(check-sat)
(pop 1)
(exit)
