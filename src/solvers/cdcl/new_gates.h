/*
 * This file is part of the Yices SMT Solver.
 * Copyright (C) 2018 SRI International.
 *
 * Yices is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Yices is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Yices.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * EXPERIMENTAL: BOOLEAN GATES
 */

#ifndef __NEW_GATES_H
#define __NEW_GATES_H

#include <stdint.h>

#include "solvers/cdcl/smt_core_base_types.h"

/*
 * Truth tables for Boolean gates of arity <= 3
 *
 * - for functions of arity 3,
 *     var[0], var[1], var[2] are the indices of three Boolean variables
 *     in increasing order
 * - for functions of arity 2, var[2] is not used (it's null_bvar = -1)
 *     var[0] and var[1] are two Boolean variables
 *
 * - the truth table is an array of 8bits b7 ... b0
 * - the encoding is as follows
 *
 *    var[0] var[1] var[2]  f
 *       0      0      0    b0
 *       0      0      1    b1
 *       0      1      0    b2
 *       0      1      1    b3
 *       1      0      0    b4
 *       1      0      1    b5
 *       1      1      0    b6
 *       1      1      1    b7
 *
 * For functions of arity 2, this looks like:
 *
 *    var[0] var[1] var[2]  f
 *       0      0      0    b0
 *       0      0      1    b0
 *       0      1      0    b2
 *       0      1      1    b2
 *       1      0      0    b4
 *       1      0      1    b4
 *       1      1      0    b6
 *       1      1      1    b6
 *
 * and var[2] is set to -1.
 */
typedef struct bgate_s {
  uint32_t ttbl;  // truth table: only 8bits are used
  bvar_t  var[3]; // variables in increasing order
} bgate_t;


/*
 * Intermediate structure to store a truth table:
 * - this is used to simplify and normalize truth tables
 * - a table consists of nvars columns where nvars is between 0 and 3
 * - each column is labeled by a signed integer, which can be either a literal
 *   or a Boolean variable, or -1
 * - the truth values are stored in a bit mask (8 bit, unsigned word).
 *   all 8bits are used even if the table has fewer than 3 columms.
 */
typedef struct ttbl_s {
  uint32_t nvars;     // number of columns (between 0 and 3)
  int32_t  label[3] ; // column labels
  uint8_t  mask;      // 8-bit truth table
} ttbl_t;


/*
 * Resizable array of bgate_t descriptors
 * - size = size of array data
 * - ngates = total number of gates in use
 */
typedef struct bgate_array_s {
  bgate_t *data;
  uint32_t ngates;
  uint32_t size;
} bgate_array_t;

#define DEF_BGATE_ARRAY_SIZE 1024
#define MAX_BGATE_ARRAY_SIZE (UINT32_MAX/sizeof(bgate_t))


/*
 * Initialization: nothing allocated yet
 */
extern void init_bgate_array(bgate_array_t *a);

/*
 * Free memory
 */
extern void delete_bgate_array(bgate_array_t *a);

/*
 * Empty the table
 */
static inline void reset_bgate_array(bgate_array_t *a) {
  a->ngates = 0;
}

/*
 * Store a new descriptor in a
 * - tt = (normalized) truth table
 * - return the index of the newly allocated element
 */
extern uint32_t store_bgate(bgate_array_t *a, ttbl_t *tt);


/*
 * Normalize a truth table with two columns:
 * - tt.nvars must be 2
 * - tt.label[0] and tt.label[1] must be literals
 * - tt.label[2] must be -1
 *
 * After normalization, we can have:
 * - tt.nvars = 0 and tt.mask = 0x00 or 0xff (constant gate)
 * - tt.nvars = 1 and tt.label[0] is a Boolean variable
 *   and tt.mask is either 0x0f or 0xf0:
 *     label[0] is the input variable X
 *     the output is either X or (not X)
 * - tt.nvars = 2 and tt.label[0] and tt.label[1] are Boolean variables
 *   and label[0] < label[1].
 *     label[0] and label[1] are two input variables
 *     tt.mask gives the truth table for the output function
 *
 * In addition, all unused labels are set to null_bvar (i.e., -1).
 * For example, if tt.nvars = 1 then both tt.label[1] and tt.label[2]
 * are equal to null_bvar.
 */
extern void normalize_truth_table2(ttbl_t *tt);

/*
 * Normalize a truth table with three columns:
 * - tt.nvars must be 3
 * - tt.label[0 .. 2] must be literals
 *
 * After normalization:
 * - tt.nvars is a number between 0 and 3.
 * - label[0 .. tt.nvars-1] are distinct Boolean variables,
 *   sorted in increasing order.
 * - tt.mask is the truth table for the defined gate.
 * - unused labels are set to null_bvars (i.e., -1).
 */
extern void normalize_truth_table3(ttbl_t *tt);


/*
 * General form
 */
extern void normalize_truth_table(ttbl_t *tt);


/*
 * Combine two binary truth tables:
 * - tt1 defines a function f(x, y)
 * - tt2 defines x as a function g(z, t)
 * - the result is the truth table for f(g(z, t), y)
 */
extern void compose_ttbl_left(const ttbl_t *tt1, const ttbl_t *tt2, ttbl_t *result);

/*
 * Combine two binary truth tables:
 * - tt1 defines f(x, y)
 * - tt2 defines y as a g(z, t)
 * - the result is the truth table for f(x, g(z, t))
 */
extern void compose_ttbl_right(const ttbl_t *tt1, const ttbl_t *tt2, ttbl_t *result);

/*
 * Try to compose three binary tables and reduce the result to
 * a three-column table.
 * - tt1 defines f(x, y)
 * - tt2 defines g(a, b) for x
 * - tt3 defined h(c, d) for y
 *
 * The function returns true if at least two of the
 * variables a, b, c, d are equal and store the truth table
 * for f(g(a, b), h(c, d)) into result.
 *
 * The function returns false otherwise.
 */
extern bool compose_ttbl_left_right1(const ttbl_t *tt1, const ttbl_t *tt2, const ttbl_t *tt3, ttbl_t *result);

/*
 * Try to compose three tables and reduce the result to a three-column table.
 * - tt1 defines f(x, y)
 * - tt2 defines g(a, b) for x
 * - tt3 defines h(c, d, e) for y
 *
 * Succeed if { a, b } is a subset of { c, d, e }.
 * In this case, store the truth table for f(g(a, b), h(c, d, e)) in result.
 * Otherwise return false.
 */
extern bool compose_ttbl_left_right2(const ttbl_t *tt1, const ttbl_t *tt2, const ttbl_t *tt3, ttbl_t *result);

/*
 * Same thing but with the tt2 defining a ternary function and tt3 a binary function.
 * - tt1 defines f(x, y)
 * - tt2 defines g(a, b, c) for x
 * - tt3 defines h(e, f) for y
 *
 * Succeed if { e, f } is a subset of { a, b, c}.
 * Return true and store the table for f(g(a, b, c), h(e, f)) in result.
 * Otherwise, return false.
 */
extern bool compose_ttbl_left_right3(const ttbl_t *tt1, const ttbl_t *tt2, const ttbl_t *tt3, ttbl_t *result);


/*
 * Same thing but with two ternary functions:
 * - tt1 defines f(x, y)
 * - tt2 defines g(a, b, c) for x
 * - tt3 defines h(d, e, f) for y
 *
 * Succeed if a = d and b = e and c = f.
 * Then store the table for f(g(a, b, c), h(d, e, f)) in result.
 * Otherwise return false.
 */
extern bool compose_ttbl_left_right4(const ttbl_t *tt1, const ttbl_t *tt2, const ttbl_t *tt3, ttbl_t *result);


/*
 * General form:
 * - tt1 defines f(x, y)
 * - tt2 defines a function g(...) for x (either binary or ternary)
 * - tt3 defines a function h(...) for y (either binary or ternary)
 *
 * Succeed if f(g(...), h(...)) can be reduced to a three-column table.
 * Store the result in *result if so, and return true.
 * Return false otherwise.
 */
extern bool compose_ttbl_left_right(const ttbl_t *tt1, const ttbl_t *tt2, const ttbl_t *tt3, ttbl_t *result);



/*
 * Normalize and store a gate with two input literals.
 * - b = truth table for the gate
 *   (only the eight low-order bits are used)
 * - l1, l2 = input literals
 * 
 * - b must be of the form [b3 b3 b2 b2 b1 b1 b0 b0]
 * - this defines a function f(l1, l2) with the following table
 *     
 *     l1   l2    f
 *
 *      0    0    b0
 *      0    1    b1
 *      1    0    b2
 *      1    1    b3
 */
extern uint32_t store_binary_gate(bgate_array_t *a, uint32_t b, literal_t l1, literal_t l2);

 
/*
 * Normalize and store a gate with three input literals:
 * - b = truth table for the gate
 *   (only the eight low-order bits are used)
 * - l1, l2, l3 = input literals
 *
 * - b is [b7 b6 b5 b4 b3 b2 b1 b0]
 * - the corresponding function is defined by this table:
 *
 *   l1   l2   l3    f 
 *
 *    0    0    0    b0
 *    0    0    1    b1
 *    0    1    0    b2
 *    0    1    1    b3
 *    1    0    0    b4
 *    1    0    1    b5
 *    1    1    0    b6
 *    1    1    1    b7
 */
extern uint32_t store_ternary_gate(bgate_array_t *a, uint32_t b, literal_t l1, literal_t l2, literal_t l3);


/*
 * Common binary gates
 */
static inline uint32_t store_or2(bgate_array_t *a, literal_t l1, literal_t l2) {
  return store_binary_gate(a, 0xfc, l1, l2);
}

static inline uint32_t store_and2(bgate_array_t *a, literal_t l1, literal_t l2) {
  return store_binary_gate(a, 0xc0, l1, l2);
}

static inline uint32_t store_xor2(bgate_array_t *a, literal_t l1, literal_t l2) {
  return store_binary_gate(a, 0x3c, l1, l2);
}


/*
 * Common ternary gates
 */
static inline literal_t store_or3(bgate_array_t *a, literal_t l1, literal_t l2, literal_t l3) {
  return store_ternary_gate(a, 0xfe, l1, l2, l3);
}

static inline literal_t store_xor3(bgate_array_t *a, literal_t l1, literal_t l2, literal_t l3) {
  return store_ternary_gate(a, 0x96, l1, l2, l3);
}

static inline literal_t store_maj3(bgate_array_t *a, literal_t l1, literal_t l2, literal_t l3) {
  return store_ternary_gate(a, 0xe8, l1, l2, l3);
}

static inline literal_t store_ite(bgate_array_t *a, literal_t c, literal_t l1, literal_t l2) {
  return store_ternary_gate(a, 0xca, c, l1, l2);
}

/*
 * Get the truth table for gate i: store it in tt
 */
extern void get_bgate(const bgate_array_t *a, uint32_t i, ttbl_t *tt);

/*
 * Get i-th element in the array
 */
static inline bgate_t *bgate(const bgate_array_t *a, uint32_t i) {
  assert(i < a->size);
  return a->data + i;
}


#endif /* __NEW_GATES_H */
