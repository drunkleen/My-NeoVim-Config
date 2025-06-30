-- lua/core/keymaps.lua

-- local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-z>", "<cmd>qa!<CR>", { desc = "Quit Neovim" })

-- Save file with Ctrl+S in normal, insert, and visual modes
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>sn>", "<cmd>w<CR>", { desc = "Save file without formatting" })

-- Quit file
vim.keymap.set("n", "<C-q>", "<cmd>q<CR>", { desc = "Quit file" })

-- Vertical scroll and center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor" })

-- Find and center
vim.keymap.set("n", "n", "nzzzv", { desc = "Find next and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Find previous and center" })

-- Move between windows (normal mode)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left pane" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right pane" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below pane" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper pane" })

-- Move between windows (terminal mode)
vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Terminal: left" })
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Terminal: right" })
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Terminal: down" })
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Terminal: up" })

-- vim.keymap.set("n", "<leader>x", "<cmd>close<CR>", { desc = "Close current window" })
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close current buffer" })

-- Resize splits using Ctrl + arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Window Management
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set("n", "<leader>h", "<C-w>s", { desc = "split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "make windows equal width" })

-- keep last yanked text when pasting
vim.keymap.set("v", "p", '"_dP', { desc = "Paste from last yanked text" })
