{
  programs.floorp = {
    enable = true;
    profiles = {
      default = {
        id = 0;
        name = "default";
        isDefault = true;
        settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "widget.gtk.ignore-bogus-leave-notify" = 1;
          "floorp.browser.user.interface" = "1";
          "browser.newtabpage.activity-stream.floorp.newtab.backdrop.blur.disable" = true;
        };
        userChrome = builtins.readFile ./userChrome.css;
      };
    };
  };
}
