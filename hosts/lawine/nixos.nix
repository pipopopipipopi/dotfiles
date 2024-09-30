{
  inputs,
  pkgs,
  username,
  config,
  ...
}:
{
  imports =
    [
      ./hardware-configuration.nix

      ../../modules/nixos/core
      ../../modules/nixos/desktop
      ../../modules/nixos/programs/shell.nix
      #../../modules/nixos/programs/xserver.nix
      #../../modules/nixos/programs/hyprland.nix
    ];
 
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  system.stateVersion = "24.05";

  users.users."${username}" = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
      "video"
    ];
  };

  services.xserver = {
    videoDrivers = ["nvidia"];
  };

  hardware.graphics.enable = true;
  hardware.nvidia = {
    nvidiaSettings = true;
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    prime.nvidiaBusId = "PCI:10:0:0";
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = ''
          ${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland
        '';
        user = username;
      };
    };
  };
}
