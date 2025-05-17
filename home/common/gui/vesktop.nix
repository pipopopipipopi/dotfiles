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
        useQuickCss = true;
        themeLinks = [];
        enabledThemes = [];
        enableReactDevtools = false;
        frameless = true;
        winCtrlQ = false;
        disableMinSize = true;
        winNativeTitleBar = false;
        plugins = {
          CommandsAPI = {
            enabled = true;
          };
          MemberListDecoratorsAPI = {
            enabled = true;
          };
          MessageAccessoriesAPI = {
            enabled = true;
          };
          MessageDecorationsAPI = {
            enabled = true;
          };
          MessageEventsAPI = {
            enabled = true;
          };
          UserSettingsAPI = {
            enabled = true;
          };
          CallTimer = {
            enabled = true;
          };
          ClearURLs = {
            enabled = true;
          };
          CrashHandler = {
            enabled = true;
          };
          CtrlEnterSend = {
            enabled = true;
            submitRule = "ctrl+enter";
            sendMessageInTheMiddleOfACodeBlock = true;
          };
          FakeNitro = {
            enabled = true;
            enableEmojiBypass = true;
            emojiSize = 48;
            transformEmojis = true;
            enableStickerBypass = true;
            stickerSize = 160;
            transformStickers = true;
            transformCompoundSentence = false;
            enableStreamQualityBypass = true;
            useHyperLinks = true;
            hyperLinkText = "{{NAME}}";
            disableEmbedPermissionCheck = false;
          };
          GifPaste = {
            enabled = true;
          };
          MemberCount = {
            enabled = true;
            toolTip = true;
            mesberList = true;
          };
          PlatformIndicators = {
            enabled = true;
            colorMobileIndicator = true;
            list = true;
            badges = true;
            messages = true;
          };
          VolumeBooster = {
            enabled = true;
          };
          WhoReacted = {
            enabled = true;
          };
          NoTrack = {
            enabled = true;
            disableAnalytics = true;
          };
          Settings = {
            enabled = true;
            settingsLocation = "aboveNitoro";
          };
          SupporHelper = {
            enabled = true;
          };
          WebKeyBinds = {
            enabled = true;
          };
          WebScreenShareFixes = {
            enabled = true;
          };
          WebContexMenus = {
            enabled = true;
            addBack = true;
          };
          BadgeAPI = {
            enabled = true;
          };
        };
      };
    };
  };
}
