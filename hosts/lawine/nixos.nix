{
  inputs,
  pkgs,
  username,
  ...
}:
{
  imports =
    [
      ./hardware-configuration.nix

      ../../modules/nixos/core
      ../../modules/nixos/desktop
      ../../modules/nixos/programs/shell.nix
      ../../modules/nixos/programs/xserver.nix
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
}
