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
    config.macos_forward_to_ime_modifier_mask = "SHIFT|CTRL"
end
if linux then
    config.font_size = 11
    config.window_decorations = "NONE"
    config.enable_wayland = true;
end

config.font = wezterm.font_with_fallback {
    { family = "JetBrainsMono Nerd Font", weight = "Medium", harfbuzz_features = { "calt = 0", "clig = 0", "liga = 0" }, },
    { family = "HackGen Console NF", weight = "Medium" },
    "Twitter Color Emoji",
}

config.colors = {
    foreground = "#d8cad0",
    background = "#0f0c13",
    cursor_bg = "#d8cad0",
    cursor_fg = "#0f0c13",
    cursor_border = "#d8cad0",
    selection_fg = "#0f0c13",
    selection_bg = "#6c708e",

    ansi = {
        "#0f0c13", -- black
        "#84526b", -- red
        "#6f84a2", -- green
        "#9ca787", -- yellow
        "#3a6583", -- blue
        "#997a8b", -- magenta
        "#677095", -- cyan
        "#d8cad0"  -- white
    },

    brights = {
        "#978d91",
        "#a4728b", -- red
        "#8fa4c2", -- green
        "#bcc7a7", -- yellow
        "#5a85a3", -- blue
        "#b99aab", -- magenta
        "#8790a5", -- cyan
        "#f8eaf0"  -- white
    },
}

return config
