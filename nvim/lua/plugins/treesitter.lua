return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate', 
        config = function()
            require("nvim-treesitter").setup({
                -- Languages to install
                ensure_installed = {
                  "lua",
                  "vim",
                  "vimdoc",
                  "bash",
                  "python",
                  "javascript",
                  "typescript",
                  "json",
                  "html",
                  "css",
            },

            -- Install languages synchronously (only applied to ensure_installed)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            -- Syntax highlighting
            highlight = {
              enable = true,
              additional_vim_regex_highlighting = false,
            },

            -- Better indentation
            indent = {
              enable = true,
            },
          })
        end,
    }
}
