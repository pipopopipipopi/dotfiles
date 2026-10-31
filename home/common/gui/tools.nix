{ pkgs, ... }: {
  home.packages = with pkgs; [
    tutanota-desktop
    pear-desktop
  ];
}
