{
  description = "configuration of pipopopipipopi";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";

    nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-23.11-darwin";
    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs-darwin";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    pipopopipipopi-nvim = {
        url = "github:pipopopipipopi/pipopopipipopi.nvim";
        inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = inputs: let
    allSystems = [
      "aarch64-linux"
      "x86_64-linux"
      "aarch64-darwin"
      "x86_64-darwin"
    ];
    forAllSystems = inputs.nixpkgs.lib.genAttrs allSystems;
  in {
    nixosConfigurations = (import ./hosts inputs).nixos;
    darwinConfigurations = (import ./hosts inputs).darwin;
    homeConfigurations = (import ./hosts inputs).home-manager;

    devShells = forAllSystems (system: let
      pkgs = import inputs.nixpkgs {inherit system;};
      scripts = with pkgs; [
        (writeScriptBin "switch-nixos" ''
          sudo nixos-rebuild switch --flake ".#$@"
        '')
        (writeScriptBin "switch-darwin" ''
          darwin-rebuild switch --flake ".#$@"
        '')
        (writeScriptBin "switch-home" ''
          home-manager switch --flake ".#$@"
        '')
      ];
    in {
      default = pkgs.mkShell {
        packages = scripts;
      };
    });
  };
}
