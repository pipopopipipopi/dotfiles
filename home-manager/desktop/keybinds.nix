{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$subMod" = "ALT";
    "$term" = "wezterm";
    "$browser" = "zen";
    bind = [
      "$mainMod, Return, exec, $term"
      "$mainMod , b, exec, $browser"
      "$mainMod , q, killactive"

      # launcher
      "$mainMod, SPACE, exec, rofi -show drun"

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
