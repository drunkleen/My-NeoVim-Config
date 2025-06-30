-- lua/plugins/whichkey.lua
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.setup({
			plugins = {
				spelling = { enabled = true },
			},
			win = {
				border = "rounded",
				position = "bottom",
				margin = { 1, 0, 1, 0 },
				padding = { 1, 2, 1, 2 },
			},
			layout = {
				spacing = 6,
				align = "left",
			},
		})
	end,
}
