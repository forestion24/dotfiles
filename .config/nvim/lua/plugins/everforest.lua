return {
  {
    "sainnhe/everforest",
    name = "everforest",
    lazy = false,
    priority = 1000,

    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_ui_contrast = "high"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_better_performance = 1
      vim.cmd.colorscheme "everforest"
    end,
  },
  --[[{
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },--]]
}
