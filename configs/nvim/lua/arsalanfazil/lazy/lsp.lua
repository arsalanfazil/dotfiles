return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
        automatic_enable = true,
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "stevearc/conform.nvim",
      "williamboman/mason-lspconfig.nvim",
      "j-hui/fidget.nvim",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
    },

    config = function()
      local cmp = require('cmp')
      local cmp_lsp = require("cmp_nvim_lsp")
      local capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        cmp_lsp.default_capabilities())

      local lspconfig = require("lspconfig")

      vim.lsp.enable('lua_ls')
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = { version = "Lua 5.1" },
            diagnostics = {
              globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
            }
          }
        }
      }

      vim.lsp.enable('emmet_language_server')
      lspconfig.emmet_language_server.setup({
        capabilities = capabilities,
        filetypes = { "css", "html", "javascript", "javascriptreact", "sass", "scss", "typescriptreact", "eex", "heex", "html-eex", "elixir", "svelte" },
      })

      vim.lsp.enable('elixirls')
      lspconfig.elixirls.setup({
        capabilities = capabilities,
        -- Unix
        cmd = { "/home/arsalan/elixir-ls/language_server.sh" },
      })

      vim.lsp.enable('tailwindcss')
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        classAttributes = { "class", "className", "class:list", "classList" },
        includeLanguages = {
          eelixir = "html-eex",
          elixir = "html-eex",
          heex = "html-eex",
          css = "css",
          javascript = "html",
          javascriptreact = "html",
          svelte = "html"
        },
        lint = {
          cssConflict = "warning",
          invalidApply = "error",
          invalidConfigPath = "error",
          invalidScreen = "error",
          invalidTailwindDirective = "error",
          invalidVariant = "error",
          recommendedVariantOrder = "warning"
        },
        validate = true
      })


      vim.lsp.enable('svelte')
      lspconfig.svelte.setup({
        capabilities = capabilities,
      })


      -- require("conform").setup({
      --   formatters_by_ft = {
      --     javascript = { "standardjs" },
      --     javascriptreact = { "standardjs" }
      --   }
      -- })

      require("fidget").setup({})


      local cmp_select = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
          ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- For luasnip users.
          { name = "luasnip" },  -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })

      vim.diagnostic.config({
        -- update_in_insert = true,
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      })
    end
  }
}
