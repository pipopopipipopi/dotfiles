{ pkgs, ... }: {
  imports = [
    ../../configs/darwin/fonts.nix
    ../../configs/darwin/homebrew.nix
    ../../configs/darwin/network.nix
    ../../configs/darwin/nix.nix
    ../../configs/darwin/security.nix
    ../../configs/darwin/shell.nix
    ../../configs/darwin/system.nix
  ];

  environment = {
    shells = [ pkgs.fish ];
    variables = {
      EDITOR = "nvim";
    };
  };
}
