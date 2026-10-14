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

    kdePackages.dolphin
    kdePackages.okular
    qview
    mpv

    krita

    # 学習制御
    scilab-bin
    maxima
    wxmaxima
  ];
}
