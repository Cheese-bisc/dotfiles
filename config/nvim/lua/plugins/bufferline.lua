return {
  {
    "akinsho/bufferline.nvim",
    enabled = false,
    version = "*",
    opts = {
      options = {
        always_show_bufferline = false,
      },
    },
    config = function(_, opts)
      require("bufferline").setup(opts) -- make sure opts are used
    end,
  },
}
