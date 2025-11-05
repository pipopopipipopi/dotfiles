let
  colors = import ./halloween.nix;
in {
  imports = [
    (import ./templates/fish.nix { inherit colors; })
    (import ./templates/helix.nix { inherit colors; })
    (import ./templates/wezterm.nix { inherit colors; })
  ];
}
