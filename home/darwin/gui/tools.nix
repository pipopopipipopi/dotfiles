{ pkgs, ... }: {
  home.packages = with pkgs; [
    aerospace
    raycast
    brewCasks.obsidian
    brewCasks.zen
  ];
}
