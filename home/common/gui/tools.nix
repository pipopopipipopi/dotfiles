{ pkgs, ... }: {
  home.packages = with pkgs; [
    anki-bin
    youtube-music
  ];
}
