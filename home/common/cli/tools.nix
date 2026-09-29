{ pkgs, ... }: {
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
    nh
    ripgrep
    unar
    unzip
    usbtree
    wallust
    zip
    zoxide
  ];
}
