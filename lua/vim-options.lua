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
vim.opt.hlsearch = false
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.guifont = "JetBrainsMono Nerd Font"

-- Vim settings
vim.cmd("colorscheme vim")
vim.cmd("syntax on")
vim.o.background = "dark"
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })  -- czarne tło

-- In visual mode, copy selection to system clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- In normal mode, copy the current line to system clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })

-- Copilot settings
vim.g.copilot_enabled = false

