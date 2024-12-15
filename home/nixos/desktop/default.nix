{ pkgs, ... }: {
  imports = [
    ./settings.nix
    ./keybinds.nix
    ./rofi.nix
    ./waybar.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  home.packages =
    (with pkgs; [
      swww # wallpaper
      wl-clipboard # clipboard manager

      waybar
    ]);
}
