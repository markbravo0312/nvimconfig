
-- Tabs & indentation
vim.opt.tabstop = 4          -- number of spaces a tab counts for
vim.opt.softtabstop = 4      -- <BS> deletes like a tab
vim.opt.shiftwidth = 4       -- indentation width
vim.opt.expandtab = true     -- tabs become spaces
vim.opt.autoindent = true   -- keep indent from previous line

-- Line numbers & UI
vim.opt.number = true        -- show line numbers
vim.opt.cursorline = true   -- highlight current line
vim.opt.colorcolumn = "80"  -- 80-char guideline

-- Completion
vim.opt.wildmode = { "longest", "list" }  -- bash-like tab completion

-- Mouse & clipboard
vim.opt.mouse = "a"          -- enable mouse
vim.opt.clipboard = "unnamedplus" -- system clipboard

-- Performance
vim.opt.ttyfast = true       -- faster redrawing

-- Filetype & syntax
vim.cmd("filetype plugin indent on")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

-- Optional settings (commented like original)
-- vim.opt.spell = true
-- vim.opt.swapfile = false
-- vim.opt.backupdir = vim.fn.expand("~/.cache/vim")

-- Plugins

require("config.lazy")
vim.lsp.config('ty', {
    settings = {
        ty = {      
        -- ty language server settings go here    
        }  
    }
})

-- Required: Enable the language server
vim.lsp.enable('ty')
