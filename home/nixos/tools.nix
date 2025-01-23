{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    cava
    obsidian
    vlc
    feh
    waydroid
  ];
}
