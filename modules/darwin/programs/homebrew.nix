{
  homebrew = {
    enable = true;
    taps = [
      # default
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/services"

      # custom
      "koekeishiya/formulae"
      "FelixKratz/formulae"
    ];

    brews = [
      "skhd"
      "yabai"
      "sketchybar"
      "borders"
    ];

    casks = [
      # "discord"
      "zirixcz/vesktop/vesktop"

      "vivaldi"

      "google-japanese-ime"

      "raycast"
    ];
  };
}
