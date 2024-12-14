{ pkgs, ... }: {
  home.packages = with pkgs; [
    aerospace
    raycast
  ];
}
