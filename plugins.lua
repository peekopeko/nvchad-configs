local overrides = require "custom.configs.overrides"
--@type NvPluginSpec[]
local plugins = {
  {
    "ziontee113/color-picker.nvim",
    ft = { "css", "html", "markdown", "python", "java", "lua" },
    config = function()
      require "custom.configs.color-picker"
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = { "BufNewFile", "BufRead" },
    config = function()
      require "custom.configs.todo"
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    event = { "InsertEnter", "BufNewFile", "BufRead" },
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      require "custom.configs.ufo"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    ft = { "python", "java", "lua", "c", "cpp", "rust", "typescript", "javascript", "bash", "zsh" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  -- Debugging
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.nvim-dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  -- Python Debugger
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function() --ignore
      local path = "~/.virtualenvs/debugpy/bin/python"
      require("dap-python").setup(path)
    end,
  },
  {},
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins
