-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.colors = require("cyberdream")

-- For example, changing the initial geometry for new windows:
config.initial_cols = 480
config.initial_rows = 120

-- or, changing the font size and color scheme.
config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.font_size = 14

config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

-- Finally, return the configuration to wezterm:
return config
