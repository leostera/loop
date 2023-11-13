# loop

A small control-flow utility for unbounded loops with support for `break` and
`continue`ing loops.

By default it will loop infinitely, but it won't get in the way of unbounded
exceptions or other unhandled effects.

## Getting Started

```
opam install loop
```

## Usage

The usage should feel rather natural:

1. start a loop
2. call `continue` or `break` as you see fit

### Examples

Here's a small REPL:

```ocaml
let repl () =
  let open Loop in
  loop (fun () ->
    let expr = read () in
    let result = eval expr in
    print result;
    match result with
    | Exit -> break ()
    | _ -> ())
```
