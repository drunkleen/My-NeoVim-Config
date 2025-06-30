-- lua/plugins/bufferline.lua
return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",                   -- "tabs" is also possible
                themeable = true,                   -- `true` to get `highlight_groups` from your colorscheme
                separator_style = "padded_slant",   -- "slope", "thick", "thin", "padded_slant"
                diagnostics = "nvim_lsp",           -- show LSP info in tabs
                numbers = "none",                   -- "none" | "ordinal" | "buffer_id" | "both"
                close_command = "bdelete! %d",      -- can be a string | function, see "Mouse actions"
                buffer_close_icon = '✗',            -- "x" | "X"
                close_icon = '✗',
                path_components = 1,                -- Show only the file name without the directory
                modified_icon = '●',
                left_trunc_marker = '',
                right_trunc_marker = '',
                max_name_length = 30,
                max_prefix_length = 30,
                tab_size = 21,
                color_icons = true,
                show_buffer_icons = true,
                show_buffer_close_icons = true,
                show_close_icon = false,
                enforce_regular_tabs = true,
                always_show_bufferline = false,
                persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
                show_tab_indicators = false,
                indicator = {
                    -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
                    style = 'none', -- Options: 'icon', 'underline', 'none'
                },
                icon_pinned = '󰐃',
                minimum_padding = 1,
                maximum_padding = 5,
                maximum_length = 15,
                sort_by = 'insert_at_end',
                
            },
        })

        vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Previous buffer" })
        vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Next buffer" })
        vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })
        vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "New buffer" })


    end,
}
