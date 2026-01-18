{ pkgs, ... }: {
  imports = [
    ./anyrun
    ./fuzzel
    ./niri
    ./fcitx5.nix
    ./noctalia.nix
    ./swaync
    # ./niri.nix
    ./waybar.nix
    ./xdg.nix
  ];

  home.packages = with pkgs; [
    swww # wallpaper
    wl-clipboard # clipboard manager
    waybar
    grim
    slurp
  ];

  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    # hyprcursor.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
    # hyprcursor.size = 24;
  };
}
