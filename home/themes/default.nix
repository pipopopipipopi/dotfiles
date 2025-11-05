let
  colors = import ./halloween.nix;
in {
  imports = [
    (import ./templates/wezterm.nix { inherit colors; })
    (import ./templates/fish.nix { inherit colors; })
  ];
}
