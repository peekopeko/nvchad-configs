local M = {}

M.disabled = {
  n = {
    ["<leader>e"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<C-n>"] = "",
  },
}

M.general = {
  i = {
    ["jj"] = { "<Esc>", "Exit Insert mode" },
  },
  n = {
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
  },
}

M.nvimtree = {
  plugin = true,
  n = {
    ["<leader>e"] = { ":NvimTreeToggle<cr>", "Toggle Tree View", opts = { silent = true } },
  },
}
M.dad_bod = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd>DBUIToggle<cr>", "DadBod UI Toggle", opts = { silent = true } },
  },
}
return M
-- function()
--   if vim.fn.winnr "$" > 1 then
--     vim.cmd "close"
--   else
--     vim.cmd "bdelete"
--   end
-- end,
--
--       function()
--         local buf_nr = vim.fn.winnr "$"
--         if buf_nr > 1 then
--           local buf_modified = vim.fn.getbufvar(buf_nr, "&modified")
--           print("Buffer modified status: " .. buf_modified)
--           if buf_modified == 1 then
--             local save_option = vim.fn.confirm("Buffer is modified. Save changes?", "&Yes\n&No\n&Cancel", 3)
--             if save_option == 1 then
--               vim.cmd "wq"
--             elseif save_option == 2 then
--               vim.cmd "bdelete!"
--             else
--               print "Buffer not closed."
--             end
--           else
--             vim.cmd "close"
--           end
--         else
--           vim.cmd "bdelete"
--         end
--       end,
