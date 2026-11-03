{ pkgs, ... }: {
  home.packages = with pkgs; [
    obsidian
    # nautilus
    # loupe
    # pwvucontrol
    # celluloid
    # amberol
    # eyedropper
    kicad
    signal-desktop

    kdePackages.dolphin
    kdePackages.okular
    qview
    mpv
  ];
}
