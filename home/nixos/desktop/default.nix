{ pkgs, ... }: {
  imports = [
    ./anyrun.nix
    ./settings.nix
    ./keybinds.nix
    ./waybar.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  home.packages = with pkgs; [
    anyrun
    swww # wallpaper
    wl-clipboard # clipboard manager
    waybar
    hyprcursor
  ];
}
