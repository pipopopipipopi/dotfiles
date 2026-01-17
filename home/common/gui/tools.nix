{ pkgs, ... }: {
  home.packages = with pkgs; [
    anki-bin
    pear-desktop
  ];
}
