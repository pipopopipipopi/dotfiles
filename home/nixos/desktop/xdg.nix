{
  xdg = {
    enable = true;
    mimeApps.enable = true;
    configFile."mimeapps.list".force = true;
    mimeApps.associations.added = {
      "text/html" = [ "zen-twilight.desktop" ];
      "x-scheme-handler/http" = [ "zen-twilight.desktop" ];
      "x-scheme-handler/https" = [ "zen-twilight.desktop" ];
      "image/png" = [ "com.interversehq.qView.desktop" ];
      "image/svg" = [ "com.interversehq.qView.desktop" ];
      "image/jpeg" = [ "com.interversehq.qView.desktop" ];
      "image/gif" = [ "com.interversehq.qView.desktop" ];
      "image/webp" = [ "com.interversehq.qView.desktop" ];
      "video/mp4" = [ "mpv.desktop" ];
      "video/avi" = [ "mpv.desktop" ];
      "application/pdf" = [ "org.kde.okular.desktop" ];
      "inode/directory" = [ "org.kde.dolphin.desktop" ];
    };
    mimeApps.defaultApplications = {
      "text/html" = [ "zen-twilight.desktop" ];
      "x-scheme-handler/http" = [ "zen-twilight.desktop" ];
      "x-scheme-handler/https" = [ "zen-twilight.desktop" ];
      "image/png" = [ "com.interversehq.qView.desktop" ];
      "image/svg" = [ "com.interversehq.qView.desktop" ];
      "image/jpeg" = [ "com.interversehq.qView.desktop" ];
      "image/gif" = [ "com.interversehq.qView.desktop" ];
      "image/webp" = [ "com.interversehq.qView.desktop" ];
      "video/mp4" = [ "mpv.desktop" ];
      "video/avi" = [ "mpv.desktop" ];
      "application/pdf" = [ "org.kde.okular.desktop" ];
      "inode/directory" = [ "org.kde.dolphin.desktop" ];
    };
  };
}
