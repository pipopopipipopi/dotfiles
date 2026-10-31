{ theme }: let
  p = theme.palette-mapping;
in
''
  palette = 0=${p.fg-main}
  palette = 1=${p.red}
  palette = 2=${p.green}
  palette = 3=${p.yellow}
  palette = 4=${p.blue}
  palette = 5=${p.magenta}
  palette = 6=${p.cyan}
  palette = 7=${p.fg-dim}
  palette = 8=${p.fg-dim}
  palette = 9=${p.red-warmer}
  palette = 10=${p.green-warmer}
  palette = 11=${p.yellow-warmer}
  palette = 12=${p.blue-warmer}
  palette = 13=${p.magenta-warmer}
  palette = 14=${p.cyan-warmer}
  palette = 15=${p.fg-main}

  background = ${p.bg-main}
  foreground = ${p.fg-main}
  cursor-color = ${p.cursor}
  cursor-text = ${p.bg-main}
  selection-background = ${p.bg-region}
  selection-foreground = ${p.fg-main}
  split-divider-color = ${p.border}
''
