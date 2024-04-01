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
          "active_color=gradient(top_left=0xffeb6f92,bottom_right=0xffeb6f92)"
          "inactive_color=gradient(top_left=0xff6e6a86,bottom_right=0xff6e6a86)"
        )

        borders "''${options[@]}"
    '';
  };
}
