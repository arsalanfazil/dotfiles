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
      format_on_save = {
        -- These options will be passed to conform.format()
        -- async = true,
        timeout_ms = 2500,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        php = { "php_cs_fixer" },
        javascript = { "standardjs" },
        javascriptreact = { "standardjs" }
      },
      env = {
        PHP_CS_FIXER_IGNORE_ENV = 1
      }
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
      ensure_installed = {
      },
      handlers = {
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end,

        -- ◍ typescript-language-server ts_ls
        -- ◍ json-lsp jsonls
        -- ◍ bash-language-server bashls
        -- ◍ css-lsp cssls
        -- ◍ css-variables-language-server css_variables
        -- ◍ docker-compose-language-service docker_compose_language_service
        -- ◍ dockerfile-language-server dockerls
        -- ◍ elixir-ls elixirls
        -- ◍ emmet-language-server emmet_language_server
        -- ◍ html-lsp html
        -- ◍ intelephense
        -- ◍ lua-language-server lua_ls
        -- ◍ stimulus-language-server stimulus_ls
        -- ◍ tailwindcss-language-server tailwindcss

        ["ruby_lsp"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.ruby_lsp.setup({
            capabilities = capabilities,
            init_options = {
              formatter = "standard",
              linters = { "standard" },
            },
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

        ["intelephense"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.intelephense.setup({
            cmd = { 'intelephense', '--stdio' },
            filetypes = { 'php' },
            root_dir = function()
              return vim.loop.cwd()
            end,
            settings = {
              intelephense = {
                files = {
                  maxSize = 1000000,
                }
              }
            },
            capabilities = capabilities
          })
        end,

        ["emmet_language_server"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.emmet_language_server.setup({
            filetypes = { "css", "heex", "elixir", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", 'php', 'blade' },
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
