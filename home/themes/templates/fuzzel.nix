{ colors }: {
  xdg.configFile."fuzzel/colors.ini".text = ''
    [colors]
    background=${colors.bg}c4
    text=${colors.fg}ff
    prompt=${colors.blue}ff
    placeholder=${colors.magenta}ff
    input=${colors.fg}ff
    match=${colors.green}ff
    selection=${colors.yellow}ff
    selection-text=${colors.sub_bg}ff
    selection-match=${colors.sub_bg}ff
    counter=${colors.white}ff
    border=${colors.magenta}ff
  '';
}
