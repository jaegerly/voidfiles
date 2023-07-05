vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)

-- move updown with shift
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- movement keys
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without saving deleted
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void
vim.keymap.set({ "n", "v" }, "<leader>dd", [["_d]])

-- tmux thing
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix nav
vim.keymap.set("n", "<C-l>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>l", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- spc s replace this text
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- spc x to chmod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- splits
vim.keymap.set("n", "<leader>ss", ":split<CR><C-w>w", { silent = true })
vim.keymap.set("n", "<leader>sv", ":vsplit<CR><C-w>w", { silent = true })
vim.keymap.set("n", "<leader><escape>", "<C-w>w")

-- idk
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
