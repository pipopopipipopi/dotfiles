{ inputs, pkgs, ... }: {
  programs.wezterm = {
    package =
      if pkgs.stdenv.isLinux then inputs.wezterm.packages.${pkgs.system}.default else pkgs.wezterm;
    enable = true;
    extraConfig = builtins.readFile ./wezterm.lua;
  };
}
