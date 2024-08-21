-- ~/.config/nvim/lua/core/autocmds.lua

-- Auto commands
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
})

-- Autosave files when they are modified and have a name
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  callback = function()
    if vim.fn.empty(vim.fn.expand('%:t')) == 0 then
      vim.cmd("silent! w")
    end
  end,
})

-- Auto-format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.cmd("silent! lua vim.lsp.buf.format()")
  end,
})

