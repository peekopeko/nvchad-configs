-- Highlight on Yank(copy)
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "WildMenu", timeout = 180 }
  end,
})
-- Tabspace on java, cpp and c files
-- vim.api.nvim_create_autocmd("FileType", {
--   desc = "Tabspace for JAVA, CPP and C",
--   pattern = { "java", "cpp", "c" },
--   callback = function()
--     vim.bo.shiftwidth = 4
--     vim.bo.softtabstop = 0
--     vim.bo.expandtab = true
--   end,
-- })
