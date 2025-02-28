{ pkgs, ... }: {
  home.packages = [ pkgs.dconf ];
  gtk = {
    enable = true;
    theme = {
      package = pkgs.flat-remix-gtk;
      name = "Flat-Remix-GTK-Green-Dark";
    };
  };
}
