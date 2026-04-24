{ pkgs, ... }: {
  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style.name = "kvantum";

    kvantum = {
      enable = true;
      themes = with pkgs; [ utterly-nord-plasma ];
      settings.General.theme = "Utterly-Nord-Light-Solid";
    };
  };
}
