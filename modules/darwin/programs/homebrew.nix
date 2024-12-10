{
  homebrew = {
    enable = true;
    taps = [
      # default
      "homebrew/services"

      # custom
      "koekeishiya/formulae"
      "FelixKratz/formulae"
      "nikitabobko/tap"
    ];

    brews = [
      "borders"
    ];

    casks = [
      "arc"
      "zen-browser"

      "obsidian"

      "aquaskk"

      "karabiner-elements"

      "raycast"

      "microsoft-office"

      "aerospace"

      "zed"
    ];
  };
}
