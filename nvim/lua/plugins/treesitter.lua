return {
    'nvim-treesitter/nvim-treesitter',
   build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                "bash", "c", "cpp", "css", "html", "htmldjango", "javascript", "json", "lua", "markdown", "python", "rust", "verilog", "vhdl"
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
        }
    end,
}
