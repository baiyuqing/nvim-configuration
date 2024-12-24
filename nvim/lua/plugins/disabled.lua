return {
  {
    "saghen/blink.cmp",
    enabled = false,
  },
  {
    "ibhagwan/fzf-lua",
    event = "VeryLazy", -- 延迟加载
    config = function()
      require("fzf-lua").setup({})
    end,
  }
}
