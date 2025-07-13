{ inputs, pkgs, ... }: {
  programs.helix = {
    enable = true;
    package = inputs.helix.packages.${pkgs.system}.default;
    defaultEditor = true;
    settings = (builtins.fromTOML (builtins.readFile ./config.toml));
    languages = (builtins.fromTOML (builtins.readFile ./languages.toml));
    themes = {
      rose_pine_moon_transparent = {
        "inherits" = "rose_pine_moon";
        "ui.background" = {};
        "ui.background.separator" = {};
      };
    };
    extraPackages = with pkgs; [
      # latex
      # texlab

      # markdown
      marksman

      # nix
      nil

      # rust
      rust-analyzer

      # typst
      tinymist
    ];
  };
}
