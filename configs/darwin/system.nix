{
  time.timeZone = "Asia/Tokyo";

  system = {
    defaults = {
      menuExtraClock.Show24Hour = true;

      dock = {
        autohide = true;
        mru-spaces = false;
        show-recents = false;
        wvous-bl-corner = 1;
        wvous-br-corner = 1;
        wvous-tl-corner = 1;
        wvous-tr-corner = 1;
      };

      finder = {
        AppleShowAllExtensions = true;
        ShowPathbar = true;
      };

      trackpad = {
        ActuationStrength = 0;
        Clicking = true;
      };

      NSGlobalDomain = {
        AppleInterfaceStyle = "Dark";
        ApplePressAndHoldEnabled = true;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSDocumentSaveNewDocumentsToCloud = false;
        "com.apple.keyboard.fnState" = true;
      };
    };
  };
}
