{ pkgs, inputs, ... }: {
  home.packages = [ inputs.pipopo-nvim.packages.${pkgs.system}.default ];
}
