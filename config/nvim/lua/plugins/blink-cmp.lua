return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<Down>"] = false,
        ["<Up>"] = false,
        ["<CR>"] = { "accept", "fallback" },
      },
    },
  },
}
