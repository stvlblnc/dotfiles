local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 15

config.enable_tab_bar = false

-- config.window_decorations = "RESIZE"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

return config
