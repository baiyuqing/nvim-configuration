-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/baiyuqing/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/Users/baiyuqing/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/Users/baiyuqing/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/Users/baiyuqing/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/baiyuqing/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["SmoothCursor.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\b\0\29\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0034\4\b\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\0045\5\v\0>\5\5\0045\5\f\0>\5\6\0045\5\r\0>\5\a\4=\4\14\0035\4\15\0=\4\16\3=\3\17\0025\3\23\0005\4\19\0006\5\0\0'\a\18\0B\5\2\2=\5\20\0045\5\21\0=\5\22\4=\4\6\0035\4\24\0006\5\0\0'\a\18\0B\5\2\2=\5\20\0045\5\25\0=\5\22\4=\4\14\0035\4\26\0005\5\27\0=\5\22\4=\4\16\3=\3\28\2B\0\2\1K\0\1\0\vmatrix\1\2\0\0\17SmoothCursor\1\0\1\vtexthl\0\1\2\0\0\22SmoothCursorGreen\1\0\3\vtexthl\0\vcursor\0\vlength\3\6\1\0\4\vunstop\1\tbody\0\ttail\0\thead\0\vtexthl\1\2\0\0\17SmoothCursor\vcursor\1\0\3\vneogit\0\vcursor\0\vtexthl\0\30smoothcursor.matrix_chars\nfancy\ttail\1\0\1\vtexthl\17SmoothCursor\tbody\1\0\2\vtexthl\23SmoothCursorPurple\vcursor\6.\1\0\2\vtexthl\21SmoothCursorBlue\vcursor\6.\1\0\2\vtexthl\21SmoothCursorAqua\vcursor\b•\1\0\2\vtexthl\22SmoothCursorGreen\vcursor\b●\1\0\2\vtexthl\23SmoothCursorYellow\vcursor\b●\1\0\2\vtexthl\23SmoothCursorOrange\vcursor\t󰝥\1\0\2\vtexthl\20SmoothCursorRed\vcursor\t󰝥\thead\1\0\3\vneogit\0\vcursor\b▶\vtexthl\17SmoothCursor\1\0\4\venable\2\tbody\0\ttail\0\thead\0\1\0\16\nfancy\0\vmatrix\0\vcursor\b\vtexthl\17SmoothCursor\ftimeout\3�\23\ttype\fdefault\22disable_float_win\1\5\0\14threshold\3\3\14intervals\3#\nspeed\3\25\rpriority\3\n\18always_redraw\2\14autostart\2\23disabled_filetypes\0\6�\0\nsetup\17smoothcursor\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/SmoothCursor.nvim",
    url = "https://github.com/gen740/SmoothCursor.nvim"
  },
  aurora = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/aurora",
    url = "https://github.com/ray-x/aurora"
  },
  ["auto-dark-mode.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/auto-dark-mode.nvim",
    url = "https://github.com/f-person/auto-dark-mode.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["codesnap.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/codesnap.nvim",
    url = "https://github.com/mistricky/codesnap.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nf\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nscope\1\0\1\nscope\0\1\0\2\rshow_end\1\15show_start\1\nsetup\bibl\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  neovim = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nordic.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nordic.nvim",
    url = "https://github.com/AlexvZyl/nordic.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0005\3\3\0004\4\0\0=\4\4\3=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\2B\0\2\1K\0\1\0\rrenderer\1\0\1\27highlight_opened_files\tname\tview\1\0\1\18adaptive_size\2\24update_focused_file\1\0\3\tview\0\24update_focused_file\0\rrenderer\0\16ignore_list\1\0\3\venable\2\15update_cwd\2\16ignore_list\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["outline.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/outline.nvim",
    url = "https://github.com/hedyhli/outline.nvim"
  },
  ["overseer.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\roverseer\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/overseer.nvim",
    url = "https://github.com/stevearc/overseer.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["telescope-recent-files"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/telescope-recent-files",
    url = "https://github.com/smartpde/telescope-recent-files"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n�\n\0\0\a\0001\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2/\0005\3\3\0005\4\a\0005\5\4\0005\6\5\0=\6\6\5=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0005\6\14\0=\6\6\5=\5\15\0045\5\16\0005\6\17\0=\6\6\5=\5\18\0045\5\19\0005\6\20\0=\6\6\5=\5\21\0045\5\22\0005\6\23\0=\6\6\5=\5\24\4=\4\25\0035\4\27\0005\5\26\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\4=\4'\0035\4(\0004\5\0\0=\5)\4=\4*\0035\4+\0005\5,\0=\5-\4=\4.\3=\0030\2B\0\2\1K\0\1\0\topts\1\0\1\topts\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\3\fcommand\arg\fpattern\18\\b(KEYWORDS):\targs\0\14highlight\fexclude\1\0\n\fpattern\22.*<(KEYWORDS)\\s*:\14multiline\2\fexclude\0\17max_line_len\3�\3\18comments_only\2\nafter\afg\fkeyword\twide\vbefore\5\22multiline_context\3\n\22multiline_pattern\a^.\vcolors\ttest\1\3\0\0\15Identifier\f#FF00FF\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\19DiagnosticHint\f#10B981\tinfo\1\3\0\0\19DiagnosticInfo\f#2563EB\fwarning\1\4\0\0\19DiagnosticWarn\15WarningMsg\f#FBBF24\nerror\1\0\6\fdefault\0\tinfo\0\fwarning\0\ttest\0\thint\0\nerror\0\1\4\0\0\20DiagnosticError\rErrorMsg\f#DC2626\rkeywords\tTEST\1\4\0\0\fTESTING\vPASSED\vFAILED\1\0\3\ncolor\ttest\ticon\t⏲ \balt\0\tNOTE\1\2\0\0\tINFO\1\0\3\ncolor\thint\ticon\t \balt\0\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\2\ticon\t \balt\0\tWARN\1\3\0\0\fWARNING\bXXX\1\0\3\ncolor\fwarning\ticon\t \balt\0\tHACK\1\0\2\ticon\t \ncolor\fwarning\tTODO\1\0\2\ticon\t \ncolor\tinfo\bFIX\1\0\a\tPERF\0\tNOTE\0\tTEST\0\tWARN\0\tHACK\0\tTODO\0\bFIX\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\3\ncolor\nerror\ticon\t \balt\0\1\0\6\rkeywords\0\18sign_priority\3\b\nsigns\2\vsearch\0\14highlight\0\vcolors\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/Users/baiyuqing/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0005\3\3\0004\4\0\0=\4\4\3=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\2B\0\2\1K\0\1\0\rrenderer\1\0\1\27highlight_opened_files\tname\tview\1\0\1\18adaptive_size\2\24update_focused_file\1\0\3\tview\0\24update_focused_file\0\rrenderer\0\16ignore_list\1\0\3\venable\2\15update_cwd\2\16ignore_list\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: SmoothCursor.nvim
time([[Config for SmoothCursor.nvim]], true)
try_loadstring("\27LJ\2\n�\a\0\0\b\0\29\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0034\4\b\0005\5\a\0>\5\1\0045\5\b\0>\5\2\0045\5\t\0>\5\3\0045\5\n\0>\5\4\0045\5\v\0>\5\5\0045\5\f\0>\5\6\0045\5\r\0>\5\a\4=\4\14\0035\4\15\0=\4\16\3=\3\17\0025\3\23\0005\4\19\0006\5\0\0'\a\18\0B\5\2\2=\5\20\0045\5\21\0=\5\22\4=\4\6\0035\4\24\0006\5\0\0'\a\18\0B\5\2\2=\5\20\0045\5\25\0=\5\22\4=\4\14\0035\4\26\0005\5\27\0=\5\22\4=\4\16\3=\3\28\2B\0\2\1K\0\1\0\vmatrix\1\2\0\0\17SmoothCursor\1\0\1\vtexthl\0\1\2\0\0\22SmoothCursorGreen\1\0\3\vtexthl\0\vcursor\0\vlength\3\6\1\0\4\vunstop\1\tbody\0\ttail\0\thead\0\vtexthl\1\2\0\0\17SmoothCursor\vcursor\1\0\3\vneogit\0\vcursor\0\vtexthl\0\30smoothcursor.matrix_chars\nfancy\ttail\1\0\1\vtexthl\17SmoothCursor\tbody\1\0\2\vtexthl\23SmoothCursorPurple\vcursor\6.\1\0\2\vtexthl\21SmoothCursorBlue\vcursor\6.\1\0\2\vtexthl\21SmoothCursorAqua\vcursor\b•\1\0\2\vtexthl\22SmoothCursorGreen\vcursor\b●\1\0\2\vtexthl\23SmoothCursorYellow\vcursor\b●\1\0\2\vtexthl\23SmoothCursorOrange\vcursor\t󰝥\1\0\2\vtexthl\20SmoothCursorRed\vcursor\t󰝥\thead\1\0\3\vneogit\0\vcursor\b▶\vtexthl\17SmoothCursor\1\0\4\venable\2\tbody\0\ttail\0\thead\0\1\0\16\nfancy\0\vmatrix\0\vcursor\b\vtexthl\17SmoothCursor\ftimeout\3�\23\ttype\fdefault\22disable_float_win\1\5\0\14threshold\3\3\14intervals\3#\nspeed\3\25\rpriority\3\n\18always_redraw\2\14autostart\2\23disabled_filetypes\0\6�\0\nsetup\17smoothcursor\frequire\0", "config", "SmoothCursor.nvim")
time([[Config for SmoothCursor.nvim]], false)
-- Config for: overseer.nvim
time([[Config for overseer.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\roverseer\frequire\0", "config", "overseer.nvim")
time([[Config for overseer.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n�\n\0\0\a\0001\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2/\0005\3\3\0005\4\a\0005\5\4\0005\6\5\0=\6\6\5=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0005\6\14\0=\6\6\5=\5\15\0045\5\16\0005\6\17\0=\6\6\5=\5\18\0045\5\19\0005\6\20\0=\6\6\5=\5\21\0045\5\22\0005\6\23\0=\6\6\5=\5\24\4=\4\25\0035\4\27\0005\5\26\0=\5\28\0045\5\29\0=\5\30\0045\5\31\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\4=\4'\0035\4(\0004\5\0\0=\5)\4=\4*\0035\4+\0005\5,\0=\5-\4=\4.\3=\0030\2B\0\2\1K\0\1\0\topts\1\0\1\topts\0\vsearch\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\3\fcommand\arg\fpattern\18\\b(KEYWORDS):\targs\0\14highlight\fexclude\1\0\n\fpattern\22.*<(KEYWORDS)\\s*:\14multiline\2\fexclude\0\17max_line_len\3�\3\18comments_only\2\nafter\afg\fkeyword\twide\vbefore\5\22multiline_context\3\n\22multiline_pattern\a^.\vcolors\ttest\1\3\0\0\15Identifier\f#FF00FF\fdefault\1\3\0\0\15Identifier\f#7C3AED\thint\1\3\0\0\19DiagnosticHint\f#10B981\tinfo\1\3\0\0\19DiagnosticInfo\f#2563EB\fwarning\1\4\0\0\19DiagnosticWarn\15WarningMsg\f#FBBF24\nerror\1\0\6\fdefault\0\tinfo\0\fwarning\0\ttest\0\thint\0\nerror\0\1\4\0\0\20DiagnosticError\rErrorMsg\f#DC2626\rkeywords\tTEST\1\4\0\0\fTESTING\vPASSED\vFAILED\1\0\3\ncolor\ttest\ticon\t⏲ \balt\0\tNOTE\1\2\0\0\tINFO\1\0\3\ncolor\thint\ticon\t \balt\0\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\2\ticon\t \balt\0\tWARN\1\3\0\0\fWARNING\bXXX\1\0\3\ncolor\fwarning\ticon\t \balt\0\tHACK\1\0\2\ticon\t \ncolor\fwarning\tTODO\1\0\2\ticon\t \ncolor\tinfo\bFIX\1\0\a\tPERF\0\tNOTE\0\tTEST\0\tWARN\0\tHACK\0\tTODO\0\bFIX\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\3\ncolor\nerror\ticon\t \balt\0\1\0\6\rkeywords\0\18sign_priority\3\b\nsigns\2\vsearch\0\14highlight\0\vcolors\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nf\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nscope\1\0\1\nscope\0\1\0\2\rshow_end\1\15show_start\1\nsetup\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: goto-preview
time([[Config for goto-preview]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0", "config", "goto-preview")
time([[Config for goto-preview]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
