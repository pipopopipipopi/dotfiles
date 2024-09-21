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
    workspace = [
      "1, monitor:DP-1"
      "2, monitor:DP-2"
      "3, monitor:HDMI-A-1"
    ];
    input.kb_layout = "us";
  };
}
