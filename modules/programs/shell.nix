{
  pkgs,
  ...
}: {
  programs = {
    zsh.enable = true;
    fish.enable = true;
    git.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
    };
  };
}
