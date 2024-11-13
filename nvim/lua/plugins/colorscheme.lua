return {
  {
    "folke/tokyonight.nvim",
    "LazyVim/LazyVim",
    lazy = false,
    opts = {
      style = "moon",
    },
  },
  {
    "catppuccin/nvim",
    lazy = false,
    opts = {
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
    },
  },
  {
    "baiyuqing/bamboo.nvim",
    opts = {
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
    },
  },
  {
    "cocopon/iceberg.vim",
  },
  {
    "navarasu/onedark.nvim",
    opts = {
      -- Main options --
      style = "dark", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false, -- Show/hide background
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = "italic",
        keywords = "none",
        functions = "bold",
        strings = "none",
        variables = "none",
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {
        light = {
          ["@punctuation.delimiter"] = { fg = "#141413" },
          ["@punctuation.bracket"] = { fg = "#141413" },
          ["@punctuation.special"] = { fg = "#141413" },
          ["@punctuation.separator"] = { fg = "#141413" },
        },
      }, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
      },
    },
  },
  {
    "miikanissi/modus-themes.nvim",
    opts = {
      -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
      -- `auto` will automatically set style based on background set with vim.o.background
      style = "auto",
      variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
      transparent = false, -- Transparent background (as supported by the terminal)
      dim_inactive = false, -- "non-current" windows are dimmed
      hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        Gcomments = { italic = true },
        keywords = { bold = false },
        functions = { bold = true },
        variables = {},
      },

      --- You can override specific color groups to use other groups or a hex color
      --- Function will be called with a ColorScheme table
      --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
      ---@param colors ColorScheme
      on_colors = function(colors)
        -- how to mdify operandi colorscheme
      end,

      --- You can override specific highlights to use other groups or a hex color
      --- Function will be called with a Highlights and ColorScheme table
      --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors) end,
    },
  },
  {
    "josebalius/vim-light-chromeclipse",
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        specs = {
          github_light_colorblind = {
            bg0 = "#dbd9d9",
            bg1 = "#f5eded",
          },
        },
      })
    end,
  },
}
