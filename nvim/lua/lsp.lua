require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'pylsp', 'gopls', 'lua_ls', 'rust_analyzer', 'pyright', 'bashls', 'bufls', 'glslls'},
})



-- Set different settings for different languages' LSP
-- LSP list: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- How to use setup({}): https://github.com/neovim/nvim-lspconfig/wiki/Understanding-setup-%7B%7D
--     - the settings table is sent to the LSP
--     - on_attach: a lua callback function to run after LSP atteches to a given buffer
local lspconfig = require('lspconfig')


-- Customized on_attach function
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("n", "<space>f", function() vim.lsp.buf.format({ async = true }) end, bufopts)
end

-- Configure each language
-- How to add LSP for a specific language?
-- 1. use `:Mason` to install corresponding LSP
-- 2. add configuration below
lspconfig.pylsp.setup({
    on_attach = on_attach,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = {'W391', 'W503', 'E303', 'E301', 'E302', 'W291', 'W293'},
                    maxLineLength = 120
                }
            }
        }
    }
})
local util = require "lspconfig/util"
require'lspconfig'.gopls.setup{
    on_attach = on_attach,
    root_dir = util.root_pattern("go.work", "go.mod", ".git")

}
require'lspconfig'.rust_analyzer.setup{
    on_attach = on_attach
}
require'lspconfig'.pyright.setup{
    on_attach = on_attach,
    init_options = {
        settings = {
            args = {
                "--ignore=E501"
            },
        },
    },
}
require'lspconfig'.tsserver.setup{
    on_attach = on_attach
}
require'lspconfig'.azure_pipelines_ls.setup{
    on_attach = on_attach
}
require'lspconfig'.clangd.setup{
    on_attach = on_attach
}
require'lspconfig'.lua_ls.setup{
}

--[[
require('lspconfig')['yamlls'].setup {
  on_attach = on_attach,
}
--]]
require('lspconfig')['bashls'].setup {
    on_attach = on_attach,
}
require('lspconfig')['bufls'].setup{
    on_attach = on_attach
}
require('lspconfig')['glslls'].setup{
    on_attach = on_attach
}

vim.lsp.handlers["textDocument/diagnostic"] = vim.lsp.with(
  vim.lsp.diagnostic.on_diagnostic, {
    underline = false,
  }
)
