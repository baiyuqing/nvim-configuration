-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies".
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'


        ---------------------------------------
        -- NOTE: PUT YOUR THIRD PLUGIN HERE --
        ---------------------------------------
        use 'tanvirtin/monokai.nvim'
        use { 'neovim/nvim-lspconfig' }
        use 'L3MON4D3/LuaSnip'
        use 'saadparwaiz1/cmp_luasnip'
        use { 'williamboman/mason.nvim' }
        use { 'williamboman/mason-lspconfig.nvim'}

        vim.g.nvim_tree_show_icons = {
            folders = 0,
            files = 0,
            git = 0,
            folder_arrows = 0,
        }

        use ({'nvim-treesitter/nvim-treesitter'})
        use {
            'nvim-tree/nvim-tree.lua',
            config = function()
                require('nvim-tree').setup({
                    update_focused_file = {
                        enable = true,       -- enables automatic update
                        update_cwd = true,   -- updates the cwd of the tree to that of the file
                        ignore_list = {},    -- ignore these files when updating
                    },
                    view = {
                        adaptive_size = true, -- enables resizing to the file
                    },
                    renderer = {
                        highlight_opened_files = "name", -- highlights the opened file
                    },
                })
            end
        }
        use({
	        "L3MON4D3/LuaSnip",
	        -- follow latest release.
	        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	        -- install jsregexp (optional!:).
	        run = "make install_jsregexp"
        })

        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp',      -- LSP source for nvim-cmp
                'hrsh7th/cmp-buffer',        -- Buffer completions
                'hrsh7th/cmp-path',          -- Path completions
                'hrsh7th/cmp-cmdline',       -- Cmdline completions
                'saadparwaiz1/cmp_luasnip',  -- Snippet completions
                'L3MON4D3/LuaSnip',          -- Snippet engine
                'rafamadriz/friendly-snippets' -- Snippet collection
            }
        }
      

    use {'fatih/vim-go'}

    use {'rust-lang/rust.vim'}
    use {'sindrets/diffview.nvim'}
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "ibhagwan/fzf-lua",
        -- optional for icon support
        requires = { "nvim-tree/nvim-web-devicons" }
    }

    use {
        "nvim-telescope/telescope.nvim", tag = '0.1.8',
        requires = {
          {'nvim-lua/plenary.nvim'}
        },
    }

    use {"smartpde/telescope-recent-files"}

    -- Or with configuration
    use({
        'projekt0n/github-nvim-theme',
        config = function()
            require('github-theme').setup({
                -- ...
            })

        end
    })

--[[
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function() require("ibl").setup(
            {
                scope = {
                    show_start = false,
                    show_end = false,
                }
            }
        )
        end
    }
--]]
    use {
        "lewis6991/gitsigns.nvim",
        config = function () require("gitsigns").setup()
        end
    }

    use {"nvim-lua/plenary.nvim"}
    use { 'folke/tokyonight.nvim' }
    use {"rebelot/kanagawa.nvim" }
    use {"marko-cerovac/material.nvim"}
    use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function() require("todo-comments").setup({
            opts = {
                signs = true, -- show icons in the signs column
                sign_priority = 8, -- sign priority
                -- keywords recognized as todo comments
                keywords = {
                    FIX = {
                        icon = " ", -- icon used for the sign, and in search results
                        color = "error", -- can be a hex color, or a named color (see below)
                        alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
                        -- signs = false, -- configure signs for some keywords individually
                    },
                    TODO = { icon = " ", color = "info" },
                    HACK = { icon = " ", color = "warning" },
                    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
                    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
                    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
                },
                colors = {
                    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
                    warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
                    info = { "DiagnosticInfo", "#2563EB" },
                    hint = { "DiagnosticHint", "#10B981" },
                    default = { "Identifier", "#7C3AED" },
                    test = { "Identifier", "#FF00FF" }
                },
                highlight = {
                    multiline = true, -- enable multine todo comments
                    multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
                    multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
                    before = "", -- "fg" or "bg" or empty
                    keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
                    after = "fg", -- "fg" or "bg" or empty
                    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
                    comments_only = true, -- uses treesitter to match keywords in comments only
                    max_line_len = 400, -- ignore lines longer than this
                    exclude = {}, -- list of file types to exclude highlighting
                },
                search = {
                    command = "rg",
                    args = {
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                    },
                    -- regex that will be used to match keywords.
                    -- don't replace the (KEYWORDS) placeholder
                    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
                    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
                },
            }
        })
        end
    }
    use {"ray-x/aurora"}
    use {"Mofiqul/dracula.nvim"}
    use {'mistricky/codesnap.nvim', run = 'make'}
    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use {'nvim-tree/nvim-web-devicons'} -- OPTIONAL: for file icons
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use { "hedyhli/outline.nvim" }
    use { "j-hui/fidget.nvim" }

    use {"olimorris/onedarkpro.nvim"}

    use { "ellisonleao/gruvbox.nvim" }

    use {"NLKNguyen/papercolor-theme"}
    use {"navarasu/onedark.nvim"}
    use {'Mofiqul/vscode.nvim'}
    use {"rose-pine/neovim"}
    use {"rcarriga/nvim-notify"}
    use {"EdenEast/nightfox.nvim"}
    use {"RRethy/vim-illuminate"}
    use {
      'stevearc/overseer.nvim',
      config = function() require('overseer').setup() end
    }
    use {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {}
        end
    }


    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use 'marko-cerovac/material.nvim'
    use 'eldritch-theme/eldritch.nvim'
    use 'baiyuqing/bamboo.nvim'
    use 'github/copilot.vim'
    use 'sainnhe/gruvbox-material'
    use({
        "neanias/everforest-nvim",
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
            require("everforest").setup()
        end,
    })
    use 'oxfist/night-owl.nvim'
    use  "dgox16/oldworld.nvim"

    -- use {'tpope/vim-fugitive'}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
