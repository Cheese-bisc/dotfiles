-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- enable word wrap globally
vim.opt.wrap = true
vim.opt.linebreak = true -- wrap at word boundaries, not mid-word
vim.opt.breakindent = true -- keep indentation on wrapped lines
vim.opt.showbreak = "↳ " -- show this symbol at wrapped line start
vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 8 -- space below the cursor near EOF (visually moves lualine “down”)
vim.opt.fillchars:append({ eob = " " }) -- no tildes in the empty space
vim.opt.showtabline = 2 -- Always show tabline
vim.opt.cmdheight = 0 -- keep LazyVim/noice happy; this doesn't affect the gap above lualine
vim.opt.cursorline = false
