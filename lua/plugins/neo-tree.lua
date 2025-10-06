return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        -- follow_current_file = true,   -- automatically set the root to the current file
        use_libuv_file_watcher = true,
        collapse_dirs = true,         -- folder becomes the root of the view
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        window = {
          width = 40,
          mappings = {
            ["<CR>"] = "open",        -- Enter = open folder / file
            ["l"] = "open",           -- vim-style l = open
            ["<BS>"] = "navigate_up", -- Backspace = go back to parent folder
            ["h"] = "close_node",     -- vim-style h = close folder
          },
        },
      },

      default_component_configs = {
        icon = {
          folder_closed = "",
          folder_open   = "",
          folder_empty  = "",
          default       = "",
        },
      },

      renderers = {
        directory = {
          { "indent" },
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

    -- Global keymaps for opening Neo-tree
    vim.keymap.set("n", "<C-n>",       ":Neotree filesystem reveal right<CR>", {})
    vim.keymap.set("n", "<leader>bf",  ":Neotree buffers reveal float<CR>",  {})

    -- If you use a transparent theme
    -- require("transparent").clear_prefix("Neotree")
  end,
}
