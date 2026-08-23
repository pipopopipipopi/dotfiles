{ theme }: let
  p = theme.palette-mapping;
in
''
  "attribute" = "${p.name}"
  "keyword" = "${p.keyword}"
  "keyword.directive" = "${p.preprocessor}"
  "namespace" = "${p.name}"

  "punctuation" = "${p.fg-dim}"
  "punctuation.delimiter" = "${p.fg-dim}"

  "operator" = "${p.constant}"
  "special" = "${p.builtin}"

  "variable" = "${p.variable}"
  "variable.builtin" = "${p.builtin}"
  "variable.parameter" = "${p.variable-use}"
  "variable.other.member" = "${p.identifier}"
  "variable.property" = "${p.identifier}"

  "type" = "${p.type}"
  "type.builtin" = "${p.type}"
  "constructor" = { fg = "${p.type}", modifiers = ["bold"] }

  "function" = { fg = "${p.fnname}", modifiers = ["bold"] }
  "function.macro" = "${p.builtin}"
  "function.builtin" = "${p.builtin}"

  "comment" = { fg = "${p.comment}", modifiers = ["italic"] }

  "constant" = "${p.constant}"
  "constant.builtin" = { fg = "${p.constant}", modifiers = ["bold"] }

  "string" = "${p.string}"
  "number" = "${p.constant}"
  "escape" = { fg = "${p.string}", modifiers = ["bold"] }

  "label" = "${p.name}"
  "module" = "${p.name}"

  # "markup.heading" = { fg = "${p.accent-0}", modifiers = [ "bold" ] }
  "markup.heading.1" = { fg = "${p.accent-0}", modifiers = [ "bold" ] }
  "markup.heading.2" = { fg = "${p.accent-1}", modifiers = [ "bold" ] }
  "markup.heading.3" = "${p.accent-2}"
  "markup.heading.4" = "${p.accent-3}"
  "markup.heading.5" = "${p.accent-0}"
  "markup.heading.6" = "${p.accent-1}"
  "markup.list" = "${p.accent-1}"
  "markup.bold" = { fg = "${p.accent-3}", modifiers = ["bold"] }
  "markup.italic" = { fg = "${p.accent-1}", modifiers = ["italic"] }
  "markup.strikethrough" = { modifiers = ["crossed_out"] }
  "markup.link.url" = { fg = "${p.fg-link}", modifiers = ["underlined"] }
  "markup.link.text" = "${p.fg-link}"
  "markup.quote" = "${p.accent-2}"
  "markup.raw" = "${p.fg-prose-verbatim}"

  "diff.plus" = "${p.fg-added}"
  "diff.delta" = "${p.fg-changed}"
  "diff.minus" = "${p.fg-removed}"

  "warning" = { fg = "${p.warning}" }
  "error" = { fg = "${p.err}" }
  "info" = { fg = "${p.info}" }
  "hint" = { fg = "${p.fg-dim}" }

  "ui.background" = { bg = "${p.bg-main}" }
  "ui.linenr" = { fg = "${p.fg-dim}" }
  "ui.linenr.selected" = { fg = "${p.accent-3}" }
  "ui.cursorline" = { bg = "${p.bg-hl-line}" }

  "ui.statusline" = {
    fg = "${p.fg-main}",
    bg = "${p.bg-active}"
  }

  "ui.statusline.inactive" = {
    fg = "${p.fg-dim}",
    bg = "${p.bg-inactive}"
  }

  "ui.statusline.normal" = {
    fg = "${p.fg-main}",
    bg = "${p.accent-0}"
  }

  "ui.statusline.insert" = {
    fg = "${p.fg-main}",
    bg = "${p.accent-2}"
  }

  "ui.statusline.select" = {
    fg = "${p.fg-main}",
    bg = "${p.accent-1}"
  }

  "ui.popup" = { bg = "${p.bg-popup}" }
  "ui.window" = { bg = "${p.bg-alt}" }

  "ui.help" = {
    bg = "${p.bg-popup}",
    fg = "${p.fg-main}"
  }

  "ui.text" = { fg = "${p.fg-main}" }
  "ui.text.focus" = {
    fg = "${p.fg-main}",
    modifiers = ["bold"]
  }

  "ui.text.directory" = {
    fg = "${p.fg-link}"
  }

  "ui.selection" = {
    bg = "${p.bg-region}"
  }

  "ui.selection.primary" = {
    bg = "${p.bg-region}"
  }

  "ui.cursor.primary" = {
    modifiers = ["reversed"]
  }

  "ui.cursor.match" = {
    bg = "${p.bg-paren-match}"
  }

  "ui.cursorline.primary" = {
    bg = "${p.bg-hl-line}"
  }

  "ui.menu" = {
    fg = "${p.fg-main}",
    bg = "${p.bg-popup}"
  }

  "ui.menu.selected" = {
    fg = "${p.fg-main}",
    bg = "${p.bg-hover}",
    modifiers = ["bold"]
  }

  "ui.virtual" = "${p.fg-dim}"

  "ui.virtual.ruler" = {
    bg = "${p.bg-alt}"
  }

  "diagnostic.warning" = {
    underline = {
      style = "curl",
      color = "${p.warning}"
    }
  }

  "diagnostic.error" = {
    underline = {
      style = "curl",
      color = "${p.err}"
    }
  }

  "diagnostic.info" = {
    underline = {
      style = "curl",
      color = "${p.info}"
    }
  }

  "diagnostic.hint" = {
    underline = {
      style = "curl",
      color = "${p.fg-dim}"
    }
  }

  "diagnostic.unnecessary" = {
    modifiers = ["dim"]
  }

  "diagnostic.deprecated" = {
    modifiers = ["crossed_out"]
  }
''
