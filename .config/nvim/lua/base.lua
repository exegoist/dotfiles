local opt=vim.opt

opt.number=true

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch=true
opt.incsearch=true
opt.tabstop=2
opt.shiftwidth=2
opt.expandtab=true
opt.autoindent=true

opt.cursorline=true
vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_hl(0, 'Comment', { italic=true })
vim.api.nvim_create_autocmd('TextYankPost',{
	callback=function()
		vim.highlight.on_yank({
			higroup="IncSearch",
			timeout=300
		})
	end
})
