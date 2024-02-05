return {
  {
    'akinsho/toggleterm.nvim',
    config = function ()
      require("toggleterm").setup({
        version = "*",
        config = true
      })
---      vim.keymap.set("n", '<C-~>', ':ToggleTerm<CR>', {})

  vim.keymap.set('n', '<C-t>', [[<Cmd>ToggleTerm<CR>]], {})
    end
  }
}
