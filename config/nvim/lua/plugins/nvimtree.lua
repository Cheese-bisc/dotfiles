return {
  {
    "nvim-tree/nvim-tree.lua",
    -- enabled = false,
    opts = {
      view = {
        width = 30,
        side = "left",
      },
      filters = {
        dotfiles = false, -- Show hidden files
        git_ignored = false,
        custom = { "^.git$" }, -- Hide .git folder
      },
      git = {
        enable = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false, -- Disable window picker dialog
          },
        },
      },
    },
  },
}
