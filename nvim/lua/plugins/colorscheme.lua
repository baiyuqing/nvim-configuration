return {
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
    "ribru17/bamboo.nvim",
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
    lazy = false,
    priority = 1000,
    config = function ()
      require('onedark').setup {
        style = 'deep',
        transparent = false,
        lualine = {
          transparent = false, -- lualine center bar transparency
        },
        highlights = {
          ["@punctuation.delimiter"] = { fg = "#c7c9c7" },
          ["@punctuation.bracket"] = { fg = "#c7c9c7" },
          ["@punctuation.special"] = { fg = "#c7c9c7" },
          ["@punctuation.separator"] = { fg = "#c7c9c7" },
          ["@punctuation.parenthesis"] = { fg = "#c7c9c7" },
          ["@punctuation.terminator"] = { fg = "#c7c9c7" },
          ["@punctuation.accessor"] = { fg = "#c7c9c7" },
          ["@punctuation.other"] = { fg = "#c7c9c7" },
          ["@punctuation"] = { fg = "#c7c9c7" },
        },
        colors = {
          dark_red = "#f57d99",
          red = "#f57d99",
        },
      }
    end
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
            bg1 = "#f5eded",
          },
          github_light_default = {
            bg1 = "#e6e1e1",
          },
        },
        options = {
          styles = {
            comments = "italic",
          },
          transparent = false,
        },
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require('kanagawa').setup({
        compile = false,             -- enable compiling the colorscheme
        undercurl = true,            -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true},
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
        theme = "wave",              -- Load "wave" theme
        background = {               -- map the value of 'background' option to a theme
          dark = "wave",           -- try "dragon" !
          light = "lotus"
        },
      })
    end
  },
}
