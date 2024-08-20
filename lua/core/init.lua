-- ~/.config/nvim/lua/core/custom/init.lua

vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

-- Define the plugin configurations
local plugins = require("core.plugins")

-- Load plugins using lazy.nvim
require("lazy").setup(plugins)

-- Load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- Load additional configurations
require("core.options")
require("core.autocmds")
require("core.lsp")

vim.schedule(function()
  require("core.mappings")
end)
