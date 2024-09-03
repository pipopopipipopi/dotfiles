{
  imports = [
    ../../home-manager/cli
    ../../home-manager/gui
    ../../home-manager/gui/nixos
    ../../home-manager/desktop
  ];
  wayland.windowManager.hyprland.settings = {
    monitor = [
      "DP-1, 1920x1080@144, -1080x-480, 1, transform, 1"
      "DP-2, 1920x1080@165, 0x0, 1"
      "HDMI-A-1, 1920x1080@60, 1920x0, 1"
      "Unknown-1, disable"
    ];
    input.kb_layout = "us";
  };
}
