{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
  };
  xdg.configFile."alacritty/alacritty.toml".source =
    if pkgs.stdenv.hostPlatform.isDarwin then
      ./darwin_alacritty.toml
    else
      ./alacritty.toml;
}
