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
    gemini-cli
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

    matugen
  ];
}
