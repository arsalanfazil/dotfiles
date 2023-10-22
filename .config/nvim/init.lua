require("base")

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

require("lazy").setup("plugins")


vim.cmd("colorscheme rose-pine")

-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

-- vim.opt.signcolumn = "yes" -- otherwise it bounces in and out, not strictly needed though
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "ruby",
--   group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }), -- also this is not /needed/ but it's good practice
--   callback = function()
--     vim.lsp.start {
--       name = "standard",
--       cmd = { "~/.rbenv/shims/standardrb", "--lsp" },
--     }
--   end,
-- })
