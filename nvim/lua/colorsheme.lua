-- define your colorscheme here
local colorscheme = 'github_dark'
local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end


require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = true, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = { "bold" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
        mocha = {
            base = "#1A1B26",
        },
    },
    highlight_overrides = {
        mocha = function()
            return {
                ["@punctuation.delimiter"] = { fg = "#f2f0eb" },
                ["@punctuation.bracket"] = { fg = "#f2f0eb" },
                ["@punctuation.special"] = { fg = "#f2f0eb" },
                ["@string"] = { fg = "#f76dd5" },
                -- background = { bg = "#1A1B26" }
            }
        end,
    },
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})


-- Default options
require('github-theme').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath('cache') .. '/github-theme',
    compile_file_suffix = '_compiled', -- Compiled file suffix
    hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
    hide_nc_statusline = true, -- Override the underline style for non-active statuslines
    transparent = false,       -- Disable setting background
    terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,      -- Non focused panes set to alternative background
    module_default = true,     -- Default enable value for modules
    styles = {                 -- Style to be applied to different syntax groups
      comments = 'italic',       -- Value is any valid attr-list value `:help attr-list`
      functions = 'NONE',
      keywords = 'NONE',
      variables = 'NONE',
      conditionals = 'NONE',
      constants = 'NONE',
      numbers = 'NONE',
      operators = 'NONE',
      strings = 'NONE',
      types = 'NONE',
    },
    inverse = {                -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    darken = {                 -- Darken floating windows and sidebar-like windows
      floats = false,
      sidebars = {
        enabled = true,
        list = {},             -- Apply dark background to specific windows
      },
    },
    modules = {                -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {
  },
  specs = {
      github_dark = {
          --bg1 = "#1F2224",
          bg1 = "#1d0d1e",
          bg0 = bg1,
          bg3 = bg1,
      },
      github_dark_dimmed = {
          bg1 = "#1e2021",
          bg0 = bg1,
          bg3 = bg1,
      },
      github_light_colorblind = {
          ["@string"] = { fg = "#f76dd5" },
      },

      github_dark_colorblind = {
          ["@string"] = { fg = "#f76dd5" },
      },
  },
  groups = {},
})
require('github-theme').compile()


require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  underline = false,
  undercurl = false,
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = false },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = false,            -- enable undercurls
    underline = false,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = false},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

require("dracula").setup()

require('material').setup({
    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { --[[ italic = true ]] },
        strings = { --[[ bold = true ]] },
        keywords = { --[[ underline = true ]] },
        functions = { --[[ bold = true, undercurl = true ]] },
        variables = {},
        operators = {},
        types = {},
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "coc",
        -- "colorful-winsep",
        -- "dap",
        -- "dashboard",
        -- "eyeliner",
        -- "fidget",
        -- "flash",
        -- "gitsigns",
        -- "harpoon",
        -- "hop",
        -- "illuminate",
        -- "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        -- "neotest",
        -- "neo-tree",
        -- "neorg",
        -- "noice",
        -- "nvim-cmp",
        -- "nvim-navic",
        -- "nvim-tree",
        -- "nvim-web-devicons",
        -- "rainbow-delimiters",
        -- "sneak",
        -- "telescope",
        -- "trouble",
        -- "which-key",
        -- "nvim-notify",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false -- Enable higher contrast text for darker style
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_colors = nil, -- If you want to override the default colors, set this to a function

    custom_highlights = {}, -- Overwrite highlights with your own
})

require 'nordic' .setup {
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette) return palette end,
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Enable brighter float border.
    bright_border = false,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = true,
    -- Swap the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    override = {
        ["@punctuation.delimiter"] = { fg = "#f2f0eb" },
    },
    -- Cursorline options.  Also includes visual/selection.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    }
}
require("onedarkpro").setup({
    colors = {
        dark = { bg = "#272927"},
    }
})

-- Default options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = false,
  underline = false,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

-- Lua
require('onedark').setup  {
    -- Main options --
    style = 'deep', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'bold',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {
        dark_red = "#F0736A",
        red = "#F0736A",
        dark_purple = "#d87df3",
        purple = "#d87df3",
        bg0 = "#1f252e",
    }, -- Override default colors
    highlights = {
        ["@punctuation.delimiter"] = { fg = "#b8b6b4" },
        ["@punctuation.bracket"] = { fg = "#b8b6b4" },
        ["@punctuation.special"] = { fg = "#b8b6b4" },

    }, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = false,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}



local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    style = 'dark',

    -- Enable transparent background
    transparent = false,

    -- Enable italic comment
    italic_comments = true,

    -- Underline `@markup.link.*` variants
    underline_links = false,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#6F42C1',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    },
})
-- require('vscode').load()


require("visual_studio_code").setup({
    -- `dark` or `light`
    mode = "dark",
    -- Whether to load all color schemes
    preset = true,
    -- Whether to enable background transparency
    transparent = false,
    -- Whether to apply the adapted plugin
    expands = {
        hop = true,
        dbui = true,
        lazy = true,
        aerial = true,
        null_ls = true,
        nvim_cmp = true,
        gitsigns = true,
        which_key = true,
        nvim_tree = true,
        lspconfig = true,
        telescope = true,
        bufferline = true,
        nvim_navic = true,
        nvim_notify = true,
        vim_illuminate = true,
        nvim_treesitter = true,
        nvim_ts_rainbow = true,
        nvim_scrollview = true,
        nvim_ts_rainbow2 = true,
        indent_blankline = true,
        vim_visual_multi = true,
    },
    hooks = {
        before = function(conf, colors, utils) end,
        after = function(conf, colors, utils) end,
    },
})

--vim.cmd('colorscheme visual_studio_code')
-- vim.cmd('colorscheme onedark')
vim.cmd('colorscheme tokyonight')

--[[
local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
	update_interval = 1000,
	set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
        vim.cmd('colorscheme catppuccin-mocha')
	end,
	set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
        vim.cmd('colorscheme github_light_colorblind')

		--vim.cmd('colorscheme tokyonight-day')
	end,
})
]]--
