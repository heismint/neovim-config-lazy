-- ~/.config/nvim/lua/core/autocmds.lua

-- Auto commands
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
})

-- Add more autocommands as needed

