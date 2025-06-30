-- lua/plugins/none-ls.lua

return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"jayp0521/mason-null-ls.nvim", -- ensure dependencies are installed
	},
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting -- to setup formatters
		local diagnostics = null_ls.builtins.diagnostics -- to setup linters

		-- Formatters & linters for mason to install
		require("mason-null-ls").setup({
			ensure_installed = {
				-- JavaScript/TypeScript
				"prettier",
				"eslint_d",

				-- Lua
				"stylua",

				-- Shell
				"shfmt",
				"checkmake",

				-- Python
				"ruff",

				-- Golang
				"goimports",
				"golines",
				"revive",

				-- Rust
				"rustfmt",

				-- HTML/Templ/HTMX
				"djlint", -- HTML, Jinja, Templates

				-- Java
				"google-java-format",
			},
			automatic_installation = true,
		})

		local sources = {
			-- Lua
			formatting.stylua,

			-- JS/TS/HTML/YAML/Markdown
			formatting.prettier.with({ filetypes = { "html", "json", "yaml", "markdown", "javascript", "typescript" } }),
			diagnostics.eslint_d,

			-- Shell
			formatting.shfmt.with({ args = { "-i", "4" } }),
			diagnostics.checkmake,

			-- Python
			require("none-ls.formatting.ruff").with({ extra_args = { "--extend-select", "I" } }),
			require("none-ls.formatting.ruff_format"),

			-- Golang
			formatting.goimports,
			formatting.golines,
			diagnostics.revive,

			-- Rust
			formatting.rustfmt,

			-- HTML, Templ, HTMX (djlint supports all)
			formatting.djlint.with({ filetypes = { "html", "templ" } }),

			-- Java
			formatting.google_java_format,
		}

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		null_ls.setup({
			-- debug = true, -- Enable debug mode. Inspect logs with :NullLsLog.
			sources = sources,
			-- you can reuse a shared lspconfig on_attach callback here
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		})
	end,
}
