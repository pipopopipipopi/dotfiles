{ inputs, ... }: {
  imports = [
    inputs.zen-browser.homeModules.twilight
  ];

  programs.zen-browser = {
    enable = true;
    policies = {
      DisableAppUpdate = true;
      DisableTelemetry = true;
      TranslateEnabled = false;

      Preferences = {
        "browser.tabs.unloadOnLowMemory" = {
          Value = true;
        };
        "browser.sessionstore.interval" = {
          Value = 60000;
        };
        "browser.cache.disk.enable" = {
          Value = false;
        };
        "browser.cache.memory.enable" = {
          Value = true;
        };
        "browser.cache.memory.capacity" = {
          Value = 131072;
        };
        "browser.cache.memory.max_entry_size" = {
          Value = 20480;
        };
        "javascript.options.mem.gc_allocation_threshold_mb" = {
          Value = 10;
        };
        "javascript.options.mem.gc_high_frequency_heap_growth_max" = {
          Value = 150;
        };
      };
    };
    profiles."default" = {
      isDefault = true;
      mods = [
        "a6335949-4465-4b71-926c-4a52d34bc9c0"
      ];
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
    };
  };
}
