{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
    
    taps = [];

    brews = [];

    casks = [
      "karabiner-elements"
      "macskk"
      "microsoft-office"
    ];
  };
}
