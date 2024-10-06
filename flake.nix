{
  description = "configuration of pipopopipipopi";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-24.05-darwin";
    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs-darwin";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    wezterm = {
      url = "github:wez/wezterm?dir=nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:MarceColl/zen-browser-flake";
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
      pkgs = inputs.nixpkgs.legacyPackages.${system};
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
