return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
			options = {
				theme = 'vscode' 
				--theme = 'gruvbox_dark'
			}
		})
		-- require("transparent").clear_prefix("lualine")
	end,
}

