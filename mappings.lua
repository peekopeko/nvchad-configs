local M = {}

M.disabled = {
  n = {
    ["<leader>e"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<C-n>"] = "",
    ["<leader>lf"] = "",
    ["<C-c>"] = "",
    ["<leader>fm"] = "",
  },
}

M.nvterm = {
  plugin = true,
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

M.general = {

  i = {
    ["jj"] = { "<Esc>", "Exit Insert mode" },
    ["<C-n>"] = { "<cmd>PickColorInsert<cr>", "Color Picker" },
  },

  n = {

    ["<leader>fm"] = {
      function()
        local clients = vim.lsp.buf_get_clients()
        for _, client in ipairs(clients) do
          if client.server_capabilities.documentFormattingProvider then
            vim.lsp.buf.format { async = true }
            return
          end
        end
        vim.cmd "normal! m`gg=G`'"
      end,
      "LSP formatting",
    },
    ["<C-c>"] = { "<cmd> %y+ <cr>", "Copy Whole file.", opts = { silent = true } },
    ["<C-n>"] = { "<cmd>PickColor<cr>", "Color Picker" },
    ["<leader>td"] = { "<cmd>TodoTelescope<cr>", "Todo List", opts = { silent = true } },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle Transparency",
    },
    -- screen splitting
    ["<leader>v"] = { "<cmd>vsplit<cr>", "Split Vertically.", opts = { silent = true } },
    ["<leader>h"] = { "<cmd>split<cr>", "Split Horizontly.", opts = { silent = true } },
    ["<leader>x"] = {
      function()
        if vim.fn.winnr "$" > 1 then
          vim.cmd "close"
        else
          require("nvchad.tabufline").close_buffer()
        end
      end,
      "Close buffer",
    },
    ["<C-d>"] = { "<C-d>zz", "Center cursor while scrolling." },
    ["<C-u>"] = { "<C-u>zz", "Center cursor while scrolling." },
    ["<leader>wn"] = { ":set nowrap!<cr>", "Toggle Textwrapping.", opts = { silent = true } },
    ["<leader>fd"] = { "<cmd> Telescope diagnostics <cr>", "Diagnostic Menu", opts = { silent = true, noremap = true } },
  },
}
return M
