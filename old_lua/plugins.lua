local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local plugins = 
{
    { 'neovim/nvim-lspconfig' },
    { "catppuccin/nvim" },
    -- lazy.nvim
    --{
    --    "folke/noice.nvim",
    --    event = "VeryLazy",
    --    opts = {
    --        -- add any options here
    --    },
    --    dependencies = {
    --        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    --        "MunifTanjim/nui.nvim",
    --        -- OPTIONAL:
    --        --   `nvim-notify` is only needed, if you want to use the notification view.
    --        --   If not available, we use `mini` as the fallback
    --        "rcarriga/nvim-notify",
    --    }
    --},

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opts = true }
    },

    -- Fuzzy finder
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },

    { 'mfussenegger/nvim-dap' },
    { 'rcarriga/nvim-dap-ui' },

    {
        'nvim-treesitter/nvim-treesitter',
        init = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    },
    { 'nvim-treesitter/nvim-treesitter-context' },

    -- Completion framework
    { 'hrsh7th/nvim-cmp' },
    -- LSP completion source for nvim-cmp
    { 'hrsh7th/cmp-nvim-lsp' },
    -- Other {full completion sources
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-buffer' },
    {
        "nvim-neorg/neorg",
        -- lazy-load on filetype
        ft = "norg",
        -- options for neorg. This will automatically call `require("neorg").setup(opts)`
        opts = {
          load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {}, -- Adds pretty icons to your documents
            ["core.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        notes = "~/notes",
                    },
                },
            },
          },
        },
      },
    { 'JuliaEditorSupport/julia-vim' },
}
require("lazy").setup(plugins)
