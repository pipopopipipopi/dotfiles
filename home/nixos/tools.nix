{
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    cava
    obsidian
    zed-editor
  ];
}
