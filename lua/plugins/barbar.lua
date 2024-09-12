return {
	"romgrk/barbar.nvim",

	config = function()
		require("barbar").setup({
			auto_hide = 1
		})
		vim.keymap.set("n", "<tab>", ":BufferNext<CR>")
		vim.keymap.set("n", "<S-tab>", ":BufferPrevious<CR>")
		vim.keymap.set("n", "<leader>x", ":BufferClose<CR>")
		require("transparent").clear_prefix("barbar")
	end,
}
