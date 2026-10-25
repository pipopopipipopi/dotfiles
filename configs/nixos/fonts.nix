{ pkgs, ... }: {
  fonts = {
    packages =
      (with pkgs; [
        nerd-fonts.jetbrains-mono
        hackgen-nf-font
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        noto-fonts-color-emoji
        twitter-color-emoji
        takao
      ]);
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        serif = [
          "Noto Serif CJK JP"
          "Twitter Color Emoji"
        ];
        sansSerif = [
          "Noto Sans CJK JP"
          "Twitter Color Emoji"
        ];
        monospace = [
          "JetBrainsMono Nerd Font"
          "HackGen Console NF"
          "Twitter Color Emoji"
        ];
        emoji = [ "Twitter Color Emoji" ];
      };
    };
  };
}
