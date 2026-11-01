{ inputs, pkgs, ... }: {
  programs.helix = {
    enable = true;
    package =
      if pkgs.stdenv.hostPlatform.isDarwin then
        inputs.helix.packages.${pkgs.stdenv.hostPlatform.system}.default
      else
        pkgs.helix;
    defaultEditor = true;
    settings = (builtins.fromTOML (builtins.readFile ./config.toml));
    languages = (builtins.fromTOML (builtins.readFile ./languages.toml));
    themes = {
      rose_pine_moon_transparent = {
        "inherits" = "rose_pine_moon";
        "ui.background" = { };
        "ui.background.separator" = { };
      };
      washi = (builtins.fromTOML (builtins.readFile ./themes/washi.toml));
    };
    extraPackages = with pkgs; [
      # markdown
      marksman

      # nix
      nil

      # typst
      tinymist
    ];
  };
}
