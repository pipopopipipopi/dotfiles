{
  pkgs,
  ...
}: {
  fonts = {
    fontDir.enable = true;

    fonts = with pkgs; [
      nerdfonts
      hackgen-nf-font
    ];
  };
}
