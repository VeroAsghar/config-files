vim.g.mapleader=' '
vim.cmd(':set showmatch            ')   -- show matching 
vim.cmd(':set ignorecase           ')   -- case insensitive 
vim.cmd(':set mouse=v              ')   -- middle-click paste with 
vim.cmd(':set hlsearch             ')   -- highlight search 
vim.cmd(':set incsearch            ')   -- incremental search
vim.cmd(':set tabstop=4            ')   -- number of columns occupied by a tab 
vim.cmd(':set softtabstop=4        ')   -- see multiple spaces as tabstops so <BS> does the right thing
vim.cmd(':set expandtab            ')   -- converts tabs to white space
vim.cmd(':set shiftwidth=4         ')   -- width for autoindents
vim.cmd(':set autoindent           ')   -- indent a new line the same amount as the line just typed
vim.cmd(':set number relativenumber')   -- add line numbers
vim.cmd(':set wildmode=longest,list')   -- get bash-like tab completions
vim.cmd(':set cc=80                ')   -- set an 80 column border for good coding style
vim.cmd(':filetype plugin indent on')   -- allow auto-indenting depending on file type
vim.cmd(':syntax on                ')   -- syntax highlighting
vim.cmd(':set mouse=a              ')   -- enable mouse click
vim.cmd(':filetype plugin on       ')
vim.cmd(':set cursorline           ')   -- highlight current cursorline
vim.cmd(':set noswapfile           ')   -- disable creating swap file
vim.cmd(':set nowrap               ')
vim.cmd(':set signcolumn=yes       ')   -- fixes column to remove jitter
vim.cmd(':set so=999')
vim.g['vimtex_view_method'] = 'zathura'
vim.cmd(':let maplocalleader = " "')
vim.cmd('syntax enable')
require('plugins')
vim.cmd(':set signcolumn=yes')
vim.cmd('let g:netrw_browse_split = 0')
vim.g.python3_host_prog = '/home/james/.pyenv/versions/3.9.2/bin/python'

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "frappe",
        dark = "mocha",
    },
    transparent_background = true,
    term_colors = true,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
require("luasnip.loaders.from_vscode").lazy_load()
require('maps')

