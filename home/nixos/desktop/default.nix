{ pkgs, ... }: {
  imports = [
    ./anyrun.nix
    ./settings.nix
    ./keybinds.nix
    ./waybar.nix
    ./niri.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    #xwayland.enable = true;
  };

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
