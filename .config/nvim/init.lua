vim.api.nvim_set_keymap("i", "jj", "<Esc>", {noremap=false})
--Number Set
vim.opt.relativenumber = true
vim.opt.number = true
--Mouse mode
vim.opt.mouse = ""
--Lazy Package Manager
require('plugins.lazy')
require('plugins.obsidian')
