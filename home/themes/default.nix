let
  ## dark
  # palette = "halloween";
  # palette = "uitopia";
   
  ## light
  palette = "coffee";
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
