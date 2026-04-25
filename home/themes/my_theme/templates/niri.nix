{ lib, pkgs, colors, ... }: lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
  xdg.configFile."niri/colors.kdl".text = ''
    layout {
        border {
            active-color "${colors.fg}"
            inactive-color "${colors.bg}"
        }
    }
  '';
}
