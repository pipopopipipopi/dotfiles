{ pkgs, ... }: {
  qt = {
    enable = true;
    platformTheme.name = "qtct";
    # style.name = "kvantum";

    # kvantum = {
    #   enable = true;
    #   themes = with pkgs; [ utterly-nord-plasma ];
    #   settings.General.theme = "Utterly-Nord-Light-Solid";
    # };
  };

  xdg.configFile."qt5ct/qt5ct.conf".text = ''
    [Appearance]
    color_scheme_path=$HOME/.config/qt5ct/colors/matugen_theme.conf
    custom_palette=true
  '';
  xdg.configFile."qt6ct/qt6ct.conf".text = ''
    [Appearance]
    color_scheme_path=$HOME/.config/qt6ct/colors/matugen_theme.conf
    custom_palette=true
  '';
}
