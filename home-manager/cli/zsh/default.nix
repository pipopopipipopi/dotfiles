{
  programs.zsh = {
    enable = true;
    initExtra = ''
      if [[ $(ps -o comm= -p $PPID) != "fish" ]]; then
          exec fish
      fi
    '';
  };
}
