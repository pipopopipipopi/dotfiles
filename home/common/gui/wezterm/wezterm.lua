local wezterm = require "wezterm"
local darwin = wezterm.target_triple:find("darwin")
local linux = wezterm.target_triple:find("linux")

wezterm.add_to_config_reload_watch_list(wezterm.config_dir .. "/colors/matugen_theme.toml")

local config = {}

config.window_background_opacity = 0.9
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
    { family = "JetBrainsMono Nerd Font", weight = "Regular", harfbuzz_features = { "calt = 0", "clig = 0", "liga = 0" }, },
    { family = "HackGen Console NF", weight = "Regular" },
    "Twitter Color Emoji",
}

config.color_scheme = "oreore"

config.cell_widths = {
    { first = 0x2190, last = 0x21e7, width = 1 },
    { first = 0x2500, last = 0x25ff, width = 1 },
    { first = 0x1d306, last = 0x1d356, width = 1 },
}

return config
