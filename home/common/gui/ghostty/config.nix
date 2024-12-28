{
  home.file.ghostty = {
    target = ".config/ghostty/config";
    text = ''
      font-family = JetBrainsMono Nerd Font Mono
      font-style = Medium
      font-size = 12
      font-feature = "-calt"
      font-feature = "-clig"
      font-feature = "-liga"

      cursor-color = #d8cad0
      cursor-text = #0f0c13
      cursor-opacity = 1
      cursor-style = block
      cursor-style-blink = false
      cursor-click-to-move = true
      shell-integration-features = no-cursor

      background-opacity = 0.77

      gtk-titlebar = false

      foreground = #d8cad0
      background = #0f0c13
      selection-foreground = #0f0c13
      selection-background = #6c708e

      title = " "

      # black
      palette = 0=#0f0c13
      palette = 8=#978d91

      # red
      palette = 1=#84526b
      palette = 9=#a4728b

      # green
      palette = 2=#6f84a2
      palette = 10=#8fa4c2

      # yellow
      palette = 3=#9ca787
      palette = 11=#bcc7a7

      # blue
      palette = 4=#3a6583
      palette = 12=#5a85a3

      # magenta
      palette = 5=#997a8b
      palette = 13=#b99aab

      # cyan
      palette = 6=#677095
      palette = 14=#8790a5

      # white
      palette = 7=#d8cad0
      palette = 15=#f8eaf0
    '';
  };
}
