{ pkgs, ... }:
let
  desktoppr = pkgs.brewCasks.desktoppr.overrideAttrs (_: {
    installPhase = ''
      mkdir -p $out/bin
      cp ./usr/local/bin/desktoppr $out/bin/
    '';
  });
in {
  home.packages = with pkgs; [
    colima
    desktoppr
  ];
}
