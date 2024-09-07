return {
  "akinsho/horizon.nvim",
  name = "horizon",
  priority = 1000,

  opts = {
    overrides = {
      colors = {
        Comment = { bg = "#000000" },
        info_bg = {},
      },
      treesitter = {
        environment_name = { fg = "#000000" },
        annotation = { fg = "#000000" },
        namespace = { fg = "#000000" },
        uri = { fg = "#000000" },
      },
      telescope = {
        TelescopePromptPrefix = { fg = "#000000" },
      },
      nvim_tree = {
        NvimTreeSymlink = { fg = "#000000" },
      },
      neo_tree = {
        NeoTreeSymbolicLinkTarget = { fg = "#000000" },
      },
      plugins = {},
    },
  },
}
