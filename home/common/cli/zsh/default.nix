{
  programs.zsh = {
    enable = true;

    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initExtra = ''
      if [[ $(ps -o comm= -p $PPID) != "fish" ]]; then
          exec fish
      fi
    '';
  };
}
