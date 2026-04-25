{ colors, ... }: {
  xdg.configFile."helix/themes/my_theme.toml".text = ''
    # --- Syntax Elements ---
    "attribute" = "${colors.blue}"
    "type" = "${colors.cyan}"
    "type.enum.variant" = "${colors.cyan}"
    "constructor" = "${colors.green}"

    "constant" = "${colors.yellow}"
    "constant.character" = "${colors.yellow}"
    "constant.character.escape" = "${colors.bright_yellow}"

    "string" = "${colors.green}"
    "string.regexp" = "${colors.cyan}"
    "string.special" = "${colors.bright_green}"
    "string.special.symbol" = "${colors.red}"

    "comment" = { fg = "${colors.bright_black}", modifiers = ["italic"] }

    "variable" = "${colors.fg}"
    "variable.parameter" = { fg = "${colors.bright_magenta}", modifiers = ["italic"] }
    "variable.builtin" = "${colors.red}"
    "variable.other.member" = "${colors.blue}"

    "label" = "${colors.yellow}"

    "punctuation" = "${colors.bright_black}"
    "punctuation.special" = "${colors.magenta}"

    "keyword" = "${colors.magenta}"
    "keyword.control.conditional" = { fg = "${colors.magenta}", modifiers = ["italic"] }

    "operator" = "${colors.cyan}"

    "function" = "${colors.blue}"
    "function.macro" = "${colors.bright_blue}"

    "tag" = "${colors.yellow}"
    "namespace" = { fg = "${colors.cyan}", modifiers = ["italic"] }

    "special" = "${colors.green}"

    # --- Markup ---
    "markup.heading.1" = "${colors.red}"
    "markup.heading.2" = "${colors.yellow}"
    "markup.heading.3" = "${colors.blue}"
    "markup.heading.4" = "${colors.green}"
    "markup.heading.5" = "${colors.magenta}"
    "markup.heading.6" = "${colors.cyan}"

    "markup.list" = "${colors.yellow}"
    "markup.bold" = { fg = "${colors.yellow}", modifiers = ["bold"] }
    "markup.italic" = { fg = "${colors.magenta}", modifiers = ["italic"] }
    "markup.link.url" = { fg = "${colors.blue}", modifiers = ["italic", "underlined"] }
    "markup.link.text" = "${colors.bright_blue}"
    "markup.quote" = "${colors.bright_black}"

    # --- Diff ---
    "diff.plus" = "${colors.green}"
    "diff.minus" = "${colors.red}"
    "diff.delta" = "${colors.yellow}"

    # --- UI Elements ---
    "ui.background" = {}

    "ui.linenr" = { fg = "${colors.bright_black}" }
    "ui.linenr.selected" = { fg = "${colors.bright_blue}" }

    "ui.statusline" = { fg = "${colors.fg}", bg = "${colors.sub_bg}" }
    "ui.statusline.inactive" = { fg = "${colors.bright_black}", bg = "${colors.bg}" }

    "ui.popup" = { fg = "${colors.fg}", bg = "${colors.sub_bg}" }
    "ui.menu" = { fg = "${colors.fg}", bg = "${colors.sub_bg}" }
    "ui.menu.selected" = { fg = "${colors.yellow}", bg = "${colors.bg}", modifiers = ["bold"] }

    "ui.cursor" = { fg = "${colors.bg}", bg = "${colors.fg}" }
    "ui.cursor.primary" = { fg = "${colors.bg}", bg = "${colors.bright_blue}" }

    "ui.selection" = { bg = "${colors.sub_bg}" }

    # --- Diagnostics ---
    "diagnostic.error" = { fg = "${colors.red}", underline = { color = "${colors.red}", style = "curl" } }
    "diagnostic.warning" = { fg = "${colors.yellow}", underline = { color = "${colors.yellow}", style = "curl" } }
    "diagnostic.info" = { fg = "${colors.blue}", underline = { color = "${colors.blue}", style = "curl" } }
    "diagnostic.hint" = { fg = "${colors.cyan}", underline = { color = "${colors.cyan}", style = "curl" } }

    # --- Fallbacks ---
    error = "${colors.red}"
    warning = "${colors.yellow}"
    info = "${colors.blue}"
    hint = "${colors.cyan}"
  '';
}
