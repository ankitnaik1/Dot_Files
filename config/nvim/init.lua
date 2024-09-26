vim.api.nvim_set_keymap("i", "jj", "<Esc>", {noremap=false})
--Color
vim.api.nvim_set_hl(0, "Normal", { bg = "#282828", fg = "#fbf1c7" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#cc241d" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#458858" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#b16286" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#d79921" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#d79921" })
vim.api.nvim_set_hl(0, "Type", { fg = "#d79921" })
vim.api.nvim_set_hl(0, "Special", { fg = "#d79921" })
vim.api.nvim_set_hl(0, "Underlined", { fg = "#d79921" })
--Number Set
vim.opt.relativenumber = true
vim.opt.number = true
--Mouse mode
vim.opt.mouse = ""
--Lazy Package Manager
require('plugins.lazy')

