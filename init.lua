require('vars')         -- Variables
require('opts')         -- Options
require('keys')         -- Keymaps
require('plugin')       --plugins
vim.opt.autoindent = true          
-- window-scoped
vim.opt.cursorline = true
    
-- global scope
vim.opt.autowrite = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.syntax = 'enable'
vim.opt.display='lastline'
vim.opt.linebreak = true
vim.opt.wrap = true

--User Interface Options
vim.opt.laststatus=2
vim.opt.ruler = true
vim.opt.wildmenu = true
vim.opt.tabpagemax=50
vim.opt.background='dark'
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.visualbell = true
vim.opt.mouse='a'
vim.opt.title = true

--Code Folding
vim.opt.foldnestmax=3

--Miscellaneous Options
vim.opt.autoread=true
--vim.opt.backspace=indent,eol,start
vim.opt.confirm=true
vim.opt.hidden=true
vim.opt.history=1000
vim.opt.spell = true


vim.api.nvim_set_option("clipboard","unnamed")
