inputs: {
  makeNixosConfig =
    {
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

  makeDarwinConfig =
    {
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

  makeHomeManagerConfig =
    {
      system,
      username,
      overlays,
      modules,
    }:
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = import inputs.nixpkgs {
        inherit system overlays;
        config.allowUnfree = true;
      };
      extraSpecialArgs = {
        inherit inputs username; 
      };
      modules =
        [
          (
            { pkgs, ... }: {
              home = {
                inherit username;
                homeDirectory = if pkgs.stdenv.hostPlatform.isLinux then "/home/${username}" else "/Users/${username}";
                stateVersion = "25.05";
              };
              programs = {
                home-manager.enable = true;
                git.enable = true;
              };
            }
          )
        ]
        ++ modules;
    };
}

