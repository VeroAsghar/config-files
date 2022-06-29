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

    -- Snippet completion source for nvim-cmp
    use 'hrsh7th/cmp-vsnip'

    -- Other usefull completion sources
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

    -- See hrsh7th's other useins for more completion sources!

    -- To enable more of the features of rust-analyzer, such as inlay hints and more!
    use 'simrat39/rust-tools.nvim'

    -- Snippet engine
    use 'hrsh7th/vim-vsnip'

    -- Fuzzy finder
    -- Optional
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Color scheme used in the GIFs!
    use 'arcticicestudio/nord-vim'
    use 'mfussenegger/nvim-dap'
    use 'Mofiqul/dracula.nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
