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
        use { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }
        use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
        use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' } -- buffer auto-completion
        use { 'hrsh7th/cmp-path', after = 'nvim-cmp' } -- path auto-completion
        use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' } -- cmdline auto-completion
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

        use {'nvim-treesitter/nvim-treesitter'}
        use {
            'nvim-tree/nvim-tree.lua',
        }
        use({
	        "L3MON4D3/LuaSnip",
	        -- follow latest release.
	        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	        -- install jsregexp (optional!:).
	        run = "make install_jsregexp"
        })

        use {
          "hrsh7th/nvim-cmp",
          requires = {
              "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
              'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
              'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
              'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
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
        "akinsho/toggleterm.nvim", tag = '*',
        config = function()
            require("toggleterm").setup()
        end
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
]]--

    use {
        "lewis6991/gitsigns.nvim",
        config = function () require("gitsigns").setup()
        end
    }

    use {"nvim-lua/plenary.nvim"}

    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            -- OR 'ibhagwan/fzf-lua',
            'nvim-tree/nvim-web-devicons',
        },
        config = function ()
            require"octo".setup({
                suppress_missing_scope = {
                    projects_v2 = true,
                }
            }
            )
        end
    }

    use { 'folke/tokyonight.nvim' }
    use {"rebelot/kanagawa.nvim" }
    use {"marko-cerovac/material.nvim"}
    use {
        'nvim-treesitter/nvim-treesitter-context',
        config = function() require('treesitter-context').setup({
            enable = false, -- Enable this plugin (Can be enabled/disabled later via commands)
            max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
            min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
            line_numbers = true,
            multiline_threshold = 20, -- Maximum number of lines to show for a single context
            trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
            mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
            -- Separator between context and content. Should be a single character string, like '-'.
            -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
            separator = nil,
            zindex = 20, -- The Z-index of the context window
            on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
        })
    end
}

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
    use {'AlexvZyl/nordic.nvim'}
    use { "j-hui/fidget.nvim" }

    use {"olimorris/onedarkpro.nvim"}

    use { "ellisonleao/gruvbox.nvim" }

    use {'f-person/auto-dark-mode.nvim'}
    use {"NLKNguyen/papercolor-theme"}
    use {"navarasu/onedark.nvim"}
    use {'Mofiqul/vscode.nvim'}
    use {"rose-pine/neovim"}
    use {"rcarriga/nvim-notify"}
    use { "askfiy/visual_studio_code"}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
