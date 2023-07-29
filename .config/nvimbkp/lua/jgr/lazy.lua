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

local plugins = {
	-- theme
	"folke/tokyonight.nvim",

	-- movement
	"ThePrimeagen/harpoon",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},

	-- beautiful color
	"nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/playground",

	-- features
	"mbbill/undotree",
	"folke/zen-mode.nvim",

	-- lsp
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" }, -- Required
		{ -- Optional
			"williamboman/mason.nvim",
			build = function()
				pcall(vim.cmd, "MasonUpdate")
			end,
		},
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{ "L3MON4D3/LuaSnip" }, -- Required
	},

	-- lsp format
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- auto closing
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	-- oil filemanagement
	"stevearc/oil.nvim",
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
