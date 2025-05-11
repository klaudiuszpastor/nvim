-- ~/.config/nvim/lua/plugins/lualine.lua
return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled        = false,
        component_separators = { left = '', right = '' },
        section_separators   = { left = '', right = '' },
        theme = {
          -- black text on white background
          normal   = { a = { fg = '#000000', bg = '#FFFFFF' }, b = { fg = '#000000', bg = '#FFFFFF' }, c = { fg = '#000000', bg = '#FFFFFF' } },
          insert   = { a = { fg = '#000000', bg = '#FFFFFF' }, b = { fg = '#000000', bg = '#FFFFFF' }, c = { fg = '#000000', bg = '#FFFFFF' } },
          visual   = { a = { fg = '#000000', bg = '#FFFFFF' }, b = { fg = '#000000', bg = '#FFFFFF' }, c = { fg = '#000000', bg = '#FFFFFF' } },
          replace  = { a = { fg = '#000000', bg = '#FFFFFF' }, b = { fg = '#000000', bg = '#FFFFFF' }, c = { fg = '#000000', bg = '#FFFFFF' } },
          command  = { a = { fg = '#000000', bg = '#FFFFFF' }, b = { fg = '#000000', bg = '#FFFFFF' }, c = { fg = '#000000', bg = '#FFFFFF' } },
          inactive = { a = { fg = '#000000', bg = '#FFFFFF' }, b = { fg = '#000000', bg = '#FFFFFF' }, c = { fg = '#000000', bg = '#FFFFFF' } },
        },
        disabled_filetypes = {},
      },
      sections = {
        lualine_a = { 'mode' },       -- show only the mode
        lualine_b = {
          {
            'diff',
            colored = true,
            diff_color = {
              added    = { fg = '#000000' },
              modified = { fg = '#000000' },
              removed  = { fg = '#000000' },
            },
          },
          {
            'diagnostics',
            sources = { 'nvim_lsp' },
            sections = { 'error', 'warn', 'info', 'hint' },
            colored = true,
            color_error = { fg = '#000000' },
            color_warn  = { fg = '#000000' },
            color_info  = { fg = '#000000' },
            color_hint  = { fg = '#000000' },
          },
        },
       lualine_c = {
          { 'filename', path = 1 }
        },
        lualine_x = {},
        lualine_y = {'tabs'},
        lualine_z = {'selectioncount','searchcount','location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = {}
    }
  end,
}

