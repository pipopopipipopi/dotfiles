{
  imports = [
    ../../home/themes
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
}
