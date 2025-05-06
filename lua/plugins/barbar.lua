return {
	"romgrk/barbar.nvim",

	config = function()
		require("barbar").setup({
			animation = false,
			auto_hide = false,
			clickable = true,
			tabpages = true,
			maximum_padding = 1,
			minimum_padding = 1,

			icons = {
				-- turn off the index number
				buffer_index = false,

				-- disable filetype icons
				filetype = {
					enabled = false,
				},

				-- disable modified indicator
				modified = {
					enabled = false,
				},

				-- disable the close button
				button = false,
			},
		})
		vim.keymap.set("n", "<tab>", ":BufferNext<CR>")
		vim.keymap.set("n", "<S-tab>", ":BufferPrevious<CR>")
		vim.keymap.set("n", "<leader>x", ":BufferClose<CR>")

		-- Zakładki
		vim.api.nvim_set_hl(0, "BufferCurrent",        { fg = "#ffffff", bg = "none"})
		vim.api.nvim_set_hl(0, "BufferCurrentMod",     { fg = "#ffff5f", bg = "none"})

		-- Nieaktywne zakładki
		vim.api.nvim_set_hl(0, "BufferInactive",       { fg = "#aaaaaa", bg = "#1c1c1c" })
		vim.api.nvim_set_hl(0, "BufferInactiveMod",    { fg = "#ffff5f", bg = "#1c1c1c" })
		vim.api.nvim_set_hl(0, "BufferVisible",        { fg = "#ffffff", bg = "#1c1c1c" })

		-- Pasek tła
		vim.api.nvim_set_hl(0, "BufferTabpageFill",    { bg = "none" })
		vim.api.nvim_set_hl(0, "BufferOffset",         { bg = "none" })

		-- Nadpisanie ostrzeżeń 
		vim.api.nvim_set_hl(0, "BufferWarning",        { fg = "#ffff00", bg = "#1c1c1c" })
		vim.api.nvim_set_hl(0, "BufferWarningMod",     { fg = "#ffff00", bg = "#1c1c1c", bold = true })
		-- require("transparent").clear_prefix("barbar")
	end,
}
