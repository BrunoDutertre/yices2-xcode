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
 * TEMPLATE FOR GENERATING yices_version.c
 */


/*
 * Visibility control: version strings are part of the API.
 *
 * On cygwin/mingw, we have two cases:
 * - static build: NOYICES_DLL is defined
 * - dynamic build: NOYICES_DLL is not defined
 *
 * If NOYICES_DLL not defined, we must predix the version strings
 * with __declspec(dllexport)
 */
#if defined(CYGWIN) || defined(MINGW)
#if defined(NOYICES_DLL)
#define EXPORTED
#else
#define EXPORTED __declspec(dllexport)
#endif
#else
#define EXPORTED __attribute__((visibility("default")))
#endif


EXPORTED const char * const yices_version = "2.6.0";
EXPORTED const char * const yices_build_date = "2018-12-21";
EXPORTED const char * const yices_build_arch = "x86_64-apple-darwin18.2.0";

#if defined(YICES_STATIC)
#ifndef NDEBUG
EXPORTED const char * const yices_build_mode = "debug/static";
#else
EXPORTED const char * const yices_build_mode = "release/static";
#endif
#else
#ifndef NDEBUG
EXPORTED const char * const yices_build_mode = "debug";
#else
EXPORTED const char * const yices_build_mode = "release";
#endif
#endif

#ifndef NDEBUG
const char * const yices_rev = "fb1b6e099ed82565f690eb2665ec43d34abbe9f1";
#endif
