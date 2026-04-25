{ pkgs, inputs, lib, ... }:
let
  templates = ./templates;

  common = ''
    [config]
    version_check = false
    fallback_color = "#d62828"
    prefer = "closest-to-fallback"
    caching = false
    contrast = 0.3

    [templates.helix]
    input_path = '${templates}/matugen_helix.toml'
    output_path = '~/.config/helix/themes/matugen_theme.toml'

    [templates.wezterm]
    input_path = '${templates}/matugen_wezterm.toml'
    output_path = '~/.config/wezterm/colors/matugen_theme.toml'

    [templates.yazi]
    input_path = '${templates}/matugen_yazi.toml'
    output_path = '~/.config/yazi/theme.toml'

  '';

  linux = ''
    [templates.fuzzel]
    input_path = '${templates}/matugen_fuzzel.ini'
    output_path = '~/.config/fuzzel/colors.ini'

    [templates.mako]
    input_path = '${templates}/matugen_mako'
    output_path = '~/.config/mako/colors'
    # post_hook = 'makoctl reload'

    [templates.niri]
    input_path = '${templates}/matugen_niri.kdl'
    output_path = '~/.config/niri/colors.kdl'

    [templates.qt5ct]
    input_path = '${templates}/matugen_qtct.conf'
    output_path = '~/.config/qt5ct/colors/matugen_theme.conf'

    [templates.qt6ct]
    input_path = '${templates}/matugen_qtct.conf'
    output_path = '~/.config/qt6ct/colors/matugen_theme.conf'

    [config.wallpaper]
    set = true
    command = "awww img {{ image }}"
  '';

  darwin = ''
    [config.wallpaper]
    set = true
    command = "desktoppr {{ image }}"
  '';
in {
  home.packages =  if pkgs.stdenv.isLinux then [ inputs.matugen.packages.${pkgs.system}.default ] else [ pkgs.matugen ];

  xdg.configFile."matugen/config.toml".text =
    common
    + lib.optionalString pkgs.stdenv.hostPlatform.isLinux linux
    + lib.optionalString pkgs.stdenv.hostPlatform.isDarwin darwin;
}
