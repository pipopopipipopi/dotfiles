{ pkgs, ... }: {
  home.packages = with pkgs; [
    signal-desktop
    tutanota-desktop
    pear-desktop
  ];
}
