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
    gnumake
    gnutar
    httpie
    jq
    lazydocker
    ripgrep
    unar
    unzip
    zip
    zoxide
  ];
}
