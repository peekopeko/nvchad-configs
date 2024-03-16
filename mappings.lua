local M = {}

M.disabled = {
  n = {
    ["<leader>e"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<C-n>"] = "",
    ["<leader>lf"] = "",
    ["<C-c>"] = "",
    -- ["<C-h>"] = "",
    -- ["<C-j>"] = "",
    -- ["<C-k>"] = "",
    -- ["<C-l>"] = "",
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

    -- ["<Tab>h"] = { "<C-w>h", "Focus window below.", opts = { silent = true } },
    -- ["<TAB-h>"] = { "<C-w>h", "Focus window below.", opts = { silent = true } },
    -- ["<TAB-j>"] = { "<C-w>j", "Focus window below.", opts = { silent = true } },
    -- ["<TAB-k>"] = { "<C-w>k", "Focus window below.", opts = { silent = true } },
    -- ["<TAB-l>"] = { "<C-w>l", "Focus window below.", opts = { silent = true } },

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

M.dad_bod = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd>DBUIToggle<cr>", "DadBod UI Toggle", opts = { silent = true } },
  },
}
--M.ufo = {
--  plugin = true,
--  n = {
--    ["zR"] = { require("ufo").openAllFolds, "Open all folds", opts = { silent = true } },
--    ["zM"] = { require("ufo").closeAllFolds, "Close all folds", opts = { silent = true } },
--    ["zK"] = {
--      function()
--        if not require("ufo").peekFoldedLinesUnderCursor() then
--          vim.fn.CocActionAsync "definitionHover" -- coc.nvim
--          vim.lsp.buf.hover()
--        end
--      end,
--      "Preview fold",
--      opts = { silent = true },
--    },
--  },
--}
return M
