{
  home.file.".config/waybar/config.jsonc".text = ''
    // -*- mode: jsonc -*-
    {
        // "layer": "top", // Waybar at top layer
        // "position": "bottom", // Waybar position (top|bottom|left|right)
        "height": 30, // Waybar height (to be removed for auto height)
        // "width": 1280, // Waybar width
        "spacing": 4, // Gaps between modules (4px)
        "margin-top": 5,
        "margin-bottom": 5,
        "margin-left": 10,
        "margin-right": 10,
        // Choose the order of the modules
        "modules-left": [
            "hyprland/workspaces"
        ],
        "modules-center": [
            "clock",
        ],
        "modules-right": [
            "battery",
            "tray",
            "hyprland/language",
            "custom/quick-settings"
        ],
        "custom/quick-settings": {
            "format": "󰣇",
            "on-click": "ags -t sidebar",
            "tooltip": false
        },
        "hyprland/language": {
            "padding": 10,
        },
        "hyprland/workspaces": {
            "disable-scroll": true,
            "all-outputs": true,
            "warp-on-scroll": false,
            "format": "{name}",
            "persistent-workspaces": {
                "1": [],
                "2": [],
                "3": [],
                "4": [],
                "5": []
            }
        },
        "keyboard-state": {
            "numlock": false,
            "capslock": true,
            "format": "{icon}",
            "format-icons": {
                "locked": "󰘲",
                "unlocked": ""
            }
        },
        "sway/mode": {
            "format": "<span style=\"italic\">{}</span>"
        },
        "sway/scratchpad": {
            "format": "{icon} {count}",
            "show-empty": false,
            "format-icons": [
                "",
                ""
            ],
            "tooltip": true,
            "tooltip-format": "{app}: {title}"
        },
        "mpd": {
            "format": "{stateIcon} {artist} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S})",
            "format-disconnected": "Disconnected ",
            "unknown-tag": "N/A",
            "interval": 1,
            "port": 7700,
            "on-click": "mpc -p 7700 toggle",
            "on-scroll-up": "mpc -p 7700 next",
            "on-scroll-down": "mpc -p 7700 prev",
            "consume-icons": {
                "on": " "
            },
            "random-icons": {
                "off": "<span color=\"#f53c3c\"></span> ",
                "on": " "
            },
            "repeat-icons": {
                "on": " "
            },
            "single-icons": {
                "on": "1 "
            },
            "state-icons": {
                "paused": "",
                "playing": ""
            },
            "tooltip-format": "MPD (connected)",
            "tooltip-format-disconnected": "MPD (disconnected)"
        },
        "idle_inhibitor": {
            "format": "{icon}",
            "format-icons": {
                "activated": "",
                "deactivated": ""
            }
        },
        "tray": {
            // "icon-size": 21,
            "spacing": 10
        },
        "clock": {
            // "timezone": "America/New_York",
            "format": "{:%H:%M %d.%m.%Y %A}",
            "tooltip": false,
            "on-click": "ags -t calendar"
        },
        "cpu": {
            "format": "{usage}% ",
            "tooltip": false
        },
        "memory": {
            "format": "󰘚 {}%"
        },
        "temperature": {
            // "thermal-zone": 2,
            // "hwmon-path": "/sys/class/hwmon/hwmon2/temp1_input",
            "critical-threshold": 85,
            // "format-critical": "{temperatureC}°C {icon}",
            "format": " {temperatureC}°C"
        },
        "backlight": {
            // "device": "acpi_video1",
            "format": "{percent}% {icon}",
            "format-icons": [
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                ""
            ]
        },
        "battery": {
            "states": {
                // "good": 95,
                "warning": 30,
                "critical": 15
            },
            "format": "{icon}  {capacity}%",
            "format-full": "{icon}  {capacity}%",
            "format-charging": "{icon}  {capacity}%",
            "format-plugged": "{icon}  {capacity}%",
            "format-alt": "{icon}  {time}",
            // "format-good": "", // An empty format will hide the module
            "format-icons": [
                "",
                "",
                "",
                "",
                ""
            ]
        },
        "battery#bat2": {
            "bat": "BAT2"
        },
        "power-profiles-daemon": {
            "format": "{icon}",
            "tooltip-format": "Power profile: {profile}\nDriver: {driver}",
            "tooltip": true,
            "format-icons": {
                "default": "",
                "performance": "",
                "balanced": "",
                "power-saver": ""
            }
        },
        "network": {
            // "interface": "wlp2*", // (Optional) To force the use of this interface
            "format-wifi": "{essid} ({signalStrength}%) ",
            "format-ethernet": "{ipaddr}/{cidr} ",
            "tooltip-format": "{ifname} via {gwaddr} ",
            "format-linked": "{ifname} (No IP) ",
            "format-disconnected": "Disconnected ⚠",
            "format-alt": "{ifname}: {ipaddr}/{cidr}"
        },
        "pulseaudio": {
            // "scroll-step": 1, // %, can be a float
            "format": "{volume}% {icon} {format_source}",
            "format-bluetooth": "{volume}% {icon} {format_source}",
            "format-bluetooth-muted": " {icon} {format_source}",
            "format-muted": " {format_source}",
            "format-source": "{volume}% ",
            "format-source-muted": "",
            "format-icons": {
                "headphone": "",
                "hands-free": "",
                "headset": "",
                "phone": "",
                "portable": "",
                "car": "",
                "default": [
                    "",
                    "",
                    ""
                ]
            },
            "on-click": "pavucontrol"
        },
        "custom/media": {
            "format": "{icon} {}",
            "return-type": "json",
            "max-length": 40,
            "format-icons": {
                "spotify": "",
                "default": "🎜"
            },
            "escape": true,
            "exec": "$HOME/.config/waybar/mediaplayer.py 2> /dev/null" // Script in resources folder
            // "exec": "$HOME/.config/waybar/mediaplayer.py --player spotify 2> /dev/null" // Filter player based on name
        },
        "custom/runcat": {
            "exec": "polycat"
        }
    }
  '';

  home.file.".config/waybar/style.css".text = ''
    * {
      /* `otf-font-awesome` is required to be installed for icons */
      font-family: "polycat", "CommitMono Nerd Font";
      font-size: 13px;
    }

    window#waybar {
      background-color: transparent;
      transition-property: background-color;
      transition-duration: 0.5s;
      color: #c5c9c5;
    }

    window#waybar.hidden {
      opacity: 0.2;
    }

    button {
      /* Use box-shadow instead of border so the text isn't offset */
      box-shadow: inset 0 -3px transparent;
      /* Avoid rounded borders under each button name */
      border: none;
      border-radius: 0;
    }

    /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
    button:hover {
      background: inherit;
    }

    /* you can set a style on hover for any module like this */
    #pulseaudio:hover {
      background-color: #a37800;
    }

    #workspaces {
      transition: ease 0.5s;
      background-color: rgba(24, 22, 22, 1);
      border-radius: 10px;
      border: solid 1px #585858;
    }

    #workspaces button {
      border-radius: 5px;
      border: solid 1px transparent;
      transition: ease 0.5s;
      padding: 0 15px;
      margin: 2px 3px;
      background-color: transparent;
    }

    #workspaces button:hover {
      color: #8ba4b0;
      background-color: rgba(139, 164, 176, 0.1);
    }

    #workspaces button.active {
      color: #8ba4b0;
      border-color: #8ba4b0;
      background-color: rgba(139, 164, 176, 0.1);
    }

    #mode {
      background-color: #64727d;
      box-shadow: inset 0 -3px #ffffff;
    }

    #mpd,
    #custom-runcat,
    #cpu,
    #memory,
    #battery,
    #tray,
    #temperature,
    #language,
    #clock,
    #custom-quick-settings,
    #window {
      border-radius: 10px;
      border: solid 1px #585858;
      padding: 0 20px;
      background-color: rgba(24, 22, 22, 1);
    }
    #custom-quick-settings {
      color: #8ba4b0;
    }

    /* If workspaces is the leftmost module, omit left margin */
    .modules-left > widget:first-child > #workspaces {
      margin-left: 0;
    }

    /* If workspaces is the rightmost module, omit right margin */
    .modules-right > widget:last-child > #workspaces {
      margin-right: 0;
    }

    @keyframes blink {
      to {
        background-color: #ffffff;
        color: #000000;
      }
    }

    /* Using steps() instead of linear as a timing function to limit cpu usage */
    #battery.critical:not(.charging) {
      animation-name: blink;
      animation-duration: 0.5s;
      animation-timing-function: steps(12);
      animation-iteration-count: infinite;
      animation-direction: alternate;
    }

    #power-profiles-daemon {
      padding-right: 15px;
    }

    #power-profiles-daemon.performance {
      background-color: #f53c3c;
      color: #ffffff;
    }

    #power-profiles-daemon.balanced {
      background-color: #2980b9;
      color: #ffffff;
    }

    #power-profiles-daemon.power-saver {
      background-color: #2ecc71;
      color: #000000;
    }

    label:focus {
      background-color: #000000;
    }

    #disk {
      background-color: #964b00;
    }

    #backlight {
      background-color: #90b1b1;
    }

    #network {
      background-color: #2980b9;
    }

    #network.disconnected {
      background-color: #f53c3c;
    }

    #pulseaudio {
      background-color: #f1c40f;
      color: #000000;
    }

    #pulseaudio.muted {
      background-color: #90b1b1;
      color: #2a5c45;
    }

    #wireplumber {
      background-color: #fff0f5;
      color: #000000;
    }

    #wireplumber.muted {
      background-color: #f53c3c;
    }

    #custom-media {
      background-color: #66cc99;
      color: #2a5c45;
      min-width: 100px;
    }

    #custom-media.custom-spotify {
      background-color: #66cc99;
    }

    #custom-media.custom-vlc {
      background-color: #ffa000;
    }

    #tray > .passive {
      -gtk-icon-effect: dim;
    }

    #tray > .needs-attention {
      -gtk-icon-effect: highlight;
      background-color: #eb4d4b;
    }

    #idle_inhibitor {
      background-color: #2d3436;
    }

    #idle_inhibitor.activated {
      background-color: #ecf0f1;
      color: #2d3436;
    }

    #keyboard-state {
      padding: 0 0px;
      min-width: 16px;
    }

    #keyboard-state > label {
      padding: 0 5px;
    }

    #keyboard-state > label.locked {
      background: rgba(0, 0, 0, 0.2);
    }

    #scratchpad {
      background: rgba(0, 0, 0, 0.2);
    }

    #scratchpad.empty {
      background-color: transparent;
    }

    #privacy {
      padding: 0;
    }

    #privacy-item {
      padding: 0 5px;
      color: white;
    }

    #privacy-item.screenshare {
      background-color: #cf5700;
    }

    #privacy-item.audio-in {
      background-color: #1ca000;
    }

    #privacy-item.audio-out {
      background-color: #0069d4;
    }
  '';
}
