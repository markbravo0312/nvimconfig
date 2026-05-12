return {
    {
        "mason-org/mason.nvim",
        opts = {}, 
        config = function()
            require("mason").setup()
        end
         
    },

    {
        {
            "neovim/nvim-lspconfig",
            event = { "BufReadPre", "BufNewFile" },
            dependencies = {
            "mason.nvim",
                { 
                    "mason-org/mason-lspconfig.nvim"
                },
            }
        }
    }
    
}
