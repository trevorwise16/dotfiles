local wezterm = require("wezterm")
local config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	color_scheme = "rose-pine-dawn",
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	default_cursor_style = "BlinkingBar",
	font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Bold", stretch = "Normal", style = "Normal" }),
	font_size = 18,
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	line_height = 1.2,
}

return config
