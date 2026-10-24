{ pkgs, ... }: {
  home.packages = with pkgs; [
    bottom
    docker
    dust
    eza
    fd
    fzf
    gnumake
    lazydocker
    nh
    ripgrep
    unar
    usbtree
    wallust
    zip
    zoxide
  ];
}
