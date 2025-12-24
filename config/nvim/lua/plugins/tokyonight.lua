return {
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "tokyonight",
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night", -- night, storm, moon, day
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
      lualine_bold = false, -- When true, section headers will be bold
      on_colors = function(colors)
        -- Make the statusline background transparent
        colors.bg_statusline = "NONE"
      end,
    },
  },
}
