{ pkgs, ... }: {
  home.packages = with pkgs; [
    obsidian
    nautilus
    loupe
    pwvucontrol
    celluloid
    amberol
  ];
}
