vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.relativenumber = true
vim.o.cmdheight = 0

vim.o.scrolloff = 5

-- Tabspace on java, cpp and c files
vim.api.nvim_create_autocmd("FileType", {
  desc = "Tabspace for JAVA, CPP and C",
  pattern = { "java", "cpp", "c" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 0
    vim.bo.expandtab = true
  end,
})

-- Highlight on Yank(copy)
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "WildMenu", timeout = 180 }
  end,
})
