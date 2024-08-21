-- ~/.config/nvim/lua/core/custom/plugins.lua

return {
  -- NvChad
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  -- Autocomplete plugins
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
  },
  "L3MON4D3/LuaSnip",
  "simrat39/rust-tools.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("rust-tools").setup({
      server = {
        on_attach = function(_, bufnr)
          -- Define key mappings and other setup here
          local opts = { noremap = true, silent = true, buffer = bufnr }
          vim.keymap.set("n", "K", require("rust-tools").hover_actions.hover_actions, opts)
          vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, opts)
        end,
        settings = {
          ["rust-analyzer"] = {
            assist = {
              importGranularity = "module",
              importPrefix = "by_self",
            },
            cargo = {
              loadOutDirsFromCheck = true,
            },
            procMacro = {
              enable = true,
            },
          },
        },
      },
      tools = {
        inlay_hints = {
          auto = true,
          show_parameter_hints = true,
          parameter_hints_prefix = "<- ",
          other_hints_prefix = "=> ",
        },
      },
    })
  end,

  "ziglang/zig.vim",
  "elixir-editors/vim-elixir",
  "tpope/vim-surround",
  "windwp/nvim-autopairs",
  "hoob3rt/lualine.nvim",
  "nvim-tree/nvim-tree.lua",
  "nvim-telescope/telescope.nvim",

  -- Additional plugins
  {
    "base46/base46.nvim",
    config = function()
      require("base46").setup()
    end
  },
  {
    "conform.nvim/conform.nvim",
    config = function()
      require("conform").setup()
    end
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  "nvim-lua/plenary.nvim",

  -- Formatting plugin
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.rustfmt,
        },
      })
    end
  },
}

