{ self, inputs, ... }: {
  flake = {
    lib = import ../lib inputs;

    nixosConfigurations = {
      lawine = self.lib.makeNixosConfig {
        system = "x86_64-linux";
        hostname = "lawine";
        username = "pipopo";
        modules = [ ./lawine/nixos.nix ];
      };
    };

    darwinConfigurations = {
      aura = self.lib.makeDarwinConfig {
        system = "aarch64-darwin";
        hostname = "aura";
        username = "pipopo";
        modules = [ ./aura/darwin.nix ];
      };
    };

    homeConfigurations = {
      "pipopo@lawine" = self.lib.makeHomeManagerConfig {
        system = "x86_64-linux";
        username = "pipopo";
        overlays = [ (import inputs.rust-overlay) ];
        modules = [ ./lawine/home.nix ];
      };
      "pipopo@aura" = self.lib.makeHomeManagerConfig {
        system = "aarch64-darwin";
        username = "pipopo";
        overlays = [ (import inputs.rust-overlay) ];
        modules = [ ./aura/home.nix ];
      };
    };
  };
}
