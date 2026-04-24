{ pkgs, ... }: {
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      kdePackages.xdg-desktop-portal-kde
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
    # config.common.default = "*";
    config = {
      common = {
        default = ["wlr" "kde" "gnome" "gtk"];
        # "org.freedesktop.impl.portal.ScreenCast" = "gnome";
        # "org.freedesktop.impl.portal.Screenshot" = "gnome";
        # "org.freedesktop.impl.portal.RemoteDesktop" = "gnome";
      };
    };
  };
}
