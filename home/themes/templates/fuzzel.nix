{ colors }: {
  xdg.configFile."fuzzel/colors.ini".text = ''
    [colors]
    background=${colors.bg}c4
    text=${colors.fg}ff
    prompt=${colors.fg}ff
    placeholder=${colors.fg}ff
    input=${colors.fg}ff
    match=${colors.blue}ff
    selection=${colors.magenta}ff
    selection-text=${colors.fg}ff
    selection-match=${colors.cyan}ff
    counter=${colors.white}ff
    border=${colors.sub_bg}c4
  '';
}
