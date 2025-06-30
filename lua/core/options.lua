-- lua/core/options.lua

vim.opt.number = true -- Show absolute line numbers
vim.opt.clipboard = "unnamedplus" -- System wide clipboard
vim.o.wrap = true -- Enable line wrapping
vim.o.linebreak = true -- Break lines at word boundaries
vim.o.mouse = "a" -- Enable mouse support
vim.o.autoindent = true -- Enable auto indentation
vim.o.smartindent = true -- Enable smart indentation
vim.o.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
vim.o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
vim.o.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.ignorecase = true -- Ignore case in search
vim.o.smartcase = true -- Case-sensitive if search contains uppercase characters
vim.o.hlsearch = true -- Highlight search results
vim.o.incsearch = true -- Incremental search
vim.o.fileencoding = "utf-8" -- File encoding
vim.o.cmdheight = 1 -- Number of screen lines to use for the command line
vim.o.backspace = "indent,eol,start" -- Configure backspace so it acts as it should act
vim.opt.laststatus = 3 -- Always show a unified statusline
vim.o.cmdheight = 0 -- More space in the neovim command line for displaying messages

-- BufferLine options
vim.opt.termguicolors = true -- Required for proper colors
vim.opt.showtabline = 2 -- Always show tabline

-- Show Alpha dashboard on startup if no file is opened
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		if vim.fn.argc() == 0 then
			vim.cmd("Alpha")
		end
	end,
})

vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.hover()
	end,
})

vim.api.nvim_create_autocmd("CursorHoldI", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.signature_help()
	end,
})
