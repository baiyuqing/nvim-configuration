-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
return {
  -- 禁用 LazyVim 的自动格式化
  opts = {
    autoformat = false,
  },
}
