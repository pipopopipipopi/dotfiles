{
  inputs,
  pkgs,
  username,
  ...
}: {
  imports = [
    ../../modules/darwin/core
    ../../modules/darwin/desktop/fonts.nix
    ../../modules/darwin/programs/darwin-system.nix
    ../../modules/darwin/programs/shell.nix
    ../../modules/darwin/programs/homebrew.nix
  ];

  users.users."${username}" = {
    shell = pkgs.fish;
  };
}
