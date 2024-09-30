{
  programs.starship = {
    enable = true;
    settings = builtins.fromTOML ''
      [username]
      format = " [╭─$user]($style)@"
      style_user = "bold red"
      style_root = "bold red"
      show_always = true

      [hostname]
      format = "[$hostname]($style) in "
      style = "bold red"
      trim_at = "-"
      ssh_only = false
      disabled = false

      [directory]
      style = "bold fg:#ea9a97"
      truncation_length = 5
      truncate_to_repo = true
      truncation_symbol = "…/"
      read_only = " 󰌾"
      read_only_style = "fg:#eb6f92"

      [character]
      success_symbol = " [╰─](bold red)"
      error_symbol = " [╰─×](bold red)"
      vimcmd_symbol = "[ ╰─N](bold red)"
      vimcmd_replace_one_symbol = "[ ╰─R](bold red)"
      vimcmd_replace_symbol = "[ ╰─R](bold red)"
      vimcmd_visual_symbol = "[ ╰─V](bold red)"

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
