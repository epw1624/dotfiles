return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "clangd", "eslint", "hdl_checker", "html", "ltex", "lua_ls", "pylsp", "rust_analyzer" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({})
            lspconfig.eslint.setup({})
            lspconfig.hdl_checker.setup({})
            lspconfig.html.setup({})
            lspconfig.ltex.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.rust_analyzer.setup({})
        end,
    }

