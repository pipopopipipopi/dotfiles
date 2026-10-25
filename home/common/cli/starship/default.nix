{
  programs.starship = {
    enable = true;
    # settings = (builtins.fromTOML (builtins.readFile ./config.toml));
    settings = (builtins.fromTOML (builtins.readFile ./02_config.toml));
  };
}
