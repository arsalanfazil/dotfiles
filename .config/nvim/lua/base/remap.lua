vim.g.mapleader = ";"

local keymap = vim.keymap

keymap.set("n", "<leader>pv", function() vim.cmd("Ex") end)


-- move commands
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-1<CR>gv=gv")

-- make cursor stays, where it is now
keymap.set("n", "J", "mzJ`z")

-- not yank, just cut
keymap.set("n", "x", "\"_x")

-- inc/dec
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("n", "-", "<C-x>")

-- all select
keymap.set("n", "<C-a>", "gg<S-v>G")

-- paste only cut, not delete
keymap.set("x", "<leader>p", "\"_dP")

-- copy/paste
keymap.set("n", "<C-c>", "\"+y")
keymap.set("v", "<C-c>", "\"+y")
keymap.set("n", "<C-c>", "\"+Y")

-- Off highlight Search
keymap.set("n", "<Leader><space>", ":nohlsearch<cr>")

-- New Tab
keymap.set("n", "<C-n>", ":tabedit<CR>", { silent = true })

-- split it
keymap.set("n", "<Leader>vs", ":vsplit<CR><C-w>w")
keymap.set("n", "<Leader>s", ":split<CR><C-w>w")

-- split movement mapping
keymap.set("n", "<C-k>", "<c-w><c-k>")
keymap.set("n", "<C-j>", "<c-w><c-j>")
keymap.set("n", "<C-l>", "<c-w><c-l>")
keymap.set("n", "<C-h>", "<c-w><c-h>")

-- resize buffer
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Tabs Switching
keymap.set("i", "<left>", ":bprevious<cr>")
keymap.set("i", "<right>", ":bnext<cr>")
keymap.set("n", "<left>", ":bprevious<cr>")
keymap.set("n", "<right>", ":bnext<cr>")
keymap.set("n", "<C-w>", ":bd<cr>")

-- move vertically by visual line
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

-- format code
keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format({async = false, timeout_ms = 10000})
end)

