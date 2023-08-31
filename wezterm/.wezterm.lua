local wezterm = require('wezterm')

return {
  keys = {
    {
      key = '_',
      mods = 'CTRL|SHIFT|ALT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
      key = '|',
      mods = 'CTRL|SHIFT|ALT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
  },
  window_decorations = "RESIZE",
  color_scheme = "Hardcore",
  font = wezterm.font_with_fallback({
    'Iosevka Term',
  }),
  use_cap_height_to_scale_fallback_fonts = true,
  font_size = 16,
  scrollback_lines = 10000,
  hide_tab_bar_if_only_one_tab = true,
}
