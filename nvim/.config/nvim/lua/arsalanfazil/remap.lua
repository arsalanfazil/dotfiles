vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- copy/paste mapping
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("v", "<C-x>", '"+x')
vim.keymap.set("i", "<C-v>", ':set paste<CR>"*p:set nopaste<CR>')

vim.keymap.set("n", "<leader><space>", vim.cmd.nohlsearch)

-- split movement mapping
vim.keymap.set("n", "<C-k>", '<c-w><c-k>')
vim.keymap.set("n", "<C-j>", '<c-w><c-j>')
vim.keymap.set("n", "<C-l>", '<c-w><c-l>')
vim.keymap.set("n", "<C-h>", '<c-w><c-h>')

-- split it
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>s", vim.cmd.split)

-- Tabs Switching
vim.keymap.set("i", "<left>", vim.cmd.bprevious)
vim.keymap.set("i", "<right>", vim.cmd.bnext)
vim.keymap.set("n", "<left>", vim.cmd.bprevious)
vim.keymap.set("n", "<right>", vim.cmd.bnext)

vim.keymap.set("n", "<C-w>", vim.cmd.bd)



vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


vim.keymap.set("n", "<C-b>", ":Neotree toggle reveal right<CR>")
vim.keymap.set("n", "<C-r>", ":Neotree toggle buffers right<CR>")

