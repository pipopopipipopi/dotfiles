{ inputs, pkgs, ... }: {
  home.packages = [ inputs.pipopo-nvim.packages.${pkgs.system}.default ];
}
