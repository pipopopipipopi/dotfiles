{ theme }: let
  p = theme.palette-mapping;
in
''
  [colors.primary]
  background = "${p.bg-main}"
  foreground = "${p.fg-main}"
  dim_foreground = "${p.fg-dim}"
  bright_foreground = "${p.fg-alt}"

  [colors.cursor]
  text = "${p.bg-main}"
  cursor = "${p.cursor}"

  [colors.vi_mode_cursor]
  text = "${p.bg-main}"
  cursor = "${p.accent-0}"

  [colors.search.matches]
  foreground = "${p.fg-main}"
  background = "${p.bg-yellow-subtle}"

  [colors.search.focused_match]
  foreground = "${p.fg-main}"
  background = "${p.bg-yellow-intense}"

  [colors.footer_bar]
  foreground = "${p.fg-main}"
  background = "${p.bg-alt}"

  [colors.hints.start]
  foreground = "${p.fg-main}"
  background = "${p.bg-green-subtle}"

  [colors.hints.end]
  foreground = "${p.fg-main}"
  background = "${p.bg-alt}"

  [colors.selection]
  text = "${p.fg-main}"
  background = "${p.bg-region}"

  [colors.normal]
  black = "${p.fg-main}"
  red = "${p.red}"
  green = "${p.green}"
  yellow = "${p.yellow}"
  blue = "${p.blue}"
  magenta = "${p.magenta}"
  cyan = "${p.cyan}"
  white = "${p.fg-dim}"

  [colors.bright]
  black = "${p.fg-dim}"
  red = "${p.red-warmer}"
  green = "${p.green-warmer}"
  yellow = "${p.yellow-warmer}"
  blue = "${p.blue-warmer}"
  magenta = "${p.magenta-warmer}"
  cyan = "${p.cyan-warmer}"
  white = "${p.fg-main}"

  [colors.dim]
  black = "${p.fg-dim}"
  red = "${p.red-faint}"
  green = "${p.green-faint}"
  yellow = "${p.yellow-faint}"
  blue = "${p.blue-faint}"
  magenta = "${p.magenta-faint}"
  cyan = "${p.cyan-faint}"
  white = "${p.fg-alt}"
''
