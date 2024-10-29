---Ported from: https://github.com/gfguthrie/wezterm-canonical-solarized/blob/main/canonical_solarized.lua
---@module "picker.assets.colorschemes.solarized-dark"
---@author sravioli
---@license GNU-GPLv3

---@class PickList
local M = {}

local color = require("utils").fn.color

-- Define the colors just once
-- https://ethanschoonover.com/solarized/#the-values
local base03 = "#002b36"
local base02 = "#073642"
local base01 = "#586e75"
local base00 = "#657b83"
local base0 = "#839496"
local base1 = "#93a1a1"
local base2 = "#eee8d5"
local base3 = "#fdf6e3"
local yellow = "#b58900"
local orange = "#cb4b16"
local red = "#dc322f"
local magenta = "#d33682"
local violet = "#6c71c4"
local blue = "#268bd2"
local cyan = "#2aa198"
local green = "#859900"

local ansi = {
  base02,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  base2,
}
local brights = {
  base03,
  orange,
  base01,
  base00,
  base0,
  violet,
  base1,
  base3,
}

M.scheme = {
  -- https://ethanschoonover.com/solarized/#usage-development
  -- No selection_fg since the solarized selection_bg is designed to work without it
  foreground = base0,
  background = base03,
  cursor_fg = base00,
  cursor_bg = base3,
  cursor_border = base3,
  selection_fg = base3,
  selection_bg = base00,
  ansi = ansi,
  brights = brights,
  scrollbar_thumb = base3,
  split = base3,
  visual_bell = base0,
  compose_cursor = orange,
  copy_mode_active_highlight_fg = { Color = orange },
  copy_mode_active_highlight_bg = { Color = base02 },
  copy_mode_inactive_highlight_fg = { Color = base01 },
  copy_mode_inactive_highlight_bg = { Color = base02 },
  quick_select_label_fg = { Color = orange },
  quick_select_label_bg = { Color = base02 },
  quick_select_match_fg = { Color = base01 },
  quick_select_match_bg = { Color = base02 },
  tab_bar = {
    background = base2,
    active_tab = { bg_color = base00, fg_color = base2 },
    inactive_tab = { bg_color = base00, fg_color = base2 },
    inactive_tab_hover = { bg_color = base00, fg_color = base2 },
    new_tab = { bg_color = base02, fg_color = base2 },
    new_tab_hover = { bg_color = base02, fg_color = base2 },
  },
}

function M.get()
  return { id = "solarized-dark", label = "Solarized Dark" }
end

function M.activate(Config, callback_opts)
  local theme = M.scheme
  color.set_scheme(Config, theme, callback_opts.id)
end

return M
