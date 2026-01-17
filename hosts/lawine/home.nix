{
  imports = [
    ../../home/themes
    ../../home/common/cli
    ../../home/common/gui
    ../../home/nixos/cli
    ../../home/nixos/desktop
    ../../home/nixos/gui
  ];

  xdg.configFile."niri/outputs.kdl".text = ''
    output "DP-1" {
        scale 1.000000
        transform "90"
        position x=-1080 y=-480
        mode "1920x1080"
    }
    output "DP-2" {
        scale 1.000000
        transform "normal"
        position x=0 y=0
        mode "1920x1080"
    }
    output "HDMI-A-1" {
        scale 1.000000
        transform "normal"
        position x=1920 y=0
        mode "1920x1080"
    }
  '';
}
