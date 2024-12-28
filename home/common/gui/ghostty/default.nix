{ inputs, pkgs, ... }: {
  home.packages = [
    inputs.ghostty.packages.${pkgs.system}.default
  ];

  imports = [./config.nix];
}
