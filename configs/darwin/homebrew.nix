{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
    
    taps = [];

    brews = [
      "wxmaxima"
    ];

    casks = [
      "karabiner-elements"
      "macskk"
      "microsoft-office"
      "ltspice"
      "virtualbox"

      "scilab"
      "temurin@8"
    ];
  };
}
