local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- Collection of common configurations for the Nvim LSP client
    use 'neovim/nvim-lspconfig'

    -- Completion framework
    use 'hrsh7th/nvim-cmp'

    -- LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'


    -- Other usefull completion sources
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

    -- Fuzzy finder
    -- Optional
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use { "catppuccin/nvim", as = "catppuccin" }

    use 'jakewvincent/texmagic.nvim'



    if packer_bootstrap then
        require('packer').sync()
    end
end)
