{
  pkgs,
  ...
}: {
  fonts = {
    packages = with pkgs; [
      nerdfonts
      hackgen-nf-font
      twitter-color-emoji
    ];
  };
}
