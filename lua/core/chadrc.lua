-- ~/.config/nvim/lua/core/chadrc.lua

---@type ChadrcConfig
---@class ChadrcConfig
---@field plugins any
local M = {}

M.ui = { theme = 'catppuccin' }


M.plugins = require("core.plugins")

return M
