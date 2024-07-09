require('options')
require('keymaps')
require('plugins')
require('colorsheme')
require('bai')
require('lsp')
require('my_telescope')

-- 配置 nvim-treesitter
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (or "all")
    ignore_install = { "javascript" },

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
      enable = true,

      -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
      -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
      -- the name of the parser)
      -- list of language that will be disabled
      disable = { "c", "rust" },
      -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
      disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
              return true
          end
      end,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  }

require'nvim-web-devicons'.get_icons()
-- end 配置 nvim-treesitter



--
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})
--
--
-- Autocmd commands
-- -- Persistent Folds
local augroup = vim.api.nvim_create_augroup
local save_fold = augroup("Persistent Folds", { clear = true })
vim.api.nvim_create_autocmd("BufWinLeave", {
	pattern = "*.*",
	callback = function()
		vim.cmd.mkview()
	end,
	group = save_fold,
})
vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*.*",
	callback = function()
		vim.cmd.loadview({ mods = { emsg_silent = true } })
	end,
	group = save_fold,
})
-- Persistent Cursor
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Cursor Line on each window
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  callback = function()
    local ok, cl = pcall(vim.api.nvim_win_get_var, 0, "auto-cursorline")
    if ok and cl then
      vim.wo.cursorline = true
      vim.api.nvim_win_del_var(0, "auto-cursorline")
    end
  end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
  callback = function()
    local cl = vim.wo.cursorline
    if cl then
      vim.api.nvim_win_set_var(0, "auto-cursorline", cl)
      vim.wo.cursorline = false
    end
  end,
})
--
require("codesnap").setup({
    watermark = "",
    code_font_family = "MonoLisa Nerd Font",
    has_breadcrumbs = true,
     bg_color = "#04274A",
  breadcrumbs_separator = "/"
})

--
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'branch', 'diff', 'diagnostics'},
    lualine_b = {
        {
            'filename',
            path = 1,
            symbols = {
                modified = '[+]',      -- Text to show when the file is modified.
                readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                unnamed = '[No Name]', -- Text to show for unnamed buffers.
                newfile = '[New]',     -- Text to show for newly created file before first write
            }
        }
    },
    lualine_c = {},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("outline").setup({
    outline_window = {
        position = "left",
        auto_close = false,
    }
})

require("fidget").setup(
{
    -- Options related to LSP progress subsystem
    progress = {
        poll_rate = 0,                -- How and when to poll for progress messages
        suppress_on_insert = false,   -- Suppress new messages while in insert mode
        ignore_done_already = false,  -- Ignore new tasks that are already complete
        ignore_empty_message = false, -- Ignore new tasks that don't contain a message
        clear_on_detach =             -- Clear notification group when LSP server detaches
        function(client_id)
            local client = vim.lsp.get_client_by_id(client_id)
            return client and client.name or nil
        end,
        notification_group =          -- How to get a progress message's notification group key
        function(msg) return msg.lsp_client.name end,
        ignore = {},                  -- List of LSP servers to ignore

        -- Options related to how LSP progress messages are displayed as notifications
        display = {
            render_limit = 16,          -- How many LSP messages to show at once
            done_ttl = 3,               -- How long a message should persist after completion
            done_icon = "✔",            -- Icon shown when all LSP progress tasks are complete
            done_style = "Constant",    -- Highlight group for completed LSP tasks
            progress_ttl = math.huge,   -- How long a message should persist when in progress
            progress_icon =             -- Icon shown when LSP progress tasks are in progress
            { pattern = "dots", period = 1 },
            progress_style =            -- Highlight group for in-progress LSP tasks
            "WarningMsg",
            group_style = "Title",      -- Highlight group for group name (LSP server name)
            icon_style = "Question",    -- Highlight group for group icons
            priority = 30,              -- Ordering priority for LSP notification group
            skip_history = true,        -- Whether progress notifications should be omitted from history
            format_message =            -- How to format a progress message
            require("fidget.progress.display").default_format_message,
            format_annote =             -- How to format a progress annotation
            function(msg) return msg.title end,
            format_group_name =         -- How to format a progress notification group's name
            function(group) return tostring(group) end,
            overrides = {               -- Override options from the default notification config
                rust_analyzer = { name = "rust-analyzer" },
            },
        },

        -- Options related to Neovim's built-in LSP client
        lsp = {
            progress_ringbuf_size = 0,  -- Configure the nvim's LSP progress ring buffer size
            log_handler = false,        -- Log `$/progress` handler invocations (for debugging)
        },
    },

    -- Options related to notification subsystem
    notification = {
        poll_rate = 10,               -- How frequently to update and render notifications
        filter = vim.log.levels.INFO, -- Minimum notifications level
        history_size = 128,           -- Number of removed messages to retain in history
        override_vim_notify = false,  -- Automatically override vim.notify() with Fidget
        configs =                     -- How to configure notification groups when instantiated
        { default = require("fidget.notification").default_config },
        redirect =                    -- Conditionally redirect notifications to another backend
        function(msg, level, opts)
            if opts and opts.on_open then
                return require("fidget.integration.nvim-notify").delegate(msg, level, opts)
            end
        end,

        -- Options related to how notifications are rendered as text
        view = {
            stack_upwards = true,       -- Display notification items from bottom to top
            icon_separator = " ",       -- Separator between group name and icon
            group_separator = "---",    -- Separator between notification groups
            group_separator_hl =        -- Highlight group used for group separator
            "Comment",
            render_message =            -- How to render notification messages
            function(msg, cnt)
                return cnt == 1 and msg or string.format("(%dx) %s", cnt, msg)
            end,
        },

        -- Options related to the notification window and buffer
        window = {
            normal_hl = "Comment",      -- Base highlight group in the notification window
            winblend = 100,             -- Background color opacity in the notification window
            border = "none",            -- Border around the notification window
            zindex = 45,                -- Stacking priority of the notification window
            max_width = 0,              -- Maximum width of the notification window
            max_height = 0,             -- Maximum height of the notification window
            x_padding = 1,              -- Padding from right edge of window boundary
            y_padding = 0,              -- Padding from bottom edge of window boundary
            align = "bottom",           -- How to align the notification window
            relative = "editor",        -- What the notification window position is relative to
        },
    },

    -- Options related to integrating with other plugins
    integration = {
        ["nvim-tree"] = {
            enable = true,              -- Integrate with nvim-tree/nvim-tree.lua (if installed)
        },
        ["xcodebuild-nvim"] = {
            enable = true,              -- Integrate with wojciech-kulik/xcodebuild.nvim (if installed)
        },
    },

    -- Options related to logging
    logger = {
        level = vim.log.levels.WARN,  -- Minimum logging level
        max_size = 10000,             -- Maximum log file size, in KB
        float_precision = 0.01,       -- Limit the number of decimals displayed for floats
        path =                        -- Where Fidget writes its logs to
        string.format("%s/fidget.nvim.log", vim.fn.stdpath("cache")),
    },
})

require("notify").setup()


--#region
-- vim.opt.mouse = "a"
vim.opt.mouse = ""
vim.opt.cursorline = false

if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
end

vim.api.nvim_create_user_command('Ntt', 'NvimTreeToggle', {})

-- 禁用 'd' 键
vim.api.nvim_set_keymap('n', 'd', '<Nop>', { noremap = true, silent = true })

-- 保留 'dd' 功能
vim.api.nvim_set_keymap('n', 'dd', 'dd', { noremap = true, silent = true })




vim.keymap.set('n', 'co', '<Plug>(git-conflict-ours)')
vim.keymap.set('n', 'ct', '<Plug>(git-conflict-theirs)')
vim.keymap.set('n', 'cb', '<Plug>(git-conflict-both)')
vim.keymap.set('n', 'c0', '<Plug>(git-conflict-none)')
vim.keymap.set('n', '[x', '<Plug>(git-conflict-prev-conflict)')
vim.keymap.set('n', ']x', '<Plug>(git-conflict-next-conflict)')
