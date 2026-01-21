{ colors, ... }: {
  xdg.configFile."wezterm/colors/colors.toml".text = ''
    [colors]
    foreground = "${colors.fg}"
    background = "${colors.bg}"
    cursor_fg = "${colors.fg}"
    cursor_bg = "${colors.sub_bg}"
    cursor_border = "${colors.sub_bg}"
    selection_fg = "${colors.fg}"
    selection_bg = "${colors.sub_bg}"

    ansi = [
      "${colors.black}",
      "${colors.red}",
      "${colors.green}",
      "${colors.yellow}",
      "${colors.blue}",
      "${colors.magenta}",
      "${colors.cyan}",
      "${colors.white}"
    ]

    brights = [
      "${colors.bright_black}",
      "${colors.bright_red}",
      "${colors.bright_green}",
      "${colors.bright_yellow}",
      "${colors.bright_blue}",
      "${colors.bright_magenta}",
      "${colors.bright_cyan}",
      "${colors.bright_white}"
    ]

    [metadata]
    name = "my_theme"
  '';
}
