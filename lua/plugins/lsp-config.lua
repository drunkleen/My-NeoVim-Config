return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "dockerls",
          "java_language_server",
          "jdtls", "jsonls",
          "html",
          "marksman",
          "sourcery", "pylsp", "jedi_language_server",
          "lemminx",
          "tsserver",
          "hydra_lsp",
          "rust_analyzer"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function() 
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.java_language_server.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.html.setup({})
      lspconfig.marksman.setup({})
      lspconfig.sourcery.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.jedi_language_server.setup({})
      lspconfig.lemminx.setup({})
      lspconfig.hydra_lsp.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.tsserver.setup({})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    end
  }

}




