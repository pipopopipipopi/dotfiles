{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    bottom
    docker
    dust
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
