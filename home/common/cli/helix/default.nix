{
  programs.helix = {
    enable = true;
    settings = (builtins.fromTOML (builtins.readFile ./config.toml));
    themes = {
      rose_pine_moon_transparent = {
        "inherits" = "rose_pine_moon";
        "ui.background" = {};
        "ui.background.separator" = {};
      };
    };
  };
}
