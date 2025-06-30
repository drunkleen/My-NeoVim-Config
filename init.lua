-- init.lua

require("core.keymaps")
require("core.options")

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)

local plugins = {
    -- theme plugins
    require("plugins.themes"),

    -- UI + config plugins
    require("plugins.themery"),
    require("plugins.alpha"),
    require("plugins.comment"),
    require("plugins.bufferline"),
    require("plugins.lualine"),
    require("plugins.lsp"),
    require("plugins.autocompletion"),
    require("plugins.neotree"),
    require("plugins.signature"),
    require("plugins.telescope"),
    require("plugins.toggleterm"),
    require("plugins.treesitter"),
    require("plugins.whichkey"),
    -- add more here
}

require("lazy").setup(plugins)
