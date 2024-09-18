return {
	"akinsho/toggleterm.nvim",

	config = function()
	require("toggleterm").setup({
		shade_terminals = false,
	})
		vim.keymap.set("n","<leader>tr",":ToggleTerm<CR>",{})
		vim.keymap.set('t', '<leader>tr', "<C-\\><C-n>",{})
	end,
}
