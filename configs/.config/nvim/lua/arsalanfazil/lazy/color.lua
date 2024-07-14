return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          dark = "mocha",
        },
        term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  },
  {
    'rose-pine/neovim',
    name = "rose-pine",
    config = function()
      require("rose-pine").setup()
      -- vim.cmd("colorscheme rose-pine-dawn")
      -- vim.cmd("colorscheme rose-pine-moon")
    end
  }
}
