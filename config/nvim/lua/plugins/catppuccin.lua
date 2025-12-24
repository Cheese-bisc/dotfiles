return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {
        mocha = {
          base = "#0f0f17", -- main editor background, darker than #1e1e2e
          mantle = "#0c0c13", -- a little darker for panels/splits
          crust = "#08080d",
        },
      },
      custom_highlights = {},
      integrations = {
        aerial = true,
        bufferline = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
}
