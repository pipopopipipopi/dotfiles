{ pkgs, ... }: {
  home.packages = with pkgs; [
    raycast
    brewCasks.obsidian
  ];
}
