{ pkgs, ... }: {
  
  xdg.configFile."matugen/config.toml".source =
    if pkgs.stdenv.isLinux then
      ./nixos_config.toml
    else
      ./darwin_config.toml;
  xdg.configFile."matugen/templates/wezterm.toml".source = ./wezterm.toml;
  xdg.configFile."matugen/templates/fish.theme".source = ./fish.theme;
  xdg.configFile."matugen/templates/yazi.toml".source = ./yazi.toml;
}
