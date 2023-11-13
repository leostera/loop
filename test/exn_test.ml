let () =
  let open Loop in
  let exception Oops in
  try 
    loop (fun () -> raise Oops)
  with
  | Oops -> Printf.printf "unhandled exceptions are raised\n%!"
