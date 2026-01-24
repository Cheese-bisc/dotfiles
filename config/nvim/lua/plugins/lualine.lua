return {
  "nvim-lualine/lualine.nvim",
  opts = {
    theme = "catppuccin",
    options = {
      component_separators = " ",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_x = {
        -- Macro recording indicator
        {
          function()
            local reg = vim.fn.reg_recording()
            if reg == "" then
              return ""
            end
            return " @" .. reg
          end,
          color = { fg = "#f9e2af", gui = "bold" }, -- catppuccin yellow
        },

        -- LSP clients
        {
          function()
            local clients = vim.lsp.get_clients({ bufnr = 0 })
            if #clients == 0 then
              return ""
            end

            local names = {}
            for _, client in ipairs(clients) do
              table.insert(names, client.name)
            end
            return " " .. table.concat(names, " ")
          end,
          color = { fg = "#a6e3a1" }, -- catppuccin green
        },
      },
    },
  },
}
