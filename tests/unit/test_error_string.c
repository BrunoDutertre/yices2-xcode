/*
 * This file is part of the Yices SMT Solver.
 * Copyright (C) 2017 SRI International.
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
 * Go through all error codes and call error_string for all of them
 */

#include <stdio.h>

#include "yices.h"

/*
 * All the error codes defined in yices_types.h
 */
#define NUM_CODES 109

static const error_code_t all_codes[NUM_CODES] = {
  NO_ERROR,
  INVALID_TYPE,
  INVALID_TERM,
  INVALID_CONSTANT_INDEX,
  INVALID_VAR_INDEX,
  INVALID_TUPLE_INDEX,
  INVALID_RATIONAL_FORMAT,
  INVALID_FLOAT_FORMAT,
  INVALID_BVBIN_FORMAT,
  INVALID_BVHEX_FORMAT,
  INVALID_BITSHIFT,
  INVALID_BVEXTRACT,
  INVALID_BITEXTRACT,
  TOO_MANY_ARGUMENTS,
  TOO_MANY_VARS,
  MAX_BVSIZE_EXCEEDED,
  DEGREE_OVERFLOW,
  DIVISION_BY_ZERO,
  POS_INT_REQUIRED,
  NONNEG_INT_REQUIRED,
  SCALAR_OR_UTYPE_REQUIRED,
  FUNCTION_REQUIRED,
  TUPLE_REQUIRED,
  VARIABLE_REQUIRED,
  ARITHTERM_REQUIRED,
  BITVECTOR_REQUIRED,
  SCALAR_TERM_REQUIRED,
  WRONG_NUMBER_OF_ARGUMENTS,
  TYPE_MISMATCH,
  INCOMPATIBLE_TYPES,
  DUPLICATE_VARIABLE,
  INCOMPATIBLE_BVSIZES,
  EMPTY_BITVECTOR,
  ARITHCONSTANT_REQUIRED,
  INVALID_MACRO,
  TOO_MANY_MACRO_PARAMS,
  TYPE_VAR_REQUIRED,
  DUPLICATE_TYPE_VAR,
  BVTYPE_REQUIRED,
  BAD_TERM_DECREF,
  BAD_TYPE_DECREF,
  INVALID_TYPE_OP,
  INVALID_TERM_OP,
  INVALID_TOKEN,
  SYNTAX_ERROR,
  UNDEFINED_TYPE_NAME,
  UNDEFINED_TERM_NAME,
  REDEFINED_TYPE_NAME,
  REDEFINED_TERM_NAME,
  DUPLICATE_NAME_IN_SCALAR,
  DUPLICATE_VAR_NAME,
  INTEGER_OVERFLOW,
  INTEGER_REQUIRED,
  RATIONAL_REQUIRED,
  SYMBOL_REQUIRED,
  TYPE_REQUIRED,
  NON_CONSTANT_DIVISOR,
  NEGATIVE_BVSIZE,
  INVALID_BVCONSTANT,
  TYPE_MISMATCH_IN_DEF,
  ARITH_ERROR,
  BVARITH_ERROR,
  CTX_FREE_VAR_IN_FORMULA,
  CTX_LOGIC_NOT_SUPPORTED,
  CTX_UF_NOT_SUPPORTED,
  CTX_ARITH_NOT_SUPPORTED,
  CTX_BV_NOT_SUPPORTED,
  CTX_ARRAYS_NOT_SUPPORTED,
  CTX_QUANTIFIERS_NOT_SUPPORTED,
  CTX_LAMBDAS_NOT_SUPPORTED,
  CTX_NONLINEAR_ARITH_NOT_SUPPORTED,
  CTX_FORMULA_NOT_IDL,
  CTX_FORMULA_NOT_RDL,
  CTX_TOO_MANY_ARITH_VARS,
  CTX_TOO_MANY_ARITH_ATOMS,
  CTX_TOO_MANY_BV_VARS,
  CTX_TOO_MANY_BV_ATOMS,
  CTX_ARITH_SOLVER_EXCEPTION,
  CTX_BV_SOLVER_EXCEPTION,
  CTX_ARRAY_SOLVER_EXCEPTION,
  CTX_SCALAR_NOT_SUPPORTED,
  CTX_TUPLE_NOT_SUPPORTED,
  CTX_UTYPE_NOT_SUPPORTED,
  CTX_INVALID_OPERATION,
  CTX_OPERATION_NOT_SUPPORTED,
  CTX_INVALID_CONFIG,
  CTX_UNKNOWN_PARAMETER,
  CTX_INVALID_PARAMETER_VALUE,
  CTX_UNKNOWN_LOGIC,
  EVAL_UNKNOWN_TERM,
  EVAL_FREEVAR_IN_TERM,
  EVAL_QUANTIFIER,
  EVAL_LAMBDA,
  EVAL_OVERFLOW,
  EVAL_FAILED,
  EVAL_CONVERSION_FAILED,
  EVAL_NO_IMPLICANT,
  MDL_UNINT_REQUIRED,
  MDL_CONSTANT_REQUIRED,
  MDL_DUPLICATE_VAR,
  MDL_FTYPE_NOT_ALLOWED,
  MDL_CONSTRUCTION_FAILED,  
  YVAL_INVALID_OP,
  YVAL_OVERFLOW,
  MDL_GEN_TYPE_NOT_SUPPORTED,
  MDL_GEN_NONLINEAR,
  MDL_GEN_FAILED,
  OUTPUT_ERROR,
  INTERNAL_EXCEPTION,
};

static const char* const all_names[NUM_CODES] = {
  "NO_ERROR",
  "INVALID_TYPE",
  "INVALID_TERM",
  "INVALID_CONSTANT_INDEX",
  "INVALID_VAR_INDEX",
  "INVALID_TUPLE_INDEX",
  "INVALID_RATIONAL_FORMAT",
  "INVALID_FLOAT_FORMAT",
  "INVALID_BVBIN_FORMAT",
  "INVALID_BVHEX_FORMAT",
  "INVALID_BITSHIFT",
  "INVALID_BVEXTRACT",
  "INVALID_BITEXTRACT",
  "TOO_MANY_ARGUMENTS",
  "TOO_MANY_VARS",
  "MAX_BVSIZE_EXCEEDED",
  "DEGREE_OVERFLOW",
  "DIVISION_BY_ZERO",
  "POS_INT_REQUIRED",
  "NONNEG_INT_REQUIRED",
  "SCALAR_OR_UTYPE_REQUIRED",
  "FUNCTION_REQUIRED",
  "TUPLE_REQUIRED",
  "VARIABLE_REQUIRED",
  "ARITHTERM_REQUIRED",
  "BITVECTOR_REQUIRED",
  "SCALAR_TERM_REQUIRED",
  "WRONG_NUMBER_OF_ARGUMENTS",
  "TYPE_MISMATCH",
  "INCOMPATIBLE_TYPES",
  "DUPLICATE_VARIABLE",
  "INCOMPATIBLE_BVSIZES",
  "EMPTY_BITVECTOR",
  "ARITHCONSTANT_REQUIRED",
  "INVALID_MACRO",
  "TOO_MANY_MACRO_PARAMS",
  "TYPE_VAR_REQUIRED",
  "DUPLICATE_TYPE_VAR",
  "BVTYPE_REQUIRED",
  "BAD_TERM_DECREF",
  "BAD_TYPE_DECREF",
  "INVALID_TERM_OP",
  "INVALID_TOKEN",
  "SYNTAX_ERROR",
  "UNDEFINED_TYPE_NAME",
  "UNDEFINED_TERM_NAME",
  "REDEFINED_TYPE_NAME",
  "REDEFINED_TERM_NAME",
  "DUPLICATE_NAME_IN_SCALAR",
  "DUPLICATE_VAR_NAME",
  "INTEGER_OVERFLOW",
  "INTEGER_REQUIRED",
  "RATIONAL_REQUIRED",
  "SYMBOL_REQUIRED",
  "TYPE_REQUIRED",
  "NON_CONSTANT_DIVISOR",
  "NEGATIVE_BVSIZE",
  "INVALID_BVCONSTANT",
  "TYPE_MISMATCH_IN_DEF",
  "ARITH_ERROR",
  "BVARITH_ERROR",
  "CTX_FREE_VAR_IN_FORMULA",
  "CTX_LOGIC_NOT_SUPPORTED",
  "CTX_UF_NOT_SUPPORTED",
  "CTX_ARITH_NOT_SUPPORTED",
  "CTX_BV_NOT_SUPPORTED",
  "CTX_ARRAYS_NOT_SUPPORTED",
  "CTX_QUANTIFIERS_NOT_SUPPORTED",
  "CTX_LAMBDAS_NOT_SUPPORTED",
  "CTX_NONLINEAR_ARITH_NOT_SUPPORTED",
  "CTX_FORMULA_NOT_IDL",
  "CTX_FORMULA_NOT_RDL",
  "CTX_TOO_MANY_ARITH_VARS",
  "CTX_TOO_MANY_ARITH_ATOMS",
  "CTX_TOO_MANY_BV_VARS",
  "CTX_TOO_MANY_BV_ATOMS",
  "CTX_ARITH_SOLVER_EXCEPTION",
  "CTX_BV_SOLVER_EXCEPTION",
  "CTX_ARRAY_SOLVER_EXCEPTION",
  "CTX_SCALAR_NOT_SUPPORTED",
  "CTX_TUPLE_NOT_SUPPORTED",
  "CTX_UTYPE_NOT_SUPPORTED",
  "CTX_INVALID_OPERATION",
  "CTX_OPERATION_NOT_SUPPORTED",
  "CTX_INVALID_CONFIG",
  "CTX_UNKNOWN_PARAMETER",
  "CTX_INVALID_PARAMETER_VALUE",
  "CTX_UNKNOWN_LOGIC",
  "EVAL_UNKNOWN_TERM",
  "EVAL_FREEVAR_IN_TERM",
  "EVAL_QUANTIFIER",
  "EVAL_LAMBDA",
  "EVAL_OVERFLOW",
  "EVAL_FAILED",
  "EVAL_CONVERSION_FAILED",
  "EVAL_NO_IMPLICANT",
  "MDL_UNINT_REQUIRED",
  "MDL_CONSTANT_REQUIRED",
  "MDL_DUPLICATE_VAR",
  "MDL_FTYPE_NOT_ALLOWED",
  "MDL_CONSTRUCTION_FAILED",  
  "YVAL_INVALID_OP",
  "YVAL_OVERFLOW",
  "MDL_GEN_TYPE_NOT_SUPPORTED",
  "MDL_GEN_NONLINEAR",
  "MDL_GEN_FAILED",
  "OUTPUT_ERROR",
  "INTERNAL_EXCEPTION",
};

static void test_error(error_code_t code, const char *name) {
  error_report_t *report;
  char *str;

  report = yices_error_report();
  report->code = code;
  report->line = 12;
  report->column = 30;
  report->term1 = NULL_TERM;
  report->type1 = NULL_TYPE;
  report->term2 = NULL_TERM;
  report->type2 = NULL_TYPE;
  report->badval= INT64_MIN;

  printf("Testing error_string for %s (code = %d)\n", name, code);
  str = yices_error_string();
  printf(" got error string: `%s`\n", str);
  yices_free_string(str);
  printf("---\n");
}


int main(void) {
  uint32_t i;

  yices_init();
  for (i=0; i<NUM_CODES; i++) {
    test_error(all_codes[i], all_names[i]);
  }
  yices_exit();

  return 0;
}
