{
  imports = [ ../starship ];
  programs.fish = {
    enable = true;

    interactiveShellInit = builtins.readFile ./config.fish;

    shellAliases = import ./aliases.nix;
  };
}
