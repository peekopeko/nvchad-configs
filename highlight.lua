-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = { -- something
    italic = true,
    fg = "light_grey",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { bg = "blue", fg = "green", bold = true },
}

return M
