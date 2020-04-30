Require Import Coq.Lists.List.
Require Import Io.All.
Require Import Io.System.All.
Require Import ListString.All.
Require Import String.

Import ListNotations.
Import C.Notations.

(** The classic Hello World program. *)
Definition hello_world (argv : list LString.t) : C.t System.effect unit :=
  System.log (LString.s "Hello, World!").

Definition main := Extraction.launch hello_world.
