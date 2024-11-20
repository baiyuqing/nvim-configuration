return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      enabled = false,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_c = {
          {
            "filename",
            file_status = true,
            path = 1, -- 设置为 1 显示相对路径，设置为 2 显示绝对路径
          },
        },
      },
    },
  },
}
