{ pkgs, ... }: {
  home.packages = with pkgs; [
    fcitx5-rose-pine
    # skkDictionaries.l
    # skkDictionaries.emoji
    # skkDictionaries.geo
  ];
  xdg.dataFile = {
    "fcitx5/skk/SKK-JISYO.L".source =
      "${pkgs.skkDictionaries.l}/share/skk/SKK-JISYO.L";

    "fcitx5/skk/SKK-JISYO.geo".source =
      "${pkgs.skkDictionaries.geo}/share/skk/SKK-JISYO.geo";

    "fcitx5/skk/SKK-JISYO.emoji".source =
      "${pkgs.skkDictionaries.emoji}/share/skk/SKK-JISYO.emoji";
  };
}
