local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- homemade mason stuff
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"eslint_d",
		"tsserver",
		"rust_analyzer",
	},
})

manage_nvim_cmp = {
	set_sources = "lsp",
	set_basic_mappings = true,
	set_extra_mappings = false,
	use_luasnip = true,
	set_format = true,
	documentation_window = true,
}
