-- lua/plugins/lazygit.lua

return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"akinsho/toggleterm.nvim",
	},
	keys = {
		{
			"<leader>gg",
			function()
				require("lazygit_toggle").toggle()
			end,
			desc = "Toggle Lazygit",
		},
	},
	config = function()
		-- Optional: scale float size
		vim.g.lazygit_floating_window_scaling_factor = 1.0

		-- Setup toggle logic in a separate module
		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({
			cmd = "lazygit",
			hidden = true,
			direction = "float",
			float_opts = {
				border = "rounded",
			},
			on_open = function(term)
				vim.cmd("startinsert!")
			end,
		})

		-- Create a Lua module for toggling
		local M = {}
		function M.toggle()
			lazygit:toggle()
		end

		-- Store it globally to access in keymap
		package.loaded["lazygit_toggle"] = M
	end,
}
