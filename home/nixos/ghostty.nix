{ inputs, pkgs, ... }: {
  programs.ghostty = {
    enable = true;

    package = inputs.ghostty.packages.${pkgs.system}.default;

    settings = {
      shell-integration = "fish";

      theme = "amewotaguru";

      font-family = ["JetBrainsMono Nerd Font Mono" "HackGen Console NF" "Twitter Color Emoji"];
      font-style = "Medium";
      font-size = 12;
      font-feature = ["-liga" "-dlig" "-calt"];

      cursor-style = "block";
      cursor-style-blink = false;
      cursor-click-to-move = true;
      shell-integration-features = "no-cursor";
      mouse-hide-while-typing = true;

      background-opacity = 0.77;

      window-decoration = false;
      macos-titlebar-style = "hidden";
      macos-window-shadow = false;

      window-padding-x = 6;
      window-padding-y = 6;
      window-padding-balance = true;

      keybind = "ctrl+j=ignore";

      resize-overlay = "never";
    };

    themes = {
      amewotaguru = {
        background = "0f0c13";
        foreground = "d8cad0";
        cursor-color = "d8cad0";
        cursor-text = "0f0c13";
        palette = [
          # black
          "0=#0f0c13"
          "8=#978d91"
          # red
          "1=#84526b"
          "9=#a4728b"
          # green
          "2=#6f84a2"
          "10=#8fa4c2"
          # yellow
          "3=#9ca787"
          "11=#bcc7a7"
          # blue
          "4=#3a6583"
          "12=#5a85a3"
          # magenta
          "5=#997a8b"
          "13=#b99aab"
          # cyan
          "6=#677095"
          "14=#8790a5"
          # white
          "7=#d8cad0"
          "15=#f8eaf0"
        ];
        selection-background = "6c708e";
        selection-foreground = "0f0c13";
      };
    };
  };
}
