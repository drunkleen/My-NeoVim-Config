-- lua/plugins/lazygit.lua

return {
	"kdheepak/lazygit.nvim",
	cmd = { "LazyGit", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>gg", "<cmd>LazyGit<CR>", desc = "Lazygit (project)" },
	},
	config = function()
		vim.g.lazygit_floating_window_scaling_factor = 1.0
		vim.g.lazygit_use_neovim_remote = 1
	end,
}
