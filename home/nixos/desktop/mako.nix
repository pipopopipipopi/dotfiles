{
  services.mako = {
    enable = true;
    settings = {
      anchor = "top-right";
      font = "JetBrainsMono Nerd Font 10";
      icons = true;
      border-radius = 10;
      default-timeout = 3000;
      margin = "10,10,5";
    };
    extraConfig = ''
      include=~/.config/mako/colors
    '';
  };
}
