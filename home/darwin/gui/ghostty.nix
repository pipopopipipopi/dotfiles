{
  home.file.ghostty = {
    target = ".config/ghostty/config";
    text = ''
      shell-integration = fish
      font-family = JetBrainsMono Nerd Font Mono
      font-family = HackGen Console NF
      font-family = Twitter Color Emoji
      font-style = Medium
      font-size = 16
      font-feature = -calt
      font-feature = -liga
      font-feature = -dlig
      cursor-color = #d8cad0
      cursor-text = #0f0c13
      cursor-opacity = 1
      cursor-style = block
      cursor-style-blink = false
      cursor-click-to-move = true
      mouse-hide-while-typing = true
      shell-integration-features = no-cursor
      background-opacity = 0.77
      window-decoration = false
      macos-titlebar-style = hidden
      macos-window-shadow = false
      window-padding-x = 6
      window-padding-y = 6
      keybind = ctrl+j=ignore
      resize-overlay = never
      foreground = #d8cad0
      background = #0f0c13
      selection-foreground = #0f0c13
      selection-background = #6c708e
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
