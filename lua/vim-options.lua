-- Global options
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.expandtab = true 
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 10
vim.opt.termguicolors = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.clipboard = "unnamedplus"

-- Indentation settings
vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.copyindent = false

-- Visual settings
vim.opt.list = true
vim.opt.listchars = "lead:.,eol:€"

-- Key mappings
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })

-- Tab buffor in normal mode
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })

-- Copilot settings
vim.g.copilot_enabled = false

-- Color settings
vim.cmd("colorscheme vim")
--vim.o.background = "dark"
vim.cmd("syntax on")

-- vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 234 })
vim.opt.colorcolumn = "85"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#3a3a3a", bold = true })
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000", bold = true })   -- bg
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#2e2e2e", bold = true })  -- bg 
--vim.api.nvim_set_hl(0, "Normal", { bg = "#333333", bold = true })  -- bg 

-- Pmenu colors

vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2e2e2e", fg = "#c0c0c0" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#5f87ff", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#1f1f1f" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#3f3f3f" })

-- Font configuration
-- vim.opt.guifont = "JetBrainsMono Nerd Font"
vim.opt.guifont = "IBM Plex Mono"

-- Create autocmd groups for better organization
vim.api.nvim_create_augroup("Highlighting", { clear = true })

-- Highlight line numbers
vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  group = "Highlighting",
  callback = function()
    -- relative + absolute line numbers
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFF00" })
    -- current line number
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFF00", bold = true })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#444444", bold = true })
  end,
})

-- Set color for leading spaces highlight
vim.api.nvim_set_hl(0, "LeadingSpace", { fg = "#40628A" })

-- Autocmd to add leading space highlighting
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
  group = "Highlighting",
  callback = function()
    -- Check if the buffer is a regular file buffer
    if vim.api.nvim_buf_get_option(0, "buftype") ~= "" then
      return
    end
    -- Remove previous highlight (if it exists)
    if vim.b.leading_space_match_id then
      pcall(vim.fn.matchdelete, vim.b.leading_space_match_id)
      vim.b.leading_space_match_id = nil
    end
    -- Add new highlight and store its ID
    vim.b.leading_space_match_id = vim.fn.matchadd('LeadingSpace', '^\\s\\+')
  end,
})

-- Remove highlight on buffer leave
vim.api.nvim_create_autocmd("BufLeave", {
  group = "Highlighting",
  callback = function()
    -- Check if the buffer is a regular file buffer
    if vim.api.nvim_buf_get_option(0, "buftype") ~= "" then
      return
    end

    if vim.b.leading_space_match_id then
      pcall(vim.fn.matchdelete, vim.b.leading_space_match_id)
      vim.b.leading_space_match_id = nil
    end
  end,
})
