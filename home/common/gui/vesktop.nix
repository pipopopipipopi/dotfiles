{
  programs.vesktop = {
    enable = true;

    settings = {
      discordBranch = "stable";
    };

    vencord = {
      settings = {
        autoUpdate = false;
        autoUpdateNotification = false;

        disableMinSize = true;

        plugins = {
          CrashHandler = {
            enabled = true;
          };
          CtrlEnterSend = {
            enabled = true;
          };
          FakeNitro = {
            enabled = true;
          };
          WebKeyBinds = {
            enabled = true;
          };
          WebScreenShareFixes = {
            enabled = true;
          };
          DisableDeepLinks = {
            enabled = true;
          };
          NoTrack = {
            enabled = true;
          };
          Settings = {
            enabled = true;
            settingsLocation = "aboveNitoro";
          };
          SupporHelper = {
            enabled = true;
          };
          WebContexMenus = {
            enabled = true;
          };
        };
      };
    };
  };
}
