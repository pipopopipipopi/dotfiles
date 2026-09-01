{ theme }: let
  p = theme.palette-mapping;
in
''
  [mgr]
  marker_copied = { fg = "${p.green}", bg = "${p.green}" }
  marker_cut = { fg = "${p.err}", bg = "${p.err}" }
  marker_marked = { fg = "${p.fg-link-visited}", bg = "${p.fg-link-visited}" }
  marker_selected = { fg = "${p.err}", bg = "${p.err}" }

  cwd = { fg = "${p.name}" }

  find_keyword = { fg = "${p.err}", bg = "${p.bg-main}" }
  find_position = {}

  count_copied = { fg = "${p.bg-main}", bg = "${p.green}" }
  count_cut = { fg = "${p.bg-main}", bg = "${p.err}" }
  count_selected = { fg = "${p.bg-main}", bg = "${p.name}" }

  border_symbol = "│"
  border_style = { fg = "${p.border}" }

  [indicator]
  parent = { reversed = true }
  current = { reversed = true }
  preview = { reversed = true }
  padding = { open = "█", close = "█" }

  [tabs]
  active = { fg = "${p.bg-main}", bg = "${p.red-faint}" }
  inactive = { fg = "${p.blue}", bg = "${p.bg-dim}" }

  sep_inner = { open = "", close = "" }
  sep_outer = { open = "", close = "" }


  [mode]
  normal_main = { fg = "${p.bg-main}", bg = "${p.red-faint}" }
  normal_alt = { fg = "${p.blue}", bg = "${p.bg-dim}" }

  select_main = { fg = "${p.bg-main}", bg = "${p.fg-link-visited}" }
  select_alt = { fg = "${p.fg-link-visited}", bg = "${p.bg-dim}" }

  unset_main = { fg = "${p.bg-main}", bg = "${p.warning}" }
  unset_alt = { fg = "${p.warning}", bg = "${p.bg-dim}" }


  [status]
  sep_left = { open = "", close = "" }
  sep_right = { open = "", close = "" }

  overall = { fg = "${p.fg-main}", bg = "${p.bg-alt}" }

  progress_label = { fg = "${p.blue}", bg = "${p.bg-dim}", bold = true }
  progress_normal = { fg = "${p.bg-main}", bg = "${p.blue}" }
  progress_error = { fg = "${p.bg-main}", bg = "${p.err}" }

  perm_type = { fg = "${p.green}" }
  perm_read = { fg = "${p.name}" }
  perm_write = { fg = "${p.err}" }
  perm_exec = { fg = "${p.green-cooler}" }
  perm_sep = { fg = "${p.fg-dim}" }


  [pick]
  border = { fg = "${p.border}" }
  active = { fg = "${p.fg-link-visited}", bold = true }
  inactive = {}

  [input]
  border = { fg = "${p.border}" }
  title = {}
  value = {}
  selected = { reversed = true }

  [completion]
  border = { fg = "${p.border}" }
  active = { reversed = true }
  inactive = {}

  [tasks]
  border = { fg = "${p.border}" }
  title = {}
  hovered = { fg = "${p.fg-link-visited}" }

  [which]
  cols = 2
  separator = " - "
  separator_style = { fg = "${p.fg-dim}" }
  mask = { bg = "${p.bg-alt}" }
  rest = { fg = "${p.fg-dim}" }
  cand = { fg = "${p.blue}" }
  desc = { fg = "${p.fg-dim}" }

  [help]
  on = { fg = "${p.green}" }
  run = { fg = "${p.fg-link-visited}" }
  desc = {}
  hovered = { reversed = true, bold = true }
  footer = { fg = "${p.bg-main}", bg = "${p.border}" }

  [notify]
  title_info = { fg = "${p.info}" }
  title_warn = { fg = "${p.warning}" }
  title_error = { fg = "${p.err}" }

  [filetype]
  rules = [
    # images
    { mime = "image/*", fg = "${p.yellow}" },

    # media
    { mime = "{audio,video}/*", fg = "${p.magenta}" },

    # archives
    { mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}", fg = "${p.red}" },

    # documents
    { mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${p.cyan}" },

    # broken links
    { url = "*", is = "orphan", fg = "${p.err}" },

    # executables
    { url = "*", is = "exec", fg = "${p.green}" },

    # fallback
    { url = "*", fg = "${p.fg-main}" },
    { url = "*/", fg = "${p.magenta-cooler}" },
  ]
''
