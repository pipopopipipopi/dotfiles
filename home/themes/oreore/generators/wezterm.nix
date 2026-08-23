{ theme }: let
  p = theme.palette-mapping;
in
''
  [colors]
  foreground = "${p.fg-main}"
  background = "${p.bg-main}"

  cursor_fg = "${p.fg-main}"
  cursor_bg = "${p.bg-region}"
  cursor_border = "${p.bg-region}"

  selection_fg = "${p.fg-main}"
  selection_bg = "${p.bg-region}"

  ansi = [
    "${p.fg-main}",
    "${p.red}",
    "${p.green}",
    "${p.yellow}",
    "${p.blue}",
    "${p.magenta}",
    "${p.cyan}",
    "${p.fg-dim}"
  ]

  brights = [
    "${p.fg-dim}",
    "${p.red-warmer}",
    "${p.green-warmer}",
    "${p.yellow-warmer}",
    "${p.blue-warmer}",
    "${p.magenta-warmer}",
    "${p.cyan-warmer}",
    "${p.fg-main}"
  ]

  [metadata]
  name = "oreore"
''
