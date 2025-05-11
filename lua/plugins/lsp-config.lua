return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "mesonlsp",
          "cmake",
--          "ltex",
          "marksman",
          "pyre",
          "bashls",    -- Bash Language Server (lspconfig name) :contentReference[oaicite:0]{index=0}
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig   = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- existing servers
      lspconfig.lua_ls.setup({ settings = { Lua = { diagnostics = { globals = { "vim" } } } }, capabilities = capabilities })
      lspconfig.clangd.setup({                  capabilities = capabilities })
      lspconfig.mesonlsp.setup({                capabilities = capabilities })
      lspconfig.cmake.setup({                   capabilities = capabilities })
      lspconfig.ltex.setup({                    capabilities = capabilities })
      lspconfig.marksman.setup({                capabilities = capabilities })
      lspconfig.pyre.setup({                    capabilities = capabilities })

      -- Bash LSP
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })

      -- Perl LSP (PLS)
      -- lspconfig.perlpls.setup({
      -- capabilities = capabilities,
      -- })

      -- common keymaps
      vim.keymap.set("n", "K",           vim.lsp.buf.hover,        {})
      vim.keymap.set("n", "<leader>gd",  vim.lsp.buf.definition,   {})
      vim.keymap.set("n", "<leader>gr",  vim.lsp.buf.references,   {})
      vim.keymap.set("n", "<leader>ca",  vim.lsp.buf.code_action,  {})
    end
  }
}

