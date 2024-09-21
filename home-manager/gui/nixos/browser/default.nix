{ pkgs, inputs, ... }:
{
  home.packages = [ inputs.zen-browser.packages.${pkgs.system}.default ];

  programs = {
    vivaldi = {
      enable = true;
      commandLineArgs = [
        "--enable-features=WebUIDarkMode"
        "--force-dark-mode"
      ];
    };
  };
}
