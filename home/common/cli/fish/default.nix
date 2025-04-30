{
  imports = [ ../starship ];
  programs.fish = {
    enable = true;

    interactiveShellInit = builtins.readFile ./config.fish;
    # shellInit = builtins.readFile ./theme.fish;

    shellAliases = import ./aliases.nix;
  };
}
