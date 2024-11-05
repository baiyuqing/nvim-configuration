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
  },
}
