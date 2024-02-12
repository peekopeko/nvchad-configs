local todo = require "todo-comments"
todo.setup {
  signs = true,
  sign_priority = 8,
  keywords = {
    --TODO:
    --HACK:
    --WARN:
    --PERF:
    --NOTE:
    --TEST:
    --BUG:
    FIX = {
      icon = " ",
      color = "#FF0000",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
    },
    TODO = { icon = " ", color = "#4CAF50" }, -- info
    HACK = { icon = " ", color = "#FBBF24", alt = { "WTF" } }, -- warning
    WARN = { icon = " ", color = "#FF6464", alt = { "WARNING", "XXX" } }, -- error
    PERF = { icon = " ", color = "#8E4DCD", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "#88C3D3", alt = { "INFO" } }, -- hint
    TEST = { icon = "󱈫 ", color = "#FF1493", alt = { "TESTING", "PASSED", "FAILED" } }, -- test
  },
  -- colors = {
  -- error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
  --   warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
  --   info = { "DiagnosticInfo", "#2563EB" },
  --   hint = { "DiagnosticHint", "#10B981" },
  --   default = { "Identifier", "#7C3AED" },
  --   test = { "Identifier", "#FF00FF" },
  -- },
  gui_style = {
    fg = "NONE",
    bg = "BOLD",
  },
  merge_keywords = true,
  highlight = {
    multiline = true,
    multiline_pattern = "^.",
    multiline_context = 10,
    before = "",
    keyword = "wide",
    after = "fg",
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 400,
    exclude = {},
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    pattern = [[\b(KEYWORDS):]],
  },
}
