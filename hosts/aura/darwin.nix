{
  inputs,
  pkgs,
  username,
  ...
}: {
  imports = [
    ../../modules/core
    ../../modules/desktop/fonts.nix
    ../../modules/programs/darwin-system.nix
    ../../modules/programs/homebrew.nix
  ];

  users.users."${username}" = {
    shell = pkgs.zsh;
  };
}
