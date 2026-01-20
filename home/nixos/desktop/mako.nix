{
  services.mako = {
    enable = true;
    settings = {
      anchor = "top-right";
      font = "JetBrainsMono Nerd Font 10";
      icons = true;
    };
    extraConfig = ''
      include=~/.config/mako/colors
    '';
  };
}
