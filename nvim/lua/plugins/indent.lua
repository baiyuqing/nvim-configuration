return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      enabled = true,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_c = {
          {
            "filename",
            path = 2, -- 设置为 1 显示相对路径，设置为 2 显示绝对路径
          },
        },
      },
    },
  },
}
