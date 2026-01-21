let
  # colors = import ./palettes/halloween.nix;
  colors = import ./palettes/uitopia.nix;
in {
  imports = [
    (import ./templates/fish.nix { inherit colors; })
    (import ./templates/fuzzel.nix { inherit colors; })
    (import ./templates/helix.nix { inherit colors; })
    (import ./templates/mako.nix { inherit colors; })
    (import ./templates/wezterm.nix { inherit colors; })
  ];
}
