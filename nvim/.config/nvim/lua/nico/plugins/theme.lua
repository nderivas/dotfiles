return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require('catppuccin').setup {
            flavour = 'mocha',
            styles = {
                comments = { 'italic' },
                booleans = { 'italic' },
            },
        }
        vim.cmd.colorscheme 'catppuccin'
    end,
}
