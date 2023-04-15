vim.cmd("autocmd!")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.wo.number = true

-- title
vim.opt.title = true


-- Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.shiftround = true
vim.opt.wrap = false
vim.opt.backspace = "start,eol,indent"

vim.opt.colorcolumn = "80"
vim.opt.numberwidth = 2

-- No swap!
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.backupskip = "/tm/*,private/tmp/*"

-- Enable break indent
vim.opt.breakindent = true

-- Search/Regex
vim.opt.gdefault  = true
vim.opt.magic = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Split vertically default below
vim.opt.splitbelow = true

-- Split horizentally default right
vim.opt.splitright = true

-- showing statusbar
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.encoding= "utf-8"
vim.opt.spelllang = "en_us"
vim.opt.fileencoding = "utf-8"


vim.opt.secure = true

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeout = true
vim.opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'


vim.opt.showcmd = true
vim.opt.cmdheight = 1


vim.opt.wildignore:append { "*/node_modules/*" }

-- Turn off paste mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste"
})

vim.opt.formatoptions:append { "r" }



-- highlight options
vim.opt.cursorline = true
vim.opt.termguicolors = true
