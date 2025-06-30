-- lua/plugins/telescope.lua

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim", -- optional but recommended
	},
	build = "make", -- for telescope-fzf-native
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					prompt_position = "top",
				},
				sorting_strategy = "ascending",
				winblend = 0,
			},
		})
		-- Load fzf if installed
		pcall(telescope.load_extension, "fzf")
	end,
}
