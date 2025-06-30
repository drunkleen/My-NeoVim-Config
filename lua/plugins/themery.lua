-- lua/plugins/themery.lua
return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            themes = {
                -- "catppuccin-latte",
                "carbonfox",
                "catppuccin-frappe",
                "catppuccin-macchiato",
                "catppuccin-mocha",
                "dracula",
                "everforest",
                "github_dark_default",
                "gruvbox",
                "kanagawa-wave",
                "material-darker",
                "melange",
                "moonfly",
                "nightfox",
                "nord",
                "onedark",
                "oxocarbon",
                "palenight",
                "rose-pine-moon",
                "tokyonight-night",
                "zephyr",
            },
            livePreview = true,
            -- add the config here
        })
        
        vim.keymap.set("n", "<leader>tt", "<cmd>Themery<CR>", { desc = "Open Themery menu" })

    end,
}