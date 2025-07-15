{
  programs.firefox = {
    enable = true;
    policies = {
      AppAutoUpdate = false;
      DisapleAppUpate = true;
      DisableTelemetry = false;
    };
    profiles.pipopo = {
      isDefault = true;
      name = "pipopo";
      path = "pipopo.default";
      search = {
        force = true;
        default = "ddg";
        privateDefault = "ddg";
        engines = {
          google.metaData.alias = "gg";
          ddg.metaData.alias = "dd";
          bing.metaData.hidden = true;
          wikipedia.metaData.hidden = true;
          youtube = {
            name = "YouTube";
            urls = [{ templates = "https://www.youtube.com/results?search_query={searchTerms}"; }];
            definedAliases = [ "yt" ];
          };
          github = {
            name = "GitHub";
            urls = [{ templates = "https://github.com/search?q={searchTerms}&type=repositories"; }];
            definedAliases = [ "gh" ];
          };
          nix-packages = {
            name = "Nix Packages";
            urls = [{ templates = "https://search.nixos.org/packages?channel=unstable&type=packages&query={searchTerms}"; }];
            definedAliases = [ "nixpkgs" ];
          };
        };
      };
      settings = {
        "app.update.enable" = false;
        "browser.tabs.closeWindowWithLastTab" = false;
        "browser.shell.checkDefaultBrowser" = false;
        "general.autoScroll" = true;
        "general.smoothScroll" = true;
        "general.smoothScroll.msdPhysics.enabled" = true;
        "sidebar.verticalTabs" = true;
      };
    };
  };
}
