return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { "c", "cpp", "lua", "query", "css", "javascript", "html", "python", "go" },
                sync_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        event = "VeryLazy",
        enabled = true,
        config = function()
            require('nvim-treesitter.configs').setup({
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                        },
                        include_surrounding_whitespace = true,
                    },
                },
            })
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        opts = {},
    },
}
