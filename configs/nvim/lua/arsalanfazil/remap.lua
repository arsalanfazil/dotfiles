-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- reselect indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- register paste
vim.keymap.set('v', 'p', '"_dP')

-- copy/paste mapping
-- vim.keymap.set("v", "<C-c>", '"+y')
-- vim.keymap.set("v", "<C-x>", '"+x')
-- vim.keymap.set("i", "<C-v>", ':set paste<CR>"*p:set nopaste<CR>')

vim.keymap.set("n", "<leader>;", vim.cmd.nohlsearch)
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- split movement mapping
vim.keymap.set("n", "<C-k>", '<c-w><c-k>')
vim.keymap.set("n", "<C-j>", '<c-w><c-j>')
vim.keymap.set("n", "<C-l>", '<c-w><c-l>')
vim.keymap.set("n", "<C-h>", '<c-w><c-h>')

-- split it
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>s", vim.cmd.split)

-- Buffers Switching
vim.keymap.set("n", "<left>", vim.cmd.bprevious)
vim.keymap.set("n", "<right>", vim.cmd.bnext)


vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)


vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

vim.keymap.set("n", "<leader>t", function()
  require("neotest").run.run()
end)

vim.keymap.set("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end)

-- open neovim tree
vim.keymap.set('n', '<leader>b', ":NvimTreeToggle<CR>")
