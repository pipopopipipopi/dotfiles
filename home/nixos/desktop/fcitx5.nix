{ pkgs, ... }: {
  home.packages = with pkgs; [
    fcitx5-rose-pine
    skkDictionaries.l
    skkDictionaries.emoji
    skkDictionaries.geo
  ];
}
