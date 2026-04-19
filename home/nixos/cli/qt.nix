{ pkgs, ... }: {
  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style.name = "kvantum";

    kvantum = {
      enable = true;
      themes = with pkgs; [ whitesur-kde ];
      settings.General.theme = "WhiteSur";
    };
  };
}
