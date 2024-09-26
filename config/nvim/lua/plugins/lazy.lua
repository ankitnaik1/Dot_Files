-- Install lazylazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
	{
	"epwalsh/obsidian.nvim",
	version = "*",  -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
	"nvim-lua/plenary.nvim",
    			},
	},
	{
	"folke/todo-comments.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	lazy = false,
	config = function()
	require("todo-comments").setup {}
	end
	}
	})
