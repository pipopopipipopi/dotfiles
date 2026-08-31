{ pkgs, lib, username, config, ... }: {
  imports = [
    ./hardware-configuration.nix

    ../../configs/nixos/boot.nix
    ../../configs/nixos/fcitx5.nix
    ../../configs/nixos/fonts.nix
    ../../configs/nixos/i18n.nix
    ../../configs/nixos/network.nix
    ../../configs/nixos/niri.nix
    ../../configs/nixos/nix.nix
    ../../configs/nixos/security.nix
    ../../configs/nixos/shell.nix
    ../../configs/nixos/shojiwm.nix
    ../../configs/nixos/sound.nix
    # ../../configs/nixos/virtualisation.nix
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

  programs.nix-ld.enable = true;

  # services.greetd =
  # let
  #   minimumConfig = pkgs.writeText "minimum-config.kdl" ''
  #     hotkey-overlay {
  #       skip-at-startup
  #     }
  #     // https://github.com/rharish101/ReGreet?tab=readme-ov-file#startup-delays
  #     environment {
  #       GTK_USE_PORTAL "0"
  #       GDK_DEBUG "no-portals"
  #     }
  #     spawn-sh-at-startup "${lib.getExe config.programs.regreet.package}; niri msg action quit --skip-confirmation"
  #   '';
  # in
  # {
  #   enable = true;
  #   settings = {
  #     default_session = {
  #       command = "dbus-run-session ${lib.getExe config.programs.niri.package} --config ${minimumConfig}";
  #       user = "greeter";
  #     };
  #   };
  # };
  
  services.greetd = {
    enable = true;
    settings = {
      # initial_session = {
      #   command = "${pkgs.niri}/bin/niri-session";
      #   user = "${username}";
      # };
      # default_session = {
      #   command = "${pkgs.tuigreet}/bin/tuigreet --remember --remember-user-session --time --cmd ${pkgs.niri}/bin/niri-session";
      #   user = "greeter";
      # };
      default_session = {
        # command = "${lib.getExe pkgs.tuigreet} --remember --remember-user-session --time --cmd ${config.programs.niri.package}/bin/niri-session";
        command = "${lib.getExe pkgs.tuigreet} --time --remember --remember-user-session";
        user = "greeter";
      };
    };
  };
}
