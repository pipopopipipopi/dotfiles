{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$subMod" = "ALT";
    "$term" = "ghostty";
    "$browser" = "zen";
    bind = [
      "$mainMod, Return, exec, $term"
      "$mainMod , b, exec, $browser"
      "$mainMod , q, killactive"

      # launcher
      "$mainMod, SPACE, exec, anyrun"

      # system
      "$mainMod, x, exec, systemctl suspend"

      # move focus
      "$mainMod, t, movefocus, l"
      "$mainMod, n, movefocus, d"
      "$mainMod, s, movefocus, u"
      "$mainMod, h, movefocus, r"
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
