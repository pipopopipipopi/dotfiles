{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      udev-gothic-nf
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      twitter-color-emoji
    ];
  };
}
