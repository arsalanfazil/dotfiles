local lsp = require('lsp-zero').preset('recommended')

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})


lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	local bind = vim.keymap.set

	bind('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	bind('n', 'K', function() vim.lsp.buf.hover() end, opts)
	bind('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
	bind('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
	bind('n', '[d', function() vim.diagnostic.goto_next() end, opts)
	bind('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
	bind('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
	bind('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
	bind('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
	bind('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
	-- more code  ...
end)


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})
