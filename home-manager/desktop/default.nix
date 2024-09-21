{ pkgs, ... }: 
{
  imports = [
    ./settings.nix
    ./keybinds.nix
    ./rofi.nix
    ./waybar.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
  };

  home.packages =
    (with pkgs; [
      swww # wallpaper
      waybar
    ]);
}
