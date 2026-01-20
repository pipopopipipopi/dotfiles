{ inputs, pkgs, ... }: {
  imports = [
    ./anyrun
    ./eww
    ./fuzzel
    ./niri
    ./fcitx5.nix
    ./mako.nix
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
  ]
  ++ (with inputs; [
    awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
  ]);

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
