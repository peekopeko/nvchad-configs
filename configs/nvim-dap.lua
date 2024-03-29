vim.keymap.set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Continue" })
vim.keymap.set("n", "<leader>dso", function()
  require("dap").step_over()
end, { desc = "Step over" })
vim.keymap.set("n", "<leader>dsi", function()
  require("dap").step_into()
end, { desc = "Step into" })
vim.keymap.set("n", "<leader>dsu", function()
  require("dap").step_out()
end, { desc = "Step out" })
