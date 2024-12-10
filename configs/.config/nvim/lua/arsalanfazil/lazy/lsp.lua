return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		handlers = {
			function(server_name)
				print("setting up", server_name)
				require("lspconfig")[server_name].setup({})
			end,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.emmet_language_server.setup({
        filetypes = { "css", "heex", "elixir", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", 'php' },
				capabilities = capabilities,
			})

			lspconfig.ruby_lsp.setup({
				capabilities = capabilities,
				init_options = {
					formatter = "standard",
					linters = { "standard" },
				},
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

      lspconfig.elixirls.setup({
        -- Unix
        cmd = { "/home/arsalan/elixir-ls/language_server.sh" };
      })

			lspconfig.phpactor.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})

			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
		end,
	},
}
-- return {
--   "neovim/nvim-lspconfig",
--   dependencies = {
--     "williamboman/mason.nvim",
--     "williamboman/mason-lspconfig.nvim",
--     'hrsh7th/cmp-nvim-lsp',
--     'hrsh7th/cmp-buffer',
--     'hrsh7th/cmp-path',
--     'hrsh7th/cmp-cmdline',
--     'hrsh7th/nvim-cmp',
--     'L3MON4D3/LuaSnip',
--     'saadparwaiz1/cmp_luasnip',
--     "j-hui/fidget.nvim",
--     "rafamadriz/friendly-snippets"
--   },
--   config = function()
--     require("fidget").setup()
--     require("mason-lspconfig").setup({
--       ensure_installed = {
--         "astro",
--         "cssls",
--         "dockerls",
--         "docker_compose_language_service",
--         "eslint",
--         "elixirls",
--         "emmet_ls",
--         "elp",
--         "html",
--         "jsonls",
--         "tsserver",
--         "lua_ls",
--         "ruby_lsp",
--         "standardrb",
--         "stimulus_ls",
--         "tailwindcss",
--         "yamlls"
--       },
--       handlers = {
--         function(server_name)
--           local capabilities = require('cmp_nvim_lsp').default_capabilities()
--           require("lspconfig")[server_name].setup {
--             capabilities = capabilities
--           }
--         end,
--
--         ["emmet_language_server"] = function()
--           local lspconfig = require("lspconfig")
--           lspconfig.emmet_language_server.setup({
--             filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
--             -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
--             -- **Note:** only the options listed in the table are supported.
--             init_options = {
--               ---@type table<string, string>
--               includeLanguages = {},
--               --- @type string[]
--               excludeLanguages = {},
--               --- @type string[]
--               extensionsPath = {},
--               --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
--               preferences = {},
--               --- @type boolean Defaults to `true`
--               showAbbreviationSuggestions = true,
--               --- @type "always" | "never" Defaults to `"always"`
--               showExpandedAbbreviation = "always",
--               --- @type boolean Defaults to `false`
--               showSuggestionsAsSnippets = false,
--               --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
--               syntaxProfiles = {},
--               --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
--               variables = {},
--             },
--           })
--         end,
--
--         ["ruby_lsp"] = function()
--           local lspconfig = require("lspconfig")
--           local util = require("lspconfig.util")
--           local enabled_features = {
--             "codeActions",
--             -- "diagnostics",
--             "documentHighlights",
--             "documentLink",
--             "documentSymbols",
--             "foldingRanges",
--             "formatting",
--             "hover",
--             "inlayHint",
--             "onTypeFormatting",
--             "selectionRanges",
--             "semanticHighlighting",
--             "completion",
--           }
--           lspconfig.ruby_lsp.setup {
--             default_config = {
--               cmd = { "bundle", "exec", "ruby-lsp" },
--               filetypes = { "ruby" },
--               root_dir = util.root_pattern("Gemfile", ".git"),
--               init_options = {
--                 enabledFeatures = enabled_features,
--               },
--               settings = {},
--             },
--             -- commands = {
--             --   FormatRuby = {
--             --     function()
--             --       vim.lsp.buf.format({
--             --         name = "ruby_lsp",
--             --         async = true,
--             --       })
--             --     end,
--             --     description = "Format using ruby-lsp",
--             --   },
--             -- },
--           }
--         end,
--
--         ["lua_ls"] = function()
--           local lspconfig = require("lspconfig")
--           lspconfig.lua_ls.setup {
--             settings = {
--               Lua = {
--                 diagnostics = {
--                   globals = { "vim" }
--                 }
--               }
--             }
--           }
--         end,
--       },
--     })
--
--     local cmp = require('cmp')
--     require("luasnip.loaders.from_vscode").lazy_load()
--     local cmp_select = { behavior = cmp.SelectBehavior.Select }
--     cmp.setup({
--       snippet = {
--         expand = function(args)
--           require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--         end,
--       },
--       mapping = cmp.mapping.preset.insert({
--         ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--         ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--         ["<C-Space>"] = cmp.mapping.complete(),
--         ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--         ['<C-f>'] = cmp.mapping.scroll_docs(4),
--         ['<CR>'] = cmp.mapping.confirm({ select = true }),
--       }),
--       sources = cmp.config.sources({
--         { name = 'nvim_lsp' },
--         { name = 'luasnip' }, -- For luasnip users.
--       }, {
--         { name = 'buffer' },
--       })
--     })
--   end
-- }
