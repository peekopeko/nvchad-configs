-- Highlight on Yank(copy)
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "WildMenu", timeout = 180 }
  end,
})

-- Tabspace on bash and zsh files
vim.api.nvim_create_autocmd("FileType", {
  desc = "Tabspace for JAVA, CPP and C",
  pattern = { ".bash*", "*.zsh*" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 0
    vim.bo.expandtab = true
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  desc = "Scrolloff for text files.",
  pattern = { "*.txt" },
  callback = function()
    vim.o.scrolloffy = 4
  end,
})

-- format on save for java.
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   desc = "Format on save",
--   pattern = "*.java",
--   callback = function()
--     if vim.lsp.buf_get_clients() then
--       vim.lsp.buf.format()
--     end
--   end,
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   desc = "Disable Friendly Snippets on java files.",
--   pattern = { "java" },
--   callback = function()
--     require("lazy").setup {
--       "rafamadriz/friendly-snippets",
--       cond = false,
--     }
--   end,
-- })
