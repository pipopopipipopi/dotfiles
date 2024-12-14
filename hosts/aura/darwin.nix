{ pkgs, username, ... }: {
  imports = [
    ../../modules/darwin/core
    ../../modules/darwin/desktop
    ../../modules/darwin/programs
  ];

  users.users."${username}" = {
    shell = pkgs.fish;
  };

  environment.variables = {
    EDITOR = "nvim";
  };
}
