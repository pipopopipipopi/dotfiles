{ lib, ... }: let
  themes = {
    ef-light = {
      palette = import ./themes/ef-light/palette.nix;
      palette-mapping = import ./themes/ef-light/palette-mapping.nix {
        palette = themes.ef-light.palette;
      };
    };
  };

  theme = themes.ef-light;

  apps = {
    helix = {
      path = "helix/themes/oreore.toml";
      text = import ./generators/helix.nix { inherit theme; };
    };
    wezterm = {
      path = "wezterm/colors/colors.toml";
      text = import ./generators/wezterm.nix { inherit theme; };
    };
  };
in {
  # xdg.configFile.${apps.wezterm.path}.text = apps.wezterm.text;
  xdg.configFile = lib.mapAttrs'(_: app: lib.nameValuePair app.path { text = app.text; }) apps;
}
