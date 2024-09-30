{
  home.file.".config/waybar/config".text = ''
    {
      "font": "JetBrainsMono Nerd Font",
      "reload_style_on_change": true,
      // "width": 1920, // Waybar width
      "spacing": 7, // Gaps between modules (4px)
      "modules-left": ["group/quicklinks-left", "wlr/taskbar", "hyprland/window"],
      "modules-center": ["hyprland/workspaces"],
      "modules-right": [
        "mpd",
        "network",
        "pulseaudio",
        "group/hardware",
        "clock",
        "group/quicklinks-right",
      ],

      //Taskbar
      "wlr/taskbar": {
        "format": "{icon}",
        "icon-size": "20",
        "on-click": "activate",
        "on-click-right": "close",
        "tooltip-format": "Go to {title}",
        "ignore-list": ["kitty", "kitty-scratchpad"],
      },

      // Hyprland
      "hyprland/workspaces": {
        "disable-scroll": true,
        "sort-by": "number",
        "all-outputs": true,
        "warp-on-scroll": false,
        "format": "{icon}",
        "format-icons": {
          "1": " ",
          "2": " ",
          "3": " ",
        },
      },
      "hyprland/window": {
        "format": "{title}",
        "icon": true,
        "icon-size": 20,
        "max-length": 30,
        "separate-outputs": true,
        "rewrite": {
          "(.*) - Brave": "$1",
        },
      },

      // Quicklinks
      "group/quicklinks-left": {
        "orientation": "horizontal",
        "modules": [
          "image",
          "custom/chatgpt",
          "custom/terminal",
          "custom/browser",
          "custom/explorer",
        ],
      },
      "image": {
        //"path": "/home/hrigved/Pictures/Icons/arch.png",
        //"on-click": "~/.config/rofi/menus/drun.sh",
        //"size": 18,
      },
      "custom/chatgpt": {
        "format": " ",
        "tooltip": true,
        "tooltip-format": "Open ChatGPT!",
        "on-click": "brave --app=https://chatgpt.com",
      },
      "custom/terminal": {
        "format": " ",
        "tooltip": true,
        "tooltip-format": " Open WezTerm!",
        "on-click": "wezterm",
      },
      "custom/browser": {
        "format": " ",
        "tooltip": true,
        "tooltip-format": " Open Zen-browser!",
        "on-click": "zen",
      },
      "custom/explorer": {
        "format": " ",
        "tooltip": true,
        //"tooltip-format": " Open Dolphin!",
        //"on-click": "dolphin",
      },

      "group/quicklinks-right": {
        "orientation": "horizontal",
        "modules": ["idle_inhibitor", "custom/wallpaper", "custom/power-menu"],
      },
      "idle_inhibitor": {
        "format": "{icon}",
        "format-icons": {
          "activated": " ",
          "deactivated": " ",
        },
      },
      //"group/power-menu": {
      //  "orientation": "inherit",
      //  "drawer": {
      //    "transition-duration": 500,
      //    "children-class": "power-child",
      //    "transition-left-to-right": false,
      //  },
      //  "modules": [
      //    "custom/wlogout",
      //    "custom/reboot",
      //    "custom/quit",
      //    "custom/suspend",
      //    "custom/lock",
      //  ],
      //},
      "custom/power-menu": {
        "format": " ",
        "tooltip": true,
        "tooltip-format": " Open Wlogout!",
        "on-click": "~/.config/hypr/scripts/power-menu.sh",
      },
      //"custom/lock": {
      //  "format": " ",
      //  "on-click": "hyprlock",
      //},
      //"custom/quit": {
      //  "format": "󰍃 ",
      //  "on-click": "hyprctl dispatch exit",
      //},
      //"custom/suspend": {
      //  "format": "⏾ ",
      //  "on-click": "systemctl suspend",
      //},
      //"custom/reboot": {
      //  "format": " ",
      //  "on-click": "systemctl reboot",
      //},
      "custom/wallpaper": {
        "format": " ",
        "tooltip": true,
        "tooltip-format": " Change Wallpaper!",
        "on-click": "~/.config/rofi/menus/swww.sh",
      },

      // Settings
      "group/settings": {
        "orientation": "horizontal",
        "modules": [],
      },

      // Temperature
      "temperature": {
        "critical-threshold": 80,
        "format": "{temperatureC}°C {icon}",
        "format-icons": ["", "", ""],
      },

      // Audio setup
      "pulseaudio": {
        "format": "{volume}% {icon}",
        "format-bluetooth": "{volume}% {icon} {format_source}",
        "format-bluetooth-muted": " {icon} {format_source}",
        "format-muted": " 󰝟  {format_source}",
        "format-source": "{volume}% ",
        "format-source-muted": "",
        "format-icons": {
          "default": ["", " ", " "],
        },
        "max-volume": 150,
        "on-click": "pavucontrol",
      },

      // Network setup
      "network": {
        "format": "{ifname}",
        "format-wifi": "{essid} ({signalStrength}%)  ",
        "format-ethernet": "{bandwidthDownBytes}  ",
        "format-disconnected": "", //An empty format will hide the module.
        "tooltip-format": "{ifname} via {gwaddr} 󰊗",
        "tooltip-format-wifi": "{essid} ({signalStrength}%) ",
        "tooltip-format-ethernet": "{ifname}  ",
        "tooltip-format-disconnected": "Disconnected",
        "max-length": 50,
        "interval": 2,
      },

      // Hardware info
      "group/hardware": {
        "orientation": "horizontal",
        "modules": ["disk", "cpu", "memory"],
      },
      "disk": {
        "format": "{percentage_used}%  ",
        "path": "/home",
      },
      "cpu": {
        "format": " {usage}%  ",
        "tooltip": false,
      },
      "memory": {
        "format": " {}%  ",
      },

      // Clock
      "clock": {
        "format": "󱑂 {:%R %a}", // 19:28 Mon
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
        "format-alt": "󰨳 {:%d %b %Y}", // 25 Dec 2006
      },
    }
  '';

  home.file.".config/waybar/style.css".text = ''
    /* Colors file */
    @import 'colors.css';
    * {
        all: unset; /*this is really important to isolate waybar from gtk*/
        font-family: "JetBrainsMono Nerd Font";
        font-size: 15px;
        font-weight: normal;
    }

    /* COLORS USED */
    /* font-color: @foreground */
    /* widgets-background: @background */
    /* quicklinks-background: @color1 */
    /* workspaces-background: @color1 */
    /* workspaces-acticve: @color11 */
    /* workspaces-inactive: @color3 */
    /* all-hovers: @color11 */

    /* TOOLTIP */
    tooltip {
        background: @background;
        border: 1.5px solid @color5;
        border-radius: 8px;
        padding: 2px 100px;
    }

    /* COMMON CONFIGS */
    #image,
    #mpd *,
    #taskbar *,
    #quicklinks-right *,
    #quicklinks-left * {
        border-radius: 8px;
        color: @foreground;
    }

    #clock,
    #hardware,
    #network,
    #workspaces,
    #pulseaudio,
    #taskbar,
    #quicklinks-right,
    #quicklinks-left {
        color: @foreground;
        border-radius: 10px;
        background: @background;
        padding: 3px 7px;
        margin: 4.5px;
        opacity: 0.9;
    }

    /* CUSTOM CONFIGS */

    /* workspaces */
    #workspaces {
        background: @color1;
        margin: 4px 5px;
        padding: 1.5px;
        border-radius: 15px;
    }
    #workspaces button {
        background: @color3;
        min-width: 25px;
        margin: 2px;
        border-radius: 45%; /* circle */
        transition: all 0.2s ease-in-out;
        padding: 1px;
        padding-left: 4px; /* because browser and filebrowser icons are NOT fully centered */
        opacity: 0.6;
    }
    #workspaces button:nth-child(first) {
        padding-left: 0px; /* because code icon IS fully centered */
    }
    #workspaces button:hover {
        opacity: 0.8;
        background: @color11;
    }
    #workspaces button.active { 
            background: @color11;
            min-width: 50px;
            border-radius: 10px;
            transition: all 0.2s ease-in-out;
            opacity: 0.9;
        }
    #workspaces button.urgent {
            color: @foreground;
            transition: all 0.3s ease-in-out;
        }

        /* quicklinks  */
    #quicklinks-right,
    #quicklinks-left {
            background: @color1;
        }
    #quicklinks-right {
            padding-right: 0px;
            margin-right: 7px;
        }
    #quicklinks-left {
            margin-left: 7px;
        }
    #quicklinks-right *,
    #quicklinks-left * {
            padding: 0px 5px;
            transition: all 0.2s ease-in-out;
        }
    #quicklinks-right *:hover,
    #quicklinks-left *:hover {
            background: @color11;
        }

        /* taskbar */
    #taskbar {
            padding: 0px;
        }
    #taskbar * {
            margin: 2px 3px;
        }
    #taskbar *:hover {
            background: @color11;
        }

        /* power-menu */
    #custom-power-menu {
            color: #f7768e; /* red clor */
            padding-right: 3px;
            padding-left: 7px;
        }

        /* wallpaper */
    #custom-wallpaper {
            padding-right: 2px;
        }

        /* image */
    #image {
        margin: 0px;
        padding: 0px;
    }

    #cava {
        background: @background;
    }
  '';

  home.file.".config/waybar/colors.css".text = ''
    @define-color foreground #CAE6E6;
    @define-color background rgba(1,2,4,0.50);
    @define-color cursor #CAE6E6;

    @define-color color0 #010204;
    @define-color color1 #0B1319;
    @define-color color2 #14272E;
    @define-color color3 #14272E;
    @define-color color4 #234852;
    @define-color color5 #346E79;
    @define-color color6 #409596;
    @define-color color7 #ABD3D3;
    @define-color color8 #779393;
    @define-color color9 #0E1920;
    @define-color color10 #1A333D;
    @define-color color11 #1A333D;
    @define-color color12 #2E5E6B;
    @define-color color13 #4592A1;
    @define-color color14 #65BDBD;
    @define-color color15 #ABD3D3;
  '';
}
