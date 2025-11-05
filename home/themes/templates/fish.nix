{ colors }:
let
  format = c: builtins.replaceStrings ["#"] [""] c;
in {
  xdg.configFile."fish/themes/my_theme.theme".text = ''
    fish_color_normal ${format colors.fg}
    fish_color_command ${format colors.bright_blue}
    fish_color_keyword ${format colors.yellow}
    fish_color_quote ${format colors.magenta}
    fish_color_redirection ${format colors.cyan}
    fish_color_end ${format colors.fg}
    fish_color_error ${format colors.magenta}
    fish_color_param ${format colors.bright_yellow}
    fish_color_comment ${format colors.bright_black}
    fish_color_selection --background=${format colors.bright_black} --reverse
    fish_color_search_match --background=${format colors.bg}
    fish_color_operator ${format colors.fg}
    fish_color_escape ${format colors.blue}
    fish_color_autosuggestion ${format colors.bright_black}
    fish_color_cancel ${format colors.red} --reverse
    fish_color_option ${format colors.yellow}
    fish_color_history_current --bold
    fish_color_status ${format colors.red}
    fish_color_valid_path --underline

    fish_color_cwd ${format colors.green}
    fish_color_cwd_root ${format colors.red}
    fish_color_host ${format colors.blue}
    fish_color_host_remote ${format colors.bright_blue}
    fish_color_user ${format colors.yellow}

    fish_pager_color_progress ${format colors.yellow}
    fish_pager_color_background --background=${format colors.bg}
    fish_pager_color_prefix ${format colors.blue}
    fish_pager_color_completion ${format colors.bright_blue}
    fish_pager_color_description ${format colors.bright_black}
    fish_pager_color_selected_background --background=${format colors.bright_black}
    fish_pager_color_selected_prefix ${format colors.yellow}
    fish_pager_color_selected_completion ${format colors.fg}
    fish_pager_color_selected_description ${format colors.fg}
  '';
}
