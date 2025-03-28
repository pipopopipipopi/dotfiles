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
    gnutar
    httpie
    jq
    lazydocker
    ripgrep
    unzip
    zip
    zoxide

    pywal
  ];
}
