vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.termguicolors = true
vim.o.completeopt = 'menuone,noselect'
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.mouse = 'a'
vim.wo.signcolumn = 'yes'
vim.o.undofile = true
vim.o.showmatch = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.wildmode = "longest,list"
vim.o.cc = "80"
vim.o.cursorline = true
vim.o.swapfile = false
vim.o.wrap = false
vim.o.so = 10
vim.o.splitright = true
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.cmd('let g:netrw_browse_split = 0')
vim.cmd(':filetype plugin indent on')   -- allow auto-indenting depending on file type
vim.cmd(':syntax on                ')   -- syntax highlighting

require('plugins')
require('settings')

