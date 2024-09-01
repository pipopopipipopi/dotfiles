{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require "wezterm"
      local darwin = wezterm.target_triple:find("darwin")
      local linux = wezterm.target_triple:find("linux")

      local config = {}

      config.window_decorations = "RESIZE"
      config.window_background_opacity = 0.77
      config.hide_tab_bar_if_only_one_tab = true

      config.use_ime = true

      if darwin then
        config.font_size = 16
      end
      if linux then
        config.font_size = 12
      end
      config.font = wezterm.font_with_fallback {
        { family = "Hack Nerd Font", weight = "Medium" },
        { family = "HackGen Console NF", weight = "Medium" },
      }

      config.color_scheme = "rose-pine-moon"

      return config
    '';
  };
}
