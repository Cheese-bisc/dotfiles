return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<A-i>", "<cmd>ToggleTerm direction=float<cr>", desc = "Float terminal", mode = { "n", "t" } },
    { "<A-h>", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal terminal", mode = { "n", "t" } },
    { "<A-v>", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical terminal", mode = { "n", "t" } },
  },
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 12
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.3
      end
    end,
    float_opts = {
      border = "curved",
      width = 80,
      height = 20,
    },
    hide_numbers = true,
    start_in_insert = true,
    close_on_exit = true,
    shade_terminals = false,
    on_open = function(term)
      vim.cmd("startinsert!")
    end,
    on_close = function(term)
      vim.cmd("stopinsert")
    end,
  },
}
