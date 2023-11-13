let () =
  let open Loop in
  let i = ref 0 in
  loop (fun () ->
    i := !i + 1;
    if !i mod 2 <> 0 then continue ();
    Printf.printf "i=%d\n%!" !i;
    if !i = 10 then break ();
    ());
  Printf.printf "early return!\n%!"
