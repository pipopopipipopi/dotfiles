{ inputs, pkgs, ... }: {
  programs.wezterm = {
    package =
      if pkgs.stdenv.hostPlatform.isLinux then inputs.wezterm.packages.${pkgs.stdenv.hostPlatform.system}.default else pkgs.wezterm;
    enable = true;
    extraConfig = builtins.readFile ./wezterm.lua;
  };
}
