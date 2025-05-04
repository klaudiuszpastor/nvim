return {
    "xiyaowong/transparent.nvim",
   config = function()
		require("transparent").setup({
			enable = true,
			extra_groups = {
				"Normal", "NormalNC", "Comment", "Constant", "Special", "Identifier",
				"Statement", "PreProc", "Type", "Underlined", "Todo", "String", "Function",
				"Conditional", "Repeat", "Operator", "Structure", "LineNr", "NonText", "SignColumn",
				"CursorLineNr", "EndOfBuffer",
				"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				"NvimTreeNormal" -- NvimTree
			},
				-- table: groups you don't want to clear
			exclude_groups = {},
			-- function: code to be executed after highlight groups are cleared
			-- Also the user event "TransparentClear" will be triggered
		})
	end
}

