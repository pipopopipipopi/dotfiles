{
  description = "configuration of pipopopipipopi";

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
      ];

      imports = [ ./hosts ];

      perSystem = { config, pkgs, ... }: {
        devShells = let
          scripts = with pkgs; [
            (writeScriptBin "sw-nixos" ''
            sudo nixos-rebuild switch --flake ".#$@"
            '')
            (writeScriptBin "sw-darwin" ''
            darwin-rebuild switch --flake ".#$@"
            '')
            (writeScriptBin "sw-home" ''
            home-manager switch --flake ".#$@"
            '')
          ];
        in {
          default = pkgs.mkShell {
            packages = scripts;
          };
        };
      };
    };


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ghostty = {
      url = "github:ghostty-org/ghostty";
      inputs.nixpkgs-unstable.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    pipopo-nvim = {
      url = "github:pipopopipipopi/pipopo-nvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay.url = "github:oxalica/rust-overlay";
  };
}
