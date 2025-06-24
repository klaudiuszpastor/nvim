return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",  -- you can leave this (or remove it) — icons are blanked out below
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      default_component_configs = {
        icon = {
          folder_closed = "",  -- no folder-closed icon
          folder_open   = "",  -- no folder-open icon
          folder_empty  = "",  -- no folder-empty icon
          default       = "",  -- no file icon
        },
      },
      -- override the renderers to simply omit the icon component entirely
      renderers = {
        directory = {
          { "indent" },
          -- { "icon" },    
          { "current_filter" },
          {
            "container",
            content = {
              { "name",       zindex = 10 },
              { "clipboard",  zindex = 10 },
              { "diagnostics",zindex = 10 },
              { "git_status", zindex = 10 },
            },
          },
        },
        file = {
          { "indent" },
          -- { "icon" },    
          {
            "container",
            content = {
              { "name",       zindex = 10 },
              { "clipboard",  zindex = 10 },
              { "bufnr",      zindex = 10 },
              { "modified",   zindex = 10 },
              { "diagnostics",zindex = 10 },
              { "git_status", zindex = 10 },
            },
          },
        },
      },
    })

    vim.keymap.set("n", "<C-n>",       ":Neotree filesystem reveal right<CR>", {})
    vim.keymap.set("n", "<leader>bf",  ":Neotree buffers reveal float<CR>",  {})

    --require("transparent").clear_prefix("Neotree")
  end,
}

