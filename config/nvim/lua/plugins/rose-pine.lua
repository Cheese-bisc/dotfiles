return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,

    config = function()
      require("rose-pine").setup({
        variant = "moon", -- auto, main, moon, or dawn
        styles = {
          transparency = true,
          italic = false,
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
