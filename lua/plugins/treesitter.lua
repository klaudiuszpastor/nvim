return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "bash",
          "c",
          "cmake",
          "cpp",
          "lua",
          "luadoc",
          "markdown",
          "vim",
          "vimdoc",
          "yaml",
          "python",
        },
        highlight = {
          enable = true,
          use_languagetree = true,
        },
        indent = { enable = true },
      })
    end
  }
}
