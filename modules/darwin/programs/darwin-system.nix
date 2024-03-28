{ pkgs, ... }: {
  system = {
    defaults = {
      menuExtraClock.Show24Hour = true;
    };
  };

  security.pam.enableSudoTouchIdAuth = true;

  programs = {
    zsh.enable = true;
    fish.enable = true;
  };
  environment.shells = [
    pkgs.fish
  ];
}
