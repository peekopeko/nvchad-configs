local dap, dapui = require "dap", require "dapui"
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
-- Keymap
local keymap = vim.keymap.set
keymap("n", "<leader>dt", '<cmd> lua require("dapui").toggle() <cr>', { desc = "Toggle Dap", silent = true })
