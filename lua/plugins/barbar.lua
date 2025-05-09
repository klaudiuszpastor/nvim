return {
	"romgrk/barbar.nvim",

	config = function()
		require("barbar").setup({
			animation = false,
			auto_hide = false,
			clickable = true,
			tabpages = true,
			highlight_alternate = false,
			higlight_inactive_file_icons = false,
			highlight_visible = false,
			maximum_padding = 1,
			minimum_padding = 1,
      icons = {
        buffer_index = false,
        filetype = { enabled = false },
        modified = { enabled = false },
        button = false,
				separator_at_end = false,
      },
		})
		vim.keymap.set("n", "<tab>", ":BufferNext<CR>")
		vim.keymap.set("n", "<S-tab>", ":BufferPrevious<CR>")
		vim.keymap.set("n", "<leader>x", ":BufferClose<CR>")

    -- Uniform white background and black text for all barbar components
    local style = { fg = "#FFFFFF", bg = "#000000" }
    -- Current buffer
    vim.api.nvim_set_hl(0, "BufferCurrent",      style)
    vim.api.nvim_set_hl(0, "BufferCurrentMod",   style)
    vim.api.nvim_set_hl(0, "BufferCurrentIndex", style)
    -- Visible buffers (not current)
    vim.api.nvim_set_hl(0, "BufferVisible",      style)
    vim.api.nvim_set_hl(0, "BufferVisibleMod",   style)
    vim.api.nvim_set_hl(0, "BufferVisibleIndex", style)
    -- Inactive buffers
    vim.api.nvim_set_hl(0, "BufferInactive",      style)
    vim.api.nvim_set_hl(0, "BufferInactiveMod",   style)
    vim.api.nvim_set_hl(0, "BufferInactiveIndex", style)
    -- Separators between buffers
    vim.api.nvim_set_hl(0, "BufferSeparator",    style)
   
		-- require("transparent").clear_prefix("barbar")
	end,
}
