{ pkgs, username, config, ... }: {
  imports = [
    ./hardware-configuration.nix

    ../../configs/nixos/boot.nix
    ../../configs/nixos/fcitx5.nix
    ../../configs/nixos/fonts.nix
    ../../configs/nixos/gnome-services.nix
    ../../configs/nixos/i18n.nix
    ../../configs/nixos/network.nix
    ../../configs/nixos/nix.nix
    ../../configs/nixos/security.nix
    ../../configs/nixos/shell.nix
    ../../configs/nixos/sound.nix
    ../../configs/nixos/virtualisation.nix
    ../../configs/nixos/xdg.nix
  ];

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

  # services.xserver = {
  #   videoDrivers = ["nvidia"];
  # };

  hardware.graphics.enable = true;
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.beta;
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
    # prime.nvidiaBusId = "PCI:10:0:0";
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd niri-session";
        user = username;
      };
      initial_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd niri-session";
        user = username;
      };
    };
  };
}
