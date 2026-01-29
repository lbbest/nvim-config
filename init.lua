-- Define Lazy.nvim installation path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if Lazy.nvim exists, otherwise clone to lazypath
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
-- Add Lazy.nvim to Neovim's runtime path
vim.opt.rtp:prepend(lazypath)

require("config")
