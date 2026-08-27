{ theme }: let
  p = theme.palette-mapping;

  format = c: builtins.replaceStrings [ "#" ] [ "" ] c;
in
''
  fish_color_normal ${format p.fg-main}
  fish_color_command ${format p.fnname-call}
  fish_color_keyword ${format p.keyword}
  fish_color_quote ${format p.string}
  fish_color_redirection ${format p.fg-main}
  fish_color_end ${format p.keyword}
  fish_color_error ${format p.err}
  fish_color_param ${format p.variable}
  fish_color_comment ${format p.comment}
  fish_color_selection --background=${format p.bg-region}
  fish_color_search_match --background=${format p.bg-search-current}
  fish_color_operator ${format p.keybind}
  fish_color_escape ${format p.rx-backslash}
  fish_color_autosuggestion ${format p.fg-dim}
  fish_color_cancel ${format p.err} --reverse
  fish_color_option ${format p.constant}
  fish_color_history_current --bold
  fish_color_status ${format p.err}
  fish_color_valid_path --underline

  fish_color_cwd ${format p.green}
  fish_color_cwd_root ${format p.red}
  fish_color_host ${format p.blue}
  fish_color_host_remote ${format p.blue-warmer}
  fish_color_user ${format p.cyan}

  fish_pager_color_progress ${format p.warning}
  fish_pager_color_background --background=${format p.bg-popup}
  fish_pager_color_prefix ${format p.fg-link}
  fish_pager_color_completion ${format p.fg-main}
  fish_pager_color_description ${format p.fg-dim}

  fish_pager_color_selected_background --background=${format p.bg-region}
  fish_pager_color_selected_prefix ${format p.accent-0}
  fish_pager_color_selected_completion ${format p.fg-main}
  fish_pager_color_selected_description ${format p.fg-alt}

  fish_pager_color_secondary_background --background=${format p.bg-inactive}
  fish_pager_color_secondary_prefix ${format p.fg-link}
  fish_pager_color_secondary_completion ${format p.fg-main}
  fish_pager_color_secondary_description ${format p.fg-dim}
''
