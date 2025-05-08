{
  programs.yazi = {
    enable = true;
    settings = (builtins.fromTOML (builtins.readFile ./yazi.toml));
    keymap = (builtins.fromTOML (builtins.readFile ./keymap.toml));
  };
}
