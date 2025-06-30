-- lua/plugins/toggleterm.lua
return {
    "akinsho/toggleterm.nvim",
    version = "*", -- latest stable version
    config = function()
        require("toggleterm").setup({
        size = 20,
        open_mapping = [[<C-\>]], -- default toggle key
        direction = "float",      -- or "horizontal", "vertical", "tab"
        float_opts = {
            border = "curved",
            winblend = 0,
        },
        shade_terminals = true,
        start_in_insert = true,
        })

    end,
}
