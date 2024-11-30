{
  homebrew = {
    enable = true;
    taps = [
      # default
      "homebrew/services"

      # custom
      "koekeishiya/formulae"
      "FelixKratz/formulae"
    ];

    brews = [
      "skhd"
      "yabai"
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
    ];
  };
}
