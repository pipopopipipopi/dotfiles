{ inputs, pkgs, ... }: {
  home.packages = [
    inputs.ghostty.packages.${pkgs.system}.default
  ];

  imports = [../../common/gui/ghostty.nix];
}
