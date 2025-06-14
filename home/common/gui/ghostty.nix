{ inputs, pkgs, ... }: {
  programs.ghostty = {
    enable = true;

    package =
      if pkgs.stdenv.isLinux then
        inputs.ghostty.packages.${pkgs.system}.default
      else if pkgs.stdenv.isDarwin then
        pkgs.brewCasks.ghostty
      else
        throw "unsupported system ${pkgs.stdenv.hostPlathome.system}";

    installBatSyntax = false;

    settings = {
      shell-integration = "fish";

      theme = "matugen";

      font-family = ["JetBrainsMono Nerd Font" "HackGen Console NF" "Twitter Color Emoji"];
      font-style = "Medium";
      font-size = 
        if pkgs.stdenv.isLinux then 12 else 16;
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
  };
}
