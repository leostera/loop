(lang dune 3.11)

(name loop)

(generate_opam_files true)

(source
 (github leostera/loop))

(authors "Leandro Ostera <leandro@abstractmachines.dev>")

(maintainers "Leandro Ostera <leandro@abstractmachines.dev>")

(license MIT)

(package
 (name loop)
 (synopsis "Unbounded loops with continues and breaks")
 (description "A small control-flow utility for unbounded loops with support for `break` and
`continue`ing loops.

By default it will loop infinitely, but it won't get in the way of unbounded
exceptions or other unhandled effects")
 (depends (ocaml (>= "5.0")) dune)
 (tags
  (topics "control flow" loop loops)))
