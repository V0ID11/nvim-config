require('sams/remaps')
require('sams/packer')
require('sams/colors')

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.incsearch = true
vim.opt.termguicolors = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
local generalSettingsGroup = vim.api.nvim_create_augroup('General settings', {clear = true})
vim.api.nvim_create_autocmd('FileType',{
	pattern = {'*.hs'},
	callback = function()
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
	end,
	group = generalSettingsGroup,
})
