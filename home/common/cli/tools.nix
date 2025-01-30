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
    gnumake
    httpie
    jq
    lazydocker
    ripgrep
    zoxide

    pywal
  ];
}
