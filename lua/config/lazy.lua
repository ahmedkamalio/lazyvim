local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

print(lazypath)

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	}, 
	install = { colorscheme = { "rose-pine" } },
	checker = { enabled = true },
})
