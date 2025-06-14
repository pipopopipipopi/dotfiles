{ inputs, ... }: {
  imports = [ inputs.nixcord.homeModules.nixcord ];

  programs.nixcord = {
    enable = true;
    discord.enable = false;
    vesktop.enable = true;

    config = {
      autoUpdate = false;
      autoUpdateNotification = false;
      useQuickCss = true;
      frameless = true;
      transparent = true;
      disableMinSize = true;

      plugins = {
        callTimer.enable = true;
        clearURLs.enable = true;
        crashHandler.enable = true;
        ctrlEnterSend = {
          enable = true;
          submitRule = "ctrl+enter";
          sendMessageInTheMiddleOfACodeBlock = true;
        };
        fakeNitro.enable = true;
        gifPaste.enable = true;
        memberCount.enable = true;
        platformIndicators.enable = true;
        volumeBooster.enable = true;
        whoReacted.enable = true;
      };
    };
  };
}
