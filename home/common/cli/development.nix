{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # Languages
    ## C
    gcc

    ## Gleam
    gleam

    ## Lisp
    sbcl

    ## Python
    python312

    ## Rust
    rust-bin.stable.latest.default

    ## Steel
    steel

    ## Tex
    texlive.combined.scheme-full

    ## Typst
    typst
  ];
}
