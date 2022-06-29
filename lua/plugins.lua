local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-sensible'
    use 'junegunn/seoul256.vim'
    use 'dracula/vim'
    use 'ryanoasis/vim-devicons'
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'
    use 'scrooloose/nerdtree'
    use 'preservim/nerdcommenter'
    use 'mhinz/vim-startify'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use { 'nvim-treesitter/nvim-treesitter', cmd = { 'TSUpdate' }}
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

    use 'mfussenegger/nvim-dap'
    -- To enable more of the features of rust-analyzer, such as inlay hints and more!
    use 'simrat39/rust-tools.nvim'

    -- Snippet engine
    use 'hrsh7th/vim-vsnip'
    if packer_bootstrap then
        require('packer').sync()
    end
end)
