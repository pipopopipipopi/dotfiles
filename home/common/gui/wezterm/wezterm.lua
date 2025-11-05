local wezterm = require "wezterm"
local darwin = wezterm.target_triple:find("darwin")
local linux = wezterm.target_triple:find("linux")

wezterm.add_to_config_reload_watch_list(wezterm.config_dir .. "/colors/matugen.toml")

local config = {}

config.window_background_opacity = 0.77
config.hide_tab_bar_if_only_one_tab = true

config.use_ime = true

config.check_for_updates = false

config.automatically_reload_config = true

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

-- config.colors = {
--     foreground = "#d8cad0",
--     background = "#0f0c13",
--     cursor_bg = "#d8cad0",
--     cursor_fg = "#0f0c13",
--     cursor_border = "#d8cad0",
--     selection_fg = "#0f0c13",
--     selection_bg = "#6c708e",

--     ansi = {
--         "#0f0c13", -- black
--         "#84526b", -- red
--         "#6f84a2", -- green
--         "#9ca787", -- yellow
--         "#3a6583", -- blue
--         "#997a8b", -- magenta
--         "#677095", -- cyan
--         "#d8cad0"  -- white
--     },

--     brights = {
--         "#978d91",
--         "#a4728b", -- red
--         "#8fa4c2", -- green
--         "#bcc7a7", -- yellow
--         "#5a85a3", -- blue
--         "#b99aab", -- magenta
--         "#8790a5", -- cyan
--         "#f8eaf0"  -- white
--     },
-- }

config.colors = {
    foreground = "#f1dbd7",
    background = "#362e38",
    cursor_fg = "#f1dbd7",
    cursor_bg = "#7e6e87",
    cursor_border = "#7e6e87",
    selection_fg = "#f1dbd7",
    selection_bg = "#7e6e87",

    ansi = {
        "#201c22", -- black
        "#da352f", -- red
        "#dc6919", -- green
        "#e3a71e", -- yellow
        "#866fae", -- blue
        "#e07082", -- magenta
        "#d8792c", -- cyan
        "#f1dbd7"  -- white
    },

    brights = {
        "#9b8fa3", -- black
        "#e05652", -- red
        "#e1793d", -- green
        "#ebc05c", -- yellow
        "#9c89bd", -- blue
        "#e99ba8", -- magenta
        "#eb8b47", -- cyan
        "#faf1f0"  -- white
    },
}

-- config.color_scheme = "rose-pine"

return config
