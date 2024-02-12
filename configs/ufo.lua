vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds", silent = true })
vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds", silent = true })
vim.keymap.set("n", "zK", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  if not winid then
    vim.fn.CocActionAsync "definitionHover" -- coc.nvim
    vim.lsp.buf.hover()
  end
end)
require("ufo").setup {
  provider_selector = function(bufnr, filetype, buftype)
    return { "lsp", "indent" }
  end,
}
