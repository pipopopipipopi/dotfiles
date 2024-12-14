{ pkgs, ... }: {
  home.packages = with pkgs; [
    anki-bin
    discord
    vesktop
  ];
}
