{ pkgs, ... }: {
  imports = [
    ./anyrun.nix
    ./waybar.nix
    ./niri.nix
  ];

  home.packages = with pkgs; [
    anyrun
    swww # wallpaper
    wl-clipboard # clipboard manager
    waybar
  ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    hyprcursor.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
    hyprcursor.size = 24;
  };
}
