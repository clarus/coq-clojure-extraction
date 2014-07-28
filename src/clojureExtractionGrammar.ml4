(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2014     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(*i camlp4deps: "parsing/grammar.cma" i*)

(* ML names *)

open Vernacexpr
open Pcoq
open Genarg
open Pp
open Names
open Nameops
open Table
open ClojureExtractionEnv

(* Extraction commands *)

(*VERNAC COMMAND EXTEND ClojureExtraction
(* Extraction in the Coq toplevel *)
| [ "ClojureExtraction" global(x) ] -> [ simple_extraction x ]
END*)