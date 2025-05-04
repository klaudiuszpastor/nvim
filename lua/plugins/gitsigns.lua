return {
  {
    "tpope/vim-fugitive"
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

 			-- Highlighty z tłem 
      vim.api.nvim_set_hl(0, "GitSignsAdd",    { fg = "#005f00", bg = "none", bold = true }) -- zielone tło
      vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffff5f", bg = "none", bold = true }) -- żółte tło
      vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#5f0000", bg = "none", bold = true }) -- czerwone tło

			-- Dopasowanie tła w kolumnach po lewej stronie do GitSignsAdd
			vim.api.nvim_set_hl(0, "SignColumn",     { bg = "none" })                    -- tło za znakami gitsigns
			vim.api.nvim_set_hl(0, "LineNr",         { fg = "none", bg = "none" })    -- numery linii
			vim.api.nvim_set_hl(0, "CursorLineNr",   { fg = "none", bg = "none", bold = true }) -- aktywna linia
			vim.api.nvim_set_hl(0, "FoldColumn",     { fg = "none", bg = "none" })    -- kolumna składania
			vim.api.nvim_set_hl(0, "VertSplit",      { fg = "none", bg = "none" })    -- separator okien
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
		end
	}
}
