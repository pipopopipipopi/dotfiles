local wezterm = require "wezterm"
local darwin = wezterm.target_triple:find("darwin")
local linux = wezterm.target_triple:find("linux")

local config = {}

config.window_background_opacity = 0.77
config.hide_tab_bar_if_only_one_tab = true

config.use_ime = true

if darwin then
    config.font_size = 16
    config.window_decorations = "RESIZE"

    config.macos_window_background_blur = 10
end
if linux then
    config.font_size = 12
    config.window_decorations = "NONE"

    config.enable_wayland = true;
end

config.font = wezterm.font_with_fallback {
    { family = "JetBrainsMono Nerd Font", weight = "Medium", harfbuzz_features = { "calt = 0", "clig = 0", "liga = 0" }, },
    { family = "HackGen Console NF", weight = "Medium" },
    "Twitter Color Emoji",
}

-- config.color_scheme = "rose-pine-moon"

config.colors = {
    foreground = "#ece6e7",
    background = "#281c24",
    cursor_bg = "#ece6e7",
    cursor_border = "#ece6e7",
    cursor_fg = "#281c24",
    selection_bg = "#B2CEE5",
    selection_fg = "#ece6e7",

    ansi = {
        "#281c24",
        "#E8C6BB",
        "#ABB7C9",
        "#D1BCC5",
        "#B2CEE5",
        "#D2CCD3",
        "#ECD1CE",
        "#ece6e7",
    },

    brights = {
        "#a5a1a1",
        "#E8C6BB",
        "#ABB7C9",
        "#D1BCC5",
        "#B2CEE5",
        "#D2CCD3",
        "#ECD1CE",
        "#ece6e7",
    },
}

return config
