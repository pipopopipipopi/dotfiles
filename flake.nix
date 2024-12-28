{
  description = "configuration of pipopopipipopi";

  outputs = inputs:
    let
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
      });
    };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    wezterm = {
      url = "github:wez/wezterm?dir=nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ghostty.url = "github:ghostty-org/ghostty";

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
