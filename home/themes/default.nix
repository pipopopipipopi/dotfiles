let
  colors = import ./halloween.nix;
in
  import ./templates/wezterm.nix { inherit colors; }
