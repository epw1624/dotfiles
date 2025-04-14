vim.cmd("set number")
vim.cmd("set tabstop")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set cursorline")
vim.cmd("set nowrap")

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

require("config.lazy")
