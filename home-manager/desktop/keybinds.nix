{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$subMod" = "ALT";
    bind = [
      "$mainMod, Return, exec, wezterm"
      "$mainMod , q, killactive"

      # launcher
      "$mainMod, s, exec, rofi -show drun"

      # system
      "$mainMod, x, exec, systemctl suspend"

      # move focus
      "$mainMod, j, movefocus, l"
      "$mainMod, k, movefocus, d"
      "$mainMod, l, movefocus, u"
      "$mainMod, semicolon, movefocus, r"
      "$subMod, Tab, cyclenext"
      "$subMod SHIFT, Tab, cyclenext, prev"
    ];
    bindm = [
      # move/resize window
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
  };
}
