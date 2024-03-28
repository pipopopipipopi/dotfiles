{
  programs.starship = {
    enable = true;
    settings = builtins.fromTOML ''
      ## FIRST LINE/ROW: Info & Status
      # First param ─┌
      [username]
      format = " [╭─]($style) "
      style_user = "bold fg:#ea9a97"
      style_root = "bold fg:#3e8fb0"
      show_always = true

      [cmd_duration]
      disabled = true

      # Prompt: param 2 └─
      [character]
      success_symbol = " [╰─<><](bold fg:#ea9a97)"
      error_symbol = " [╰<×><](bold fg:#ea9a97)"
      vimcmd_symbol = " [╰N<><](bold fg:#ea9a97)"
      vimcmd_replace_one_symbol = " [╰R<><](bold fg:#ea9a97)"
      vimcmd_replace_symbol = " [╰R<><](bold fg:#ea9a97)"
      vimcmd_visual_symbol = " [╰V<><](bold fg:#ea9a97)"

      [aws]
      symbol = "  "

      [buf]
      symbol = " "

      [c]
      symbol = " "

      [conda]
      symbol = " "

      [dart]
      symbol = " "

      [directory]
      read_only = " 󰌾"

      [docker_context]
      symbol = " "

      [elixir]
      symbol = " "

      [elm]
      symbol = " "

      [fossil_branch]
      symbol = " "

      [git_branch]
      symbol = " "

      [golang]
      symbol = " "

      [guix_shell]
      symbol = " "

      [haskell]
      symbol = " "

      [haxe]
      symbol = "⌘ "

      [hg_branch]
      symbol = " "

      [java]
      symbol = " "

      [julia]
      symbol = " "

      [lua]
      symbol = " "

      [memory_usage]
      symbol = " "

      [meson]
      symbol = "󰔷 "

      [nim]
      symbol = "󰆥 "

      [nix_shell]
      symbol = " "

      [nodejs]
      symbol = " "

      [os.symbols]
      Alpine = " "
      Amazon = " "
      Android = " "
      Arch = " "
      CentOS = " "
      Debian = " "
      DragonFly = " "
      Emscripten = " "
      EndeavourOS = " "
      Fedora = " "
      FreeBSD = " "
      Garuda = "󰛓 "
      Gentoo = " "
      HardenedBSD = "󰞌 "
      Illumos = " "
      Linux = " "
      Macos = " "
      Manjaro = " "
      Mariner = " "
      MidnightBSD = " "
      Mint = " "
      NetBSD = " "
      NixOS = " "
      OpenBSD = " "
      openSUSE = " "
      OracleLinux = "󰌷 "
      Pop = " "
      Raspbian = " "
      Redhat = " "
      RedHatEnterprise = " "
      Redox = " "
      Solus = " "
      SUSE = " "
      Ubuntu = " "
      Unknown = " "
      Windows = "󰖳 "

      [package]
      symbol = "󰏗 "

      [pijul_channel]
      symbol = "🪺 "

      [python]
      symbol = " "

      [rlang]
      symbol = "󰟔 "

      [ruby]
      symbol = " "

      [rust]
      symbol = "🦀 "

      [scala]
      symbol = " "

      [spack]
      symbol = "🅢 "
    '';
  };
}
