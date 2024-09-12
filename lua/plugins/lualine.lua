return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
			options = {
				theme = 'vscode' 
			}
		})
		-- require("transparent").clear_prefix("lualine")
	end,
}

