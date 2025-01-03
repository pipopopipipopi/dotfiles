{
  wayland.windowManager.hyprland.settings = {
    env = [
      "GTK_IM_MODULE, fcitx"
      "QT_IM_MODULE, fcitx"
      "XMODIFIERS, @im=fcitx"
      "HYPRCURSOR_SIZE, 24"
      "HYPRCURSOR_THEME, HyprBibataModernClassicSVG"
    ];
    exec-once = [
      "swww init"
      "fcitx5 -D"
      "vesktop --start-minimized"
    ];
    input = {
      repeat_delay = 300;
      repeat_rate = 30;
      follow_mouse = 1;
      sensitivity = 1.0;
      accel_profile = "flat";
    };
    general = {
      gaps_in = 5;
      gaps_out = 5;
      border_size = 2;
      resize_on_border = true;
    };
    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 3;
        passes = 1;
        xray = true;
        ignore_opacity = true;
        new_optimizations = true;
      };
    };
    misc = {
      disable_hyprland_logo = true;
    };
  };
}
