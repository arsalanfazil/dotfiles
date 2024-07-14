return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "j-hui/fidget.nvim",
    "rafamadriz/friendly-snippets"
  },
  config = function()
    require("fidget").setup()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "astro",
        "cssls",
        "dockerls",
        "docker_compose_language_service",
        "eslint",
        "elixirls",
        "emmet_ls",
        "elp",
        "html",
        "jsonls",
        "tsserver",
        "lua_ls",
        "ruby_lsp",
        "standardrb",
        "stimulus_ls",
        "tailwindcss",
        "yamlls"
      },
      handlers = {
        function(server_name)
          local capabilities = require('cmp_nvim_lsp').default_capabilities()
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end,

        ["emmet_ls"] = function()
          local capabilities = vim.lsp.protocol.make_client_capabilities()
          local lspconfig = require("lspconfig")
          lspconfig.emmet_ls.setup({
            -- on_attach = on_attach,
            capabilities = capabilities,
            filetypes = { "eelixir", "heex", "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
            init_options = {
              html = {
                options = {
                  -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                  ["bem.enabled"] = true,
                },
              },
            }
          })
        end,

        ["ruby_lsp"] = function()
          local lspconfig = require("lspconfig")
          local util = require("lspconfig.util")
          local enabled_features = {
            "codeActions",
            -- "diagnostics",
            "documentHighlights",
            "documentLink",
            "documentSymbols",
            "foldingRanges",
            "formatting",
            "hover",
            "inlayHint",
            "onTypeFormatting",
            "selectionRanges",
            "semanticHighlighting",
            "completion",
          }
          lspconfig.ruby_lsp.setup {
            default_config = {
              cmd = { "bundle", "exec", "ruby-lsp" },
              filetypes = { "ruby" },
              root_dir = util.root_pattern("Gemfile", ".git"),
              init_options = {
                enabledFeatures = enabled_features,
              },
              settings = {},
            },
            -- commands = {
            --   FormatRuby = {
            --     function()
            --       vim.lsp.buf.format({
            --         name = "ruby_lsp",
            --         async = true,
            --       })
            --     end,
            --     description = "Format using ruby-lsp",
            --   },
            -- },
          }
        end,

        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup {
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" }
                }
              }
            }
          }
        end,
      },
    })

    local cmp = require('cmp')
    require("luasnip.loaders.from_vscode").lazy_load()
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ["<C-Space>"] = cmp.mapping.complete(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
      }, {
        { name = 'buffer' },
      })
    })
  end
}
