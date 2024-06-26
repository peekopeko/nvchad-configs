---@type ChadrcConfig
local M = {}

local highlight = require "custom.highlight"

M.ui = {
  theme = "gruvbox",
  hl_override = highlight.override,
  hl_add = highlight.add,
  transparency = true,
}

-- Custom Plugins
M.plugins = "custom.plugins"

-- Custom Mappings
M.mappings = require "custom.mappings"

-- Options
require "custom.set"

-- Autocommands
require "custom.autocommand"

return M
