{ inputs, pkgs, ... }: {
  home.packages = [ inputs.pipopo-nvim.packages.${pkgs.stdenv.hostPlatform.system}.default ];
}
