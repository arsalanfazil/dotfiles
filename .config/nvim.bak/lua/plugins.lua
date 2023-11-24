return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()  
	      builtin.grep_string({ search = vim.fn.input("Grep > ") });
      end)

      -- Enable telescope fzf native, if installed
      pcall(require('telescope').load_extension, 'fzf')
    end
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require("lazy").setup({{
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	  config = function ()
	    local configs = require("nvim-treesitter.configs")
	    configs.setup({
	      ensure_installed = {
		  "javascript",
		  'elixir',
		  "ruby",
		  "c",
		  "lua",
		  "vim",
		  "vimdoc",
		  "yaml",
		  "sql",
		  "scss",
		  "html",
		  "dockerfile",
		  "css",
		  "json",
		  "bash",
      "heex",
      "eex"
		},
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
	      })
	  end
      }})
    end,
  },

  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

{
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require("elixir")
    local elixirls = require("elixir.elixirls")

    elixir.setup {
      nextls = {enable = true},
      credo = {},
      elixirls = {
        enable = true,
        settings = elixirls.settings {
          dialyzerEnabled = false,
          enableTestLenses = false,
        },
        on_attach = function(client, bufnr)
          vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
          vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
          vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
        end,
      }
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
},

  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  },

  -- {'romgrk/barbar.nvim',
  --   dependencies = {
  --     'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
  --     'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  --   },
  --   init = function() vim.g.barbar_auto_setup = false end,
  --   opts = {},
  --   version = '^1.0.0', -- optional: only update when a new 1.x version is released
  -- },

  {
    "rose-pine/neovim",
    name = 'rose-pine',
  },

  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- {
  --   "m4xshen/smartcolumn.nvim"
  --   config = function()
  --     require("nvim-tree").setup {
	-- custom_colorcolumn = { ruby = "120" }
  --     },
  --     end,
  -- },

  
  -- {'nvim-tree/nvim-web-devicons'},

  -- {	  "ervandew/supertab"},

	--   {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	-- }

-- {'tpope/vim-sleuth'}
-- {	  "windwp/nvim-autopairs"}
-- {  'windwp/nvim-ts-autotag'}
}
