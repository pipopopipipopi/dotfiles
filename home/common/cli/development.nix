{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # Languages
    ## C
    gcc

    ## Clojure
    clojure

    ## Erlang
    erlang

    ## Gleam
    gleam

    ## Hy
    hy

    ## Common Lisp
    sbcl

    ## Python
    python312

    ## Rust
    fenix.stable.toolchain

    ## Steel
    steel

    ## Tex
    # texliveMedium

    ## Typst
    typst
  ];
}
