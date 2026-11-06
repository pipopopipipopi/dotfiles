{ pkgs, ... }: {
  home.packages = with pkgs; [
    bitwarden-desktop
    signal-desktop
    tutanota-desktop
    pear-desktop
  ];
}
