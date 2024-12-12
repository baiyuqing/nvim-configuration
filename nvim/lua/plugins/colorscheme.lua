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
    lazy = false,
    priority = 1000,
    config = function ()
      require('onedark').setup {
        style = 'darker',
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
            bg0 = "#dbd9d9",
            bg1 = "#f5eded",
          },
        },
      })
    end,
  },
  { "Mofiqul/dracula.nvim" },
  {"Mofiqul/vscode.nvim"},
  {
    "hgoose/temple.vim"
  },
}
