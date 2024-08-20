-- ~/.config/nvim/lua/core/lsp.lua

local lspconfig = require('lspconfig')

lspconfig.sumneko_lua.setup {
  cmd = { "lua-language-server" }, -- Ensure this matches the name/path of the binary
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
