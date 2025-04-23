return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
                callback = function(event)
                    -- Keymaps
                    local k = vim.keymap
                    k.set('n', 'grn', vim.lsp.buf.rename)
                    k.set({ 'n', 'x' }, 'gca', vim.lsp.buf.code_action)
                    k.set('n', 'gr', require('telescope.builtin').lsp_references)
                    k.set('n', 'gi', require('telescope.builtin').lsp_implementations)
                    k.set('n', 'gd', require('telescope.builtin').lsp_definitions)
                    k.set('n', 'gD', vim.lsp.buf.declaration)
                end
            })

            -- Diagnostic Config
            vim.diagnostic.config {
                severity_sort = true,
                float = { border = 'rounded', source = 'if_many' },
                underline = { severity = vim.diagnostic.severity.ERROR },
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = '󰅚 ',
                        [vim.diagnostic.severity.WARN] = '󰀪 ',
                        [vim.diagnostic.severity.INFO] = '󰋽 ',
                        [vim.diagnostic.severity.HINT] = '󰌶 ',
                    },
                },
                virtual_text = {
                    source = 'if_many',
                    spacing = 2,
                    format = function(diagnostic)
                        local diagnostic_message = {
                            [vim.diagnostic.severity.ERROR] = diagnostic.message,
                            [vim.diagnostic.severity.WARN] = diagnostic.message,
                            [vim.diagnostic.severity.INFO] = diagnostic.message,
                            [vim.diagnostic.severity.HINT] = diagnostic.message,
                        }
                        return diagnostic_message[diagnostic.severity]
                    end,
                },
            }

            local capabilities = require('blink.cmp').get_lsp_capabilities()

            require('mason-lspconfig').setup {
                ensure_installed = { "lua_ls", "clangd", "biome", "marksman", "pyright", "bashls" },
                automatic_installation = true,
                handlers = {
                    function()
                        local lsp = require("lspconfig")
                        local serverCapabilities = { capabilities = vim.tbl_deep_extend('force', {}, capabilities, {}) }
                        lsp.lua_ls.setup(serverCapabilities)
                        lsp.clangd.setup(serverCapabilities)
                        lsp.biome.setup(serverCapabilities)
                        lsp.marksman.setup(serverCapabilities)
                        lsp.pyright.setup(serverCapabilities)
                        lsp.bashls.setup(serverCapabilities)
                    end,
                },
            }
        end,
    }
}
