-- Setup from https://github.com/folke/lazy.nvim?tab=readme-ov-file

-- Lua modules in which plugins are found are loaded here.
local pluginmodules = {
	{ import = "plugins" },
  	{ import = "plugins.temp_old" },
	-- { "LazyVim/LazyVim", import = "lazyvim.plugins" },
	-- { import = "lazyvim.plugins.extras.coding.copilot" },
}

-- Bootstraps Lazy
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

-- Inits Lazy with the provided plugin modules.
require("lazy").setup(pluginmodules)
