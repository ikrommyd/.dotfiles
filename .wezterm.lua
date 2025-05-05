local wezterm = require 'wezterm'

return{
  -- font = wezterm.font("FiraCode Nerd Font Mono"),
  font_size = 13.0,
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },

  bold_brightens_ansi_colors = true,

  default_cursor_style = "BlinkingBlock",
  cursor_blink_rate = 750,
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",

  window_decorations = "RESIZE",
  window_padding = {
    left   = 10,
    right  = 10,
    top    = 10,
    bottom = 10,
  },

  color_scheme = "tokyonight_night",

  audible_bell = "Disabled",
}

