local M = {};

_G['my_telescope'] = M;

module = {}

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<C-h>"] = "which_key",
            }
        },
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
    },
    pickers = {
        lsp_references = {
            show_line = false
        },
        lsp_implementations = {
            show_line = false
        },
        lsp_definitions = {
            show_line = false
        },
    },
    extensions = {
        recent_files = {},
    }
}

-- end configure Telescope setup structure
--

local builtin = require('telescope.builtin')
local api = vim.api

function M.my_live_grep() 
    local word = vim.fn.expand("<cword>")
    builtin.live_grep()
    api.nvim_feedkeys(word, 'n', true)
end

function M.my_find_file()
    builtin.fd()
end

--[[
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {noremap = true, silent = true})
vim.keymap.set('n', 'gr', builtin.lsp_references, {noremap = true, silent = true})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {noremap = true, silent = true})
vim.keymap.set('n', 'gD', builtin.lsp_type_definitions, {})
--]]
-- vim.keymap.set('n', 'ff', builtin.live_grep, {})
vim.keymap.set('n', 'ff','<cmd>lua my_telescope.my_live_grep()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'fd','<cmd>lua my_telescope.my_find_file()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'fo', builtin.oldfiles, {})

return M;
