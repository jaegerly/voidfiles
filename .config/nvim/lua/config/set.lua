vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.title = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.numberwidth = 2
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.o.breakindent = true

vim.opt.wrap = false

vim.o.mouse = 'a'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.opt.cursorline = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
-- Set completeopt to have a better completion experience
-- See `:help vim.highlight.on_yank()`
vim.o.completeopt = 'menuone,noselect'

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- markdown
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("wrap_spell", { clear = true }),
	pattern = { "gitcommit", "markdown", "norg" },
	callback = function()
		vim.opt_local.textwidth = 80
		vim.opt_local.nu = false
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
		vim.opt_local.tabstop = 2
		vim.opt_local.cursorline = false
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
		vim.opt_local.spell = true
		vim.opt_local.spelllang = { "en_us" }
	end,
})
