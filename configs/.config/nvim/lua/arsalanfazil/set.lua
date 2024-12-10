vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3

vim.opt.showcmd = true

-- highlight matching parenthesis
vim.opt.showmatch = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.laststatus = 2
vim.opt.scrolloff = 10

-- Search/Regex
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase  = true

-- " Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.backup = false

-- No swap!
vim.opt.swapfile = true

-- prevent dangerous command
vim.opt.secure  = true

vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.confirm = true
vim.opt.undofile = true
