exception Break_exn

type _ Effect.t += Break : unit Effect.t
type _ Effect.t += Continue : unit Effect.t

let break () = Effect.perform Break
let continue () = Effect.perform Continue

let rec loop : (unit -> unit) -> unit =
 fun fn ->
  Effect.Deep.try_with
    (fun () ->
      try
        while true do
          fn ()
        done
      with Break_exn -> ())
    () (loop_handler fn)

and loop_handler fn =
  let effc :
      type x. x Effect.t -> ((x, 'a) Effect.Deep.continuation -> 'b) option =
   fun eff ->
    match eff with
    | Break ->
        Some
          (fun (k : (unit, unit) Effect.Deep.continuation) ->
            Effect.Deep.discontinue k Break_exn)
    | Continue ->
        Some (fun (_ : (unit, unit) Effect.Deep.continuation) -> loop fn)
    | _ -> None
  in
  Effect.Deep.{ effc }
