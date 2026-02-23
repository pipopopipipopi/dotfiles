{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    basalt
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
