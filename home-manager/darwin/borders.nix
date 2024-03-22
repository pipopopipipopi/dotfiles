{
  home.file.borders = {
    executable = true;
    target = ".config/borders/bordersrc";
    text = ''
      #!/usr/bin/env sh
      
      options=(
          style=round
          width=6.0
          hidpi=off
          "active_color=gradient(top_left=0xffeb6f92,bottom_right=0xfff6c177)"
          "inactive_color=gradient(top_left=0xffe3cac5,bottom_right=0xffe3cac5)"
        )

        borders "''${options[@]}"
    '';
  };
}
