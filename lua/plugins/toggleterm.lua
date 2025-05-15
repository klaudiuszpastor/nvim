return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      shade_terminals = false,
    })

    vim.keymap.set("n", "<leader>tr", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
    vim.keymap.set("t", "<leader>tr", "<C-\\><C-n><cmd>ToggleTerm<CR>", { noremap = true, silent = true })
  end,
}

