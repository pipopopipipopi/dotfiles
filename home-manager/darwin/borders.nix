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
          "active_color=gradient(top_left=0xffd8cad0,bottom_right=0xffd8cad0)"
          "inactive_color=gradient(top_left=0xff978d91,bottom_right=0xff978d91)"
        )

        borders "''${options[@]}"
    '';
  };
}
