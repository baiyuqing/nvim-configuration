-- GoTo code navigation
local keyset = vim.keymap.set
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})

-- 定义一个函数以显示类型信息
function show_type_info()
  vim.fn.CocActionAsync('doHover')
end

vim.api.nvim_set_keymap('n', 'K', '<CMD>lua show_type_info()<CR>', { noremap = true, silent = true })
