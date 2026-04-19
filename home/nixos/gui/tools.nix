{ pkgs, ... }: {
  home.packages = with pkgs; [
    obsidian
    nautilus
    loupe
    pwvucontrol
    celluloid
    amberol
    eyedropper
    kicad

    kdePackages.dolphin
    kdePackages.okular
    kdePackages.gwenview
    haruna
  ];
}
