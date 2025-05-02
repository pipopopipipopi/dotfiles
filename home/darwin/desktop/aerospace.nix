{
  programs.aerospace = {
    enable = true;
    userSettings = {
      after-login-command = [];
      after-startup-command = [];
      start-at-login = true;
      enable-normalization-flatten-containers = true;
      enable-normalization-opposite-orientation-for-nested-containers = true;
      accordion-padding = 30;
      default-root-container-layout = "tiles";
      default-root-container-orientation = "auto";
      on-focused-monitor-changed = ["move-mouse monitor-lazy-center"];
      automatically-unhide-macos-hidden-apps = false;
      gaps = {
        inner.horizontal = 10;
        inner.vertical =   10;
        outer.left =       10;
        outer.bottom =     10;
        outer.top =        10;
        outer.right =      10;
      };
      mode.main.binding = {
        alt-j = "focus left";
        alt-k = "focus down";
        alt-l = "focus up";
        alt-semicolon = "focus right";

        alt-1 = "workspace 1";
        alt-2 = "workspace 2";
        alt-3 = "workspace 3";
        alt-4 = "workspace 4";
        alt-5 = "workspace 5";
        alt-6 = "workspace 6";
        alt-7 = "workspace 7";
        alt-8 = "workspace 8";
        alt-9 = "workspace 9";

        alt-shift-1 = "move-node-to-workspace 1";
        alt-shift-2 = "move-node-to-workspace 2";
        alt-shift-3 = "move-node-to-workspace 3";
        alt-shift-4 = "move-node-to-workspace 4";
        alt-shift-5 = "move-node-to-workspace 5";
        alt-shift-6 = "move-node-to-workspace 6";
        alt-shift-7 = "move-node-to-workspace 7";
        alt-shift-8 = "move-node-to-workspace 8";
        alt-shift-9 = "move-node-to-workspace 9";
      };
      mode.service.binding = {
        alt-shift-j = ["join-with left" "mode main"];
        alt-shift-k = ["join-with down" "mode main"];
        alt-shift-l = ["join-with up" "mode main"];
        alt-shift-semicolon = ["join-with right" "mode main"];
      };
    };
  };
}
