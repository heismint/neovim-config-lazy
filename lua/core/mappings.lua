-- ~/.config/nvim/lua/core/mappings.lua

-- Key mappings
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Keybinding to open terminal horizontally
vim.api.nvim_set_keymap('n', '<leader>th', ':split | term<CR>', { noremap = true, silent = true, desc = 'Open Terminal Horizontally' })

-- Keybinding to open terminal vertically
vim.api.nvim_set_keymap('n', '<leader>tv', ':vsplit | term<CR>', { noremap = true, silent = true, desc = 'Open Terminal Vertically' })

-- Keybinding to close terminal buffer
vim.api.nvim_set_keymap('t', '<leader>q', '<C-\\><C-n>:bd<CR>', { noremap = true, silent = true, desc = 'Close Terminal' })

-- Map Delete key to delete selected text in visual mode
vim.api.nvim_set_keymap('v', '<Del>', 'd', { noremap = true, silent = true })
