-- define your colorscheme here

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
                ["@punctuation.separator"] = { fg = "#f2f0eb" },
                ["@punctuation.parenthesis"] = { fg = "#f2f0eb" },
                ["@punctuation.terminator"] = { fg = "#f2f0eb" },
                ["@punctuation.accessor"] = { fg = "#f2f0eb" },
                ["@punctuation.other"] = { fg = "#f2f0eb" },
                ["@punctuation"] = { fg = "#f2f0eb" },
                ["@string"] = { fg = "#f76dd5" },
                -- background = { bg = "#1A1B26" }
            }
        end,
        macchiato = function()
            return {
                ["@punctuation.delimiter"] = { fg = "#f2f0eb" },
                ["@punctuation.bracket"] = { fg = "#f2f0eb" },
                ["@punctuation.special"] = { fg = "#f2f0eb" },
                ["@punctuation.separator"] = { fg = "#f2f0eb" },
                ["@punctuation.parenthesis"] = { fg = "#f2f0eb" },
                ["@punctuation.terminator"] = { fg = "#f2f0eb" },
                ["@punctuation.accessor"] = { fg = "#f2f0eb" },
                ["@punctuation.other"] = { fg = "#f2f0eb" },
                ["@punctuation"] = { fg = "#f2f0eb" },
                ["@string"] = { fg = "#f76dd5" },
                -- background = { bg = "#1A1B26" }
            }
        end,
        frappe = function()
            return {
                ["@punctuation.delimiter"] = { fg = "#f2f0eb" },
                ["@punctuation.bracket"] = { fg = "#f2f0eb" },
                ["@punctuation.special"] = { fg = "#f2f0eb" },
                ["@punctuation.separator"] = { fg = "#f2f0eb" },
                ["@punctuation.parenthesis"] = { fg = "#f2f0eb" },
                ["@punctuation.terminator"] = { fg = "#f2f0eb" },
                ["@punctuation.accessor"] = { fg = "#f2f0eb" },
                ["@punctuation.other"] = { fg = "#f2f0eb" },
                ["@punctuation"] = { fg = "#f2f0eb" },
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
      functions = 'bold',
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
        enable = true,
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
          bg1 = "#FAFAFA",
          bg0 = bg1,
          bg3 = bg1,
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
    keywords = { italic = false, bold = true },
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

    custom_highlights = {
    }, -- Overwrite highlights with your own
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
    style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
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
        keywords = 'bold',
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
        dark_red = "#fc8e86",
        red = "#fc8e86",
        dark_purple = "#d87df3",
        purple = "#d87df3",
        bg0 = "#222326",
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

-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,    -- Non focused panes set to alternative background
    module_default = true,   -- Default enable value for modules
    colorblind = {
      enable = true,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0.3,          -- Severity [0,1] for protan (red)
        deutan = 0.3,          -- Severity [0,1] for deutan (green)
        tritan = 0,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {               -- Style to be applied to different syntax groups
      comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "bold",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
})

require('material').setup({
    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = true, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        strings = { --[[ bold = true ]] },
        keywords = { --[[ underline = true ]] },
        functions = {  bold = true --[[, undercurl = true ]] },
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
        colored_cursor = true, -- Disable the colored cursor
        borders = true, -- Disable borders between vertically split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true, -- Enable higher contrast text for darker style
    },
    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
    async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)
    custom_colors = nil, -- If you want to override the default colors, set this to a function
    custom_highlights = {}, -- Overwrite highlights with your own
})

require("eldritch").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows, transparent must be false for this to work
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

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

-- Lua
require('bamboo').setup {
  -- Main options --
  -- NOTE: to use the light theme, set `vim.o.background = 'light'`
  style = 'multiplex', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
  toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
  toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
  transparent = false, -- Show/hide background
  dim_inactive = false, -- Dim inactive windows/buffers
  term_colors = true, -- Change terminal color as per the selected theme style
  ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

  -- Change code style ---
  -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
  -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
  code_style = {
    comments = { italic = true },
    conditionals = { italic = false },
    keywords = {},
    functions = {bold = true},
    namespaces = { italic = false },
    parameters = { italic = false },
    strings = {},
    variables = {},
  },

  -- Lualine options --
  lualine = {
    transparent = false, -- lualine center bar transparency
  },

  -- Custom Highlights --
  colors = {
      red = "#bbc2ed",
  }, -- Override default colors
  highlights = {
      ["@punctuation.delimiter"] = { fg = "#f2f0eb" },
      ["@punctuation.bracket"] = { fg = "#f2f0eb" },
      ["@punctuation.special"] = { fg = "#f2f0eb" },
      ["@punctuation.separator"] = { fg = "#f2f0eb" },
      ["@punctuation.parenthesis"] = { fg = "#f2f0eb" },
      ["@punctuation.terminator"] = { fg = "#f2f0eb" },
      ["@punctuation.accessor"] = { fg = "#f2f0eb" },
      ["@punctuation.other"] = { fg = "#f2f0eb" },
      ["@punctuation"] = { fg = "#f2f0eb" },
  }, -- Override highlight groups

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
}

require("everforest").setup({
  ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
  ---Default is "medium".
  background = "hard",
  ---How much of the background should be transparent. 2 will have more UI
  ---components be transparent (e.g. status line background)
  transparent_background_level = 0,
  ---Whether italics should be used for keywords and more.
  italics = false,
  ---Disable italic fonts for comments. Comments are in italics by default, set
  ---this to `true` to make them _not_ italic!
  disable_italic_comments = false,
  ---By default, the colour of the sign column background is the same as the as normal text
  ---background, but you can use a grey background by setting this to `"grey"`.
  sign_column_background = "none",
  ---The contrast of line numbers, indent lines, etc. Options are `"high"` or
  ---`"low"` (default).
  ui_contrast = "high",
  ---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
  ---
  ---When this option is used in conjunction with show_eob set to `false`, the
  ---end of the buffer will only be hidden inside the active window. Inside
  ---inactive windows, the end of buffer filler characters will be visible in
  ---dimmed symbols. This is due to the way Vim and Neovim handle `EndOfBuffer`.
  dim_inactive_windows = false,
  ---Some plugins support highlighting error/warning/info/hint texts, by
  ---default these texts are only underlined, but you can use this option to
  ---also highlight the background of them.
  diagnostic_text_highlight = false,
  ---Which colour the diagnostic text should be. Options are `"grey"` or `"coloured"` (default)
  diagnostic_virtual_text = "coloured",
  ---Some plugins support highlighting error/warning/info/hint lines, but this
  ---feature is disabled by default in this colour scheme.
  diagnostic_line_highlight = false,
  ---By default, this color scheme won't colour the foreground of |spell|, instead
  ---colored under curls will be used. If you also want to colour the foreground,
  ---set this option to `true`.
  spell_foreground = false,
  ---Whether to show the EndOfBuffer highlight.
  show_eob = true,
  ---Style used to make floating windows stand out from other windows. `"bright"`
  ---makes the background of these windows lighter than |hl-Normal|, whereas
  ---`"dim"` makes it darker.
  ---
  ---Floating windows include for instance diagnostic pop-ups, scrollable
  ---documentation windows from completion engines, overlay windows from
  ---installers, etc.
  ---
  ---NB: This is only significant for dark backgrounds as the light palettes
  ---have the same colour for both values in the switch.
  float_style = "bright",
  ---Inlay hints are special markers that are displayed inline with the code to
  ---provide you with additional information. You can use this option to customize
  ---the background color of inlay hints.
  ---
  ---Options are `"none"` or `"dimmed"`.
  inlay_hints_background = "none",
  ---You can override specific highlights to use other groups or a hex colour.
  ---This function will be called with the highlights and colour palette tables.
  ---@param highlight_groups Highlights
  ---@param palette Palette
  on_highlights = function(highlight_groups, palette) end,
  ---You can override colours in the palette to use different hex colours.
  ---This function will be called once the base and background colours have
  ---been mixed on the palette.
  ---@param palette Palette
  colours_override = function(palette) end,
})

local night_owl = require("night-owl")
-- 👇 Add your own personal settings here
--@param options Config|nil
night_owl.setup({
    -- These are the default settings
    bold = true,
    italics = false,
    underline = true,
    undercurl = true,
    transparent_background = false,
})

require("oldworld").setup({
    styles = {
        booleans = { italic = true, bold = true },
    },
    integrations = {
        hop = true,
        telescope = false,
    },
    highlight_overrides = {
    }
})

vim.cmd('colorscheme catppuccin-frappe')
