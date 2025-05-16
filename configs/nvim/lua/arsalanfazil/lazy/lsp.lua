return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "stevearc/conform.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "j-hui/fidget.nvim",
  },

  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "standardjs" },
        javascriptreact = { "standardjs" }
      },
    })
    local cmp = require('cmp')
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = vim.tbl_deep_extend(
      "force",
      {},
      vim.lsp.protocol.make_client_capabilities(),
      cmp_lsp.default_capabilities())

    require("fidget").setup({})
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {},
      handlers = {
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end,

        ["tailwindcss"] = function()
          local lspconfig = require("lspconfig")
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
        end,

        ["elixirls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.elixirls.setup({
            capabilities = capabilities,
            -- Unix
            cmd = { "/home/arsalan/elixir-ls/language_server.sh" },
          })
        end,

        ["emmet_language_server"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.emmet_language_server.setup({
            filetypes = { "css", "heex", "elixir", "html", "javascript", "javascriptreact", "sass", "scss", "typescriptreact" },
            capabilities = capabilities,
          })
        end,

        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
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
        end,
      }
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
