-- lua/plugins/neotree.lua
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {
		filesystem = {
			filtered_items = {
				visible = true, -- show hidden files
				hide_dotfiles = false, -- do NOT hide .files
				hide_gitignored = false, -- optional: show .gitignored files too
			},
		},
		window = {
			position = "left", -- open as a left sidebar
			width = 28, -- default width of the Neo-tree panel
		},
	},

	vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle left<CR>", { desc = "Toggle Neo-tree sidebar" }),
}
