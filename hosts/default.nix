inputs:
  let
    mkNixosSystem = {
      system,
      hostname,
      username,
      modules,
    }:
      inputs.nixpkgs.lib.nixosSystem {
        inherit system modules;
        specialArgs = {
          inherit inputs hostname username;
        };
      };

    mkDarwinSystem = {
      system,
      hostname,
      username,
      modules,
    }:
      inputs.nix-darwin.lib.darwinSystem {
        inherit system modules;
        specialArgs = {
          inherit inputs hostname username;
        };
      };

    mkNixosHomeManagerConfiguration = {
      system,
      username,
      overlays,
      modules,
    }:
      inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          inherit system overlays;
          config = {
            allowUnfree = true;
          };
        };
        extraSpecialArgs = {
          inherit inputs username;
        };
        modules =
          modules
          ++ [
            {
              home = {
                inherit username;
                homeDirectory = "/home/${username}";
                stateVersion = "25.05";
              };
              programs = {
                home-manager.enable = true;
                git.enable = true;
              };
            }
          ];
      };

    mkDarwinHomeManagerConfiguration = {
      system,
      username,
      overlays,
      modules,
    }:
      inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          inherit system overlays;
          config = {
            allowUnfree = true;
          };
        };
        extraSpecialArgs = {
          inherit inputs username;
        };
        modules =
          modules
          ++ [
            {
              home = {
                inherit username;
                homeDirectory = "/Users/${username}";
                stateVersion = "25.05";
              };
              programs = {
                home-manager.enable = true;
                git.enable = true;
              };
            }
          ];
      };
  in {
    nixos = {
      lawine = mkNixosSystem {
        system = "x86_64-linux";
        hostname = "lawine";
        username = "pipopo";
        modules = [
          ./lawine/nixos.nix
        ];
      };
    };

    darwin = {
      # MacBook Air 2020 13.3-inch M1 8GB
      aura = mkDarwinSystem {
        system = "aarch64-darwin";
        hostname = "aura";
        username = "pipopo";
        modules = [
          ./aura/darwin.nix
        ];
      };
    };

    home-manager = {
      "pipopo@lawine" = mkNixosHomeManagerConfiguration {
        system = "x86_64-linux";
        username = "pipopo";
        overlays = [(import inputs.rust-overlay)];
        modules = [
          ./lawine/home.nix
        ];
      };
      "pipopo@aura" = mkDarwinHomeManagerConfiguration {
        system = "aarch64-darwin";
        username = "pipopo";
        overlays = [(import inputs.rust-overlay)];
        modules = [
          ./aura/home.nix
        ];
      };
    };
}
