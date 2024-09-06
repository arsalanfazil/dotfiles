return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "javascript", "typescript", "c", "lua", "rust", "astro", "bash", "css", "dockerfile", "eex", "elixir", "erlang", "heex", "html", "json", "ruby", "scss", "sql", "yaml" },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true
      },
    })
  end
}
