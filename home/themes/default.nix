let
  ## dark
  # palette = "halloween";
  # palette = "uitopia";
  # palette = "arcana_shadow_dark";
   
  ## light
  # palette = "coffee";
  palette = "arcana_shadow_light";
in {
  _module.args.colors = import ./palettes/${palette}.nix;

  imports = [
    ./templates/fish.nix
    ./templates/fuzzel.nix
    ./templates/helix.nix
    ./templates/mako.nix
    ./templates/niri.nix
    ./templates/wezterm.nix
  ];
}
