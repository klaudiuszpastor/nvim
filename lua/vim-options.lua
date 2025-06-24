vim.cmd([[autocmd FileType * set formatoptions-=ro]])
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 10
vim.opt.termguicolors = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.autoindent = true

-- Clipboard settings
vim.opt.clipboard = "unnamedplus"
-- In visual mode, copy selection to system clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- In normal mode, copy the current line to system clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })

-- Copilot settings
vim.g.copilot_enabled = false

-- ensure true-color support
vim.opt.termguicolors = true

-- highlight yellow gutter numbers on startup or after any colorscheme
vim.api.nvim_create_augroup("YellowNumbers", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  group = "YellowNumbers",
  pattern = "*",
  callback = function()
    -- relative + absolute line numbers
    vim.api.nvim_set_hl(0, "LineNr",       { fg = "#FFFF00" })
    -- current line number
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFF00" })
  end,
})

-- then load your theme (or let your plugin manager do it later)
vim.cmd("colorscheme vim")
vim.o.background = "dark"
vim.cmd("syntax on")
vim.api.nvim_set_hl(0, "Normal", { bg = "#2e2e2e" })  -- bg 

-- Pmenu colorscheme
vim.api.nvim_set_hl(0, "Pmenu",      { bg = "#2e2e2e", fg = "#c0c0c0" })
vim.api.nvim_set_hl(0, "PmenuSel",   { bg = "#5f87ff", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "PmenuSbar",  { bg = "#1f1f1f" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#3f3f3f" })

-- Font
vim.opt.guifont = "JetBrainsMono Nerd Font"
