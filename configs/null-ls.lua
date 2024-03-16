local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local opts = {
  sources = {
    -- formatting
    -- python
    -- null_ls.builtins.formatting.black,
    -- lua
    null_ls.builtins.formatting.stylua,
    -- Typescript and Javascript
    null_ls.builtins.formatting.biome,
    -- sh scripts
    -- null_ls.builtins.formatting.beautysh,

    -- diagnostics
    -- Typescript and Javascript
    -- null_ls.builtins.diagnostics.biome,
    -- python
    -- null_ls.builtins.diagnostics.ruff,
    -- null_ls.builtins.diagnostics.mypy,
    -- Java
    -- null_ls.builtins.formatting.jdtls,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

return opts
