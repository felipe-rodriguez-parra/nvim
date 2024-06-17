return {
  {"michaelrommel/nvim-silicon", lazy = true, cmd = "Silicon", config = function() require("silicon").setup({ font = "JetBrainsMono Nerd Font=34; Noto Color Emoji=34" }) end },
    {
      "stevearc/conform.nvim",
      -- event = 'BufWritePre', -- uncomment for format on save
      config = function()
        require "configs.conform"
      end,
    },
    {
      "rcarriga/nvim-dap-ui",
      event = "VeryLazy",
      dependencies = "mfussenegger/nvim-dap",
      config = function()
        local dap = require("dap")
        local dapui = require("dapui")
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
      end
    },
    {
      "jay-babu/mason-nvim-dap.nvim",
      event = "VeryLazy",
      dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
      },
      opts = {
        handlers = {}
      },
    },
    {
      "mfussenegger/nvim-dap",
      config = function(_, _)
        
      end
    },
    {
      "jose-elias-alvarez/null-ls.nvim",
      event = "VeryLazy",
      opts = function()
        return require "configs.null-ls"
      end,
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        require "nvchad.configs.lspconfig"
        require "configs.lspconfig"
      end,
    },
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "clangd",
          "clang-format",
          "codelldb",
        }
      }
    },
    {
      "Pocco81/auto-save.nvim",
      event = "VeryLazy",
      config = function()
        require "configs.autosave"
      end,
    },
    {
    "supermaven-inc/supermaven-nvim",
    event = "VeryLazy",
    config = function()
      require "configs.supermaven-nvim"
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    event = "VeryLazy",
    config = function()
      require "configs.autosave"
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
 }
  
