{ lib, ... }: let
  themeName = "yuyake";

  theme =
    let
      palette = import ./themes/${themeName}/palette.nix;
    in {
      palette-mapping = import ./themes/${themeName}/palette-mapping.nix { inherit palette; };
    };

  apps = {
    alacritty = {
      path = "alacritty/themes/theme.toml";
      text = import ./generators/alacritty.nix { inherit theme; };
    };
    fish = {
      path = "fish/themes/oreore.theme";
      text = import ./generators/fish.nix { inherit theme; };
    };
    ghostty = {
      path = "ghostty/themes/oreore.conf";
      text = import ./generators/ghostty.nix { inherit theme; };
    };
    helix = {
      path = "helix/themes/oreore.toml";
      text = import ./generators/helix.nix { inherit theme; };
    };
    wezterm = {
      path = "wezterm/colors/colors.toml";
      text = import ./generators/wezterm.nix { inherit theme; };
    };
    yazi = {
      path = "yazi/theme.toml";
      text = import ./generators/yazi.nix { inherit theme; };
    };
  };
in {
  # xdg.configFile.${apps.wezterm.path}.text = apps.wezterm.text;
  xdg.configFile = lib.mapAttrs'(_: app: lib.nameValuePair app.path { text = app.text; }) apps;
}
