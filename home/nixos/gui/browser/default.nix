{ pkgs, inputs, ... }: {
  imports = [
    inputs.zen-browser.homeModules.twilight
  ];

  programs.zen-browser = {
    enable = true;
    policies = {
      DisableAppUpdate = true;
      TranslateEnabled = false;
    };
  };

  home.packages = with pkgs; [
    tor-browser
  ];
}
