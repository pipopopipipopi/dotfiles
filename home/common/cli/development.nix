{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # Languages
    ## C
    gcc

    ## Common Lisp
    # sbcl

    ## Rust
    # fenix.stable.toolchain

    ## Steel
    steel

    ## Typst
    # typst
  ];
}
