{
  home.file.".config/anyrun/config.ron".text = ''
    Config(
      // Position/size fields use an enum for the value, it can be either:
      // Absolute(n): The absolute value in pixels
      // Fraction(n): A fraction of the width or height of the full screen (depends on exclusive zones and the settings related to them) window respectively

      // The horizontal position, adjusted so that Relative(0.5) always centers the runner
      x: Fraction(0.5),

      // The vertical position, works the same as `x`
      y: Absolute(200),

      // The width of the runner
      width: Absolute(600),

      // The minimum height of the runner, the runner will expand to fit all the entries
      height: Absolute(0),

      // Hide match and plugin info icons  
      hide_icons: false, 

      // ignore exclusive zones, f.e. Waybar  
      ignore_exclusive_zones: false, 

      // Layer shell layer: Background, Bottom, Top, Overlay  
      layer: Overlay, 

      // Hide the plugin info panel
      hide_plugin_info: false, 

      // Close window when a click outside the main box is received
      close_on_click: true,

      // Show search results immediately when Anyrun starts
      show_results_immediately: false,

      // Limit amount of entries shown in total
      max_entries: None,

      // List of plugins to be loaded by default, can be specified with a relative path to be loaded from the
      // `<anyrun config dir>/plugins` directory or with an absolute path to just load the file the path points to.
      plugins: [
        "libapplications.so",
        "libsymbols.so",
        "libshell.so",
        "libtranslate.so",
        "libdictionary.so",
        "librink.so",
        "libwebsearch.so",
      ],
    )
  '';

  home.file.".config/anyrun/websearch.ron".text = ''
    Config(
      prefix: "",
      // Options: Google, Ecosia, Bing, DuckDuckGo, Custom
      //
      // Custom engines can be defined as such:
      // Custom(
      //   name: "Searx",
      //   url: "searx.be/?q={}",
      // )
      //
      // NOTE: `{}` is replaced by the search query and `https://` is automatically added in front.
      engines: [Google] 
    )
  '';

  home.file.".config/anyrun/style.css".text = ''
    * {
      all: unset;
      font-size: 1.2rem;
    }

    #window,
    #match,
    #entry,
    #plugin,
    #main { background: transparent; }

    #match.activatable {
      border-radius: 10px;
      padding: .3rem .9rem;
      margin-top: .01rem;
    }
    #match.activatable:first-child { margin-top: 9px; }
    #match.activatable:last-child { margin-bottom: 1px; }

    #plugin:hover #match.activatable {
      border-radius: 10px;
      padding: .3rem;
      margin-top: .01rem;
      margin-bottom: 0;
    }


    #match:selected {
      color: @theme_selected_fg_color;
      background: @theme_selected_bg_color;
      border-radius: 8px;
    }

    #entry {
      border-radius: 8px;
      margin: .3rem;
      padding: .6rem 1.0rem;
      caret-color: white;
      font-size: 26px;
      font-weight: 500;
    }

    list > #plugin {
      border-top: 1px solid rgba(255,255,255,.11);
      margin: 0.3rem;
      padding-top: 4px;
      padding-left: 3px;
      font-weight: 400;
    }

    list > #plugin:first-child { 
      margin-top: .3rem;
    }

    list > #plugin:last-child { 
      margin-bottom: .3rem; 
    }

    list > #plugin:hover { 
      padding: .7rem; 
    }

    box#main {
      border-color: rgba(255,255,255,0.2);    
      color: white;
      border-width: 1px;
      border-style: solid;
      margin-top: 15px;
      background-color: rgba(0,0,0,0.6);
      border-radius: 22px;
      padding: .7rem;
    }

    zlabel#plugin {
      font-size:14px;
    }
  '';
}
