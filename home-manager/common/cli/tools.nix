{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    bottom
    eza
    fd
    fzf
    gitui
    httpie
    jq
    ripgrep
    zoxide

    pywal
  ];
}
