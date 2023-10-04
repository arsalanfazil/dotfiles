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
    build = ':TSUpdate'
  },

  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},


  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  },

  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {},
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
	view = {
	  side = "right"
	},
	sort_by = "case_sensitive",
	view = {
	  width = 30,
	},
	renderer = {
	  group_empty = true,
	},
	filters = {
	  dotfiles = true,
	},
      }
    end,
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

  {'folke/tokyonight.nvim'},
  {'tiagovla/tokyodark.nvim'},
  {"olimorris/onedarkpro.nvim"},
  -- {	  "ervandew/supertab"},

	--   {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	-- }

-- {'tpope/vim-sleuth'}
-- {	  "windwp/nvim-autopairs"}
-- {  'windwp/nvim-ts-autotag'}
}
