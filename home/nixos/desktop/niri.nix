{ inputs, pkgs, config, ... }: {
  imports = [ inputs.niri.homeModules.niri ];
  programs.niri = {
    enable = true;
    package = pkgs.niri-unstable;
    settings = {
      environment = {
        DISPLAY = ":0";
        GDK_BACKEND = "wayland";
        QT_QPA_PLATFORM = "wayland";
        CLUTTER_BACKEND = "wayland";
        SDL_VIDEODRIVER = "wayland";
        XDG_SESSION_TYPE = "wayland";
        ELECTRON_OZONE_PLATFORM_HINT = "wayland";

        GTK_IM_MODULE = "fcitx";
        QT_IM_MODULE = "fcitx";
        XMODIFIERS = "@im=fcitx";
      };
      spawn-at-startup = [
        # { command = ["swww" "init"]; }
        { command = ["swww-daemon"]; }
        { command = ["swaync"]; }
        { command = ["fcitx" "-D"]; }
        { command = ["vesktop" "--start-minimized" "--ozone-platform=wayland" "--enable-wayland-ime" "--wayland-text-input-version=3"]; }
      ];
      input = {
        keyboard = {
          repeat-delay = 300;
          repeat-rate = 30;
        };
        mouse = {
          accel-profile = "flat";
          accel-speed = 1.0;
        };
        trackball = {
          accel-profile = "flat";
          accel-speed = 1.0;
        };
        focus-follows-mouse.enable = true;
        warp-mouse-to-focus = true;
      };
      cursor = {
        size = 24;
      };
      layout = {
        border = {
          enable = true;
          width = 2;
          active.color = "#bbbbbb";
          inactive.color = "#111111";
        };
        focus-ring.enable = false;
        gaps = 5;
      };
      screenshot-path = "~/Pictures/Screenshots/Screenshot-from-%Y-%m-%d-%H-%M-%S.png";
      window-rules = [
        {
          geometry-corner-radius = let
            radius = 10.0;
          in {
            bottom-left = radius;
            bottom-right = radius;
            top-left = radius;
            top-right = radius;
          };
          clip-to-geometry = true;
          draw-border-with-background = false;
        }
        {
          matches = [
            { title = "^Picture-in-Picture$"; }
            { title = "^Discord Popout$"; }
          ];
          open-floating = true;
        }
      ];
      binds = with config.lib.niri.actions; {
        "Mod+Return".action = spawn "wezterm";
        # "Mod+B".action = spawn "floorp";
        "Mod+B".action = spawn "zen-twilight";
        "Mod+Space".action = spawn "anyrun";

        "Mod+Q".action = close-window;
        "Mod+F".action = maximize-column;
        "Mod+Shift+F".action = fullscreen-window;

        "Mod+T".action = focus-column-or-monitor-left;
        "Mod+N".action = focus-window-or-workspace-down;
        "Mod+S".action = focus-window-or-workspace-up;
        "Mod+H".action = focus-column-or-monitor-right;

        "Mod+Shift+T".action = move-column-left-or-to-monitor-left;
        "Mod+Shift+N".action = move-column-to-workspace-down;
        "Mod+Shift+S".action = move-column-to-workspace-up;
        "Mod+Shift+H".action = move-column-right-or-to-monitor-right;
      };
      hotkey-overlay.skip-at-startup = true;
    };
  };
}
