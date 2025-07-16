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
          startpage = {
            name = "Startpage";
            urls = [{
              template = "https://www.startpage.com/sp/search";
              params = [
                { name = "query"; value = "{searchTerms}"; }
              ];
            }];
            definedAliases = [ "sp" ];
          };
          youtube = {
            name = "YouTube";
            urls = [{
              template = "https://www.youtube.com/results";
              params = [
                { name = "search_query"; value = "{searchTerms}"; }
              ];
            }];
            definedAliases = [ "yt" ];
          };
          github = {
            name = "GitHub";
            urls = [{
              template = "https://github.com/search";
              params = [
                { name = "type"; value = "repositories"; }
                { name = "q"; value = "{searchTerms}"; }
              ];
            }];
            definedAliases = [ "gh" ];
          };
          nix-packages = {
            name = "Nix Packages";
            urls = [{
              template = "https://search.nixos.org/packages";
              params = [
                { name = "channel"; value = "unstable"; }
                { name = "type"; value = "packages"; }
                { name = "query"; value = "{searchTerms}"; }
              ];
            }];
            definedAliases = [ "nixpkgs" ];
          };
          home-manager = {
            name = "Home Manager";
            urls = [{
              template = "https://home-manager-options.extranix.com";
              params = [
                { name = "release"; value = "master"; }
                { name = "query"; value = "{searchTerms}"; }
              ];
            }];
            definedAliases = [ "hm" ];
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
        "network.prefetch-next" = false;
        "sidebar.verticalTabs" = true;
      };
    };
  };
}
