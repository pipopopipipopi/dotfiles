{ pkgs, ... }: {
  home.packages = with pkgs; [
    aerospace
    macskk
    raycast
    # brewCasks.karabiner-elements
    brewCasks.obsidian
    brewCasks.zen
  ];
}
