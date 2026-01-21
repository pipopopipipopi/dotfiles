{ lib, pkgs, colors, ... }: lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
  xdg.configFile."mako/colors".text = ''
    background-color=${colors.bg}
    text-color=${colors.fg}
    border-color=${colors.sub_bg}

    [urgency=low]
    border-color=${colors.sub_bg}

    [urgency=normal]
    border-color=${colors.yellow}

    [urgency=high]
    border-color=${colors.red}
  '';
}
