local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
	{
		"rebelot/kanagawa.nvim", -- neorg needs a colorscheme with treesitter support
		config = function()
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
	},
	{
		"vladdoster/remember.nvim",
	},
	{
		"williamboman/mason.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"dockerfile",
				"ini",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"query",
				"regex",
				"sql",
				"toml",
				"vim",
				"vimdoc",
				"xml",
				"yaml",
			},
			highlight = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
	{
		"nvim-neorg/neorg",
		dependencies = { "luarocks.nvim" },
		version = "*",
	},
})

require("base")
require("keymap")
require("p-mason")
require("p-conform")
require("p-lualine")
require("p-neorg")
require("p-remember")
