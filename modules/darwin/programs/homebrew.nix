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
      "aquaskk"
      "ghostty"
      "karabiner-elements"
      "microsoft-office"
      "obsidian"
      "zen-browser"
    ];
  };
}
