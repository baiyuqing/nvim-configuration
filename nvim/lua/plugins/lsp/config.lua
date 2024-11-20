local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
  settings = {
    gopls = {
      -- 启用 `gofmt` 格式化
      gofumpt = true,
      -- 使用 Tab 缩进
      ["local"] = "tabs",
    },
  },
})
