{
  imports = [
    ../../home/common/cli
    ../../home/common/gui
    ../../home/nixos/cli
    ../../home/nixos/desktop
    ../../home/nixos/gui
  ];
  programs.niri.settings.outputs = {
    "DP-1" = {
      scale = 1.0;
      mode = {
        width = 1920;
        height = 1080;
        refresh = null;
      };
      position = {
        x = -1080;
        y = -480;
      };
      transform.rotation = 90;
    };
    "DP-2" = {
      scale = 1.0;
      mode = {
        width = 1920;
        height = 1080;
        refresh = null;
      };
      position = {
        x = 0;
        y = 0;
      };
    };
    "HDMI-A-1" = {
      scale = 1.0;
      mode = {
        width = 1920;
        height = 1080;
        refresh = null;
      };
      position = {
        x = 1920;
        y = 0;
      };
    };
  };
  wayland.windowManager.hyprland.settings = {
    # https://wiki.hyprland.org/Nvidia/
    env = [
      "LIBVA_DRIVER_NAME,nvidia"
      "__GLX_VENDOR_LIBRARY_NAME,nvidia"
    ];
    monitor = [
      "DP-1, 1920x1080@144, -1080x-480, 1, transform, 1"
      "DP-2, 1920x1080@165, 0x0, 1"
      "HDMI-A-1, 1920x1080@60, 1920x0, 1"
      "Unknown-1, disable"
    ];
    workspace = [
      "6, monitor:DP-1"
      "7, monitor:DP-1"
      "8, monitor:DP-1"
      "9, monitor:DP-1"
      "10, monitor:DP-1"
      "1, monitor:DP-2"
      "2, monitor:DP-2"
      "3, monitor:DP-2"
      "4, monitor:DP-2"
      "5, monitor:DP-2"
      "11, monitor:HDMI-A-1"
      "12, monitor:HDMI-A-1"
      "13, monitor:HDMI-A-1"
      "14, monitor:HDMI-A-1"
      "15, monitor:HDMI-A-1"
    ];
    input.kb_layout = "us";
    cursor = {
      no_hardware_cursors = 2;
    };
  };
}
