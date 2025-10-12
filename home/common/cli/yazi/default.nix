{
  programs.yazi = {
    enable = true;
    settings = builtins.fromTOML (builtins.readFile ./yazi.toml);
    keymap = builtins.fromTOML (builtins.readFile ./keymap.toml);
    theme = builtins.fromTOML (builtins.readFile ./theme.toml);
    flavors = { rose-pine-moon = ./rose-pine-moon; };
  };
}
