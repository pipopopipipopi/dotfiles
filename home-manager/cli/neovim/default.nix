{ pkgs, inputs, ... }: {
  home.packages = [ inputs.pipopopipipopi-nvim.packages.${pkgs.system}.default ];
}
