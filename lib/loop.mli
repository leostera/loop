val loop : (unit -> unit) -> unit
(** `loop fn` will loop the `fn` function infinitely.

    If you want to break the loop, or skip an iteration, call `break ()` or
    `continue ()` within it.
*)

val break : unit -> unit
(** `break ()` breaks out of a loop. *)

val continue : unit -> unit
(** `continue ()` skips the rest of the current loop iteration and begins the next iteration. *)
