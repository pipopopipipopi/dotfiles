{ inputs, pkgs, lib, ... }:
let
  common = builtins.readFile ./config.ghostty;
  linux = builtins.readFile ./config_linux.ghostty;
  darwin = builtins.readFile ./config_mac.ghostty;
in {
  programs.ghostty = {
    enable = true;
    package =
      if pkgs.stdenv.hostPlatform.isDarwin then
        pkgs.ghostty-bin
      else
        inputs.ghostty.packages.${pkgs.stdenv.hostPlatform.system}.default;
  };

  xdg.configFile."ghostty/config.ghostty".text =
    common
    + lib.optionalString pkgs.stdenv.hostPlatform.isLinux linux
    + lib.optionalString pkgs.stdenv.hostPlatform.isDarwin darwin;
}
