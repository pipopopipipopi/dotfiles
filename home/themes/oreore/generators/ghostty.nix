{ theme }: let
  p = theme.palette-mapping;
in
''
  palette = 0=${p.bg-alt}
  palette = 1=${p.red}
  palette = 2=${p.green}
  palette = 3=${p.yellow}
  palette = 4=${p.blue}
  palette = 5=${p.magenta}
  palette = 6=${p.cyan}
  palette = 7=${p.fg-alt}
  palette = 8=${p.bg-inactive}
  palette = 9=${p.red}
  palette = 10=${p.green}
  palette = 11=${p.yellow}
  palette = 12=${p.blue}
  palette = 13=${p.magenta}
  palette = 14=${p.cyan}
  palette = 15=${p.fg-main}

  background = ${p.bg-main}
  foreground = ${p.fg-main}
  cursor-color = ${p.cursor}
  cursor-text = ${p.bg-main}
  selection-background = ${p.bg-region}
  selection-foreground = ${p.fg-main}
  split-divider-color = ${p.border}
''
