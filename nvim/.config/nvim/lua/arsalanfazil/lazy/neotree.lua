return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  config = function ()
   require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        position = "right"
      },
      filesystem = {
        hijack_netrw_behavior = "disabled"
      },
      event_handlers = {
        {
          event = "neo_tree_window_before_close",
          handler = function(args)
            return false
          end
        },
      }
    })
  end
}
