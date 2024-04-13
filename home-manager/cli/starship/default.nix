{
  programs.starship = {
    enable = true;
    settings = builtins.fromTOML ''
      [username]
      disabled = true

      [hostname]
      disabled = true

      [directory]
      style = "bold fg:#ea9a97"
      truncation_length = 5
      truncate_to_repo = true
      truncation_symbol = "…/"
      read_only = " 󰌾"
      read_only_style = "fg:#eb6f92"

      [character]
      success_symbol = "[❯](fg:#9ccfd8)"
      error_symbol = "[❯](fg:#eb6f92)"
      vimcmd_symbol = "[❮️](fg:#ea9a97)"
      vimcmd_replace_one_symbol = "[R](bold fg:#c4a7e7)"
      vimcmd_replace_symbol = "[R](bold fg:#c4a7e7)"
      vimcmd_visual_symbol = "[V](bold fg:#c4a7e7)"

      [git_branch]
      format = "[$symbol$branch(:$remote_branch)]($style) "
      symbol = " "
      style = "fg:#908caa"

      [git_status]
      format = "([$all_status$ahead_behind]($style) )"
      style = "bold fg:#eb6f92"

      [cmd_duration]
      disabled = true
    '';
  };
}
