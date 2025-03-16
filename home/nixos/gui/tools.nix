{ pkgs, ... }: {
  home.packages = with pkgs; [
    obsidian
    vlc
    nautilus
  ];
}
