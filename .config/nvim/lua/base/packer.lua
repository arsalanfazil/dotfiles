-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{
				-- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },  -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' },  -- Required
		}
	}

	use 'nvim-tree/nvim-web-devicons'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use 'numToStr/Comment.nvim'

	use 'tpope/vim-sleuth'
	use "windwp/nvim-autopairs"
	use 'windwp/nvim-ts-autotag'



	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }

	use "lukas-reineke/lsp-format.nvim"


	-- Colorschemes
	use 'folke/tokyonight.nvim'
	use({
		'projekt0n/github-nvim-theme', tag = 'v0.0.7',
	})
	use 'tiagovla/tokyodark.nvim'
	use "olimorris/onedarkpro.nvim"
	use "m4xshen/smartcolumn.nvim"
end)
