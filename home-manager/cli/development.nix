{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # Languages
    ## C
    gcc

    ## Lisp
    sbcl

    ## Python
    python312

    ## Rust
    rust-bin.stable.latest.default
  ];
}
