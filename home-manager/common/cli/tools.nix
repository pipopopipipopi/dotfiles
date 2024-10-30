{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    bottom
    docker
    eza
    fd
    fzf
    gitui
    httpie
    jq
    lazydocker
    ripgrep
    zoxide

    pywal
  ];
}
