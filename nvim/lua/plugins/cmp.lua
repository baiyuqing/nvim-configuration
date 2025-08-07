return {
  "hrsh7th/nvim-cmp",
  enabled = true,
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.preselect = cmp.PreselectMode.None
    opts.completion = {
      completeopt = "menu,menuone,noinsert",
    }
    sources = cmp.config.sources({
      { name = "lazydev" },
      { name = "nvim_lsp" },
      { name = "path" },
      { name = "copilot" },
    }, {
      { name = "buffer" },
    })
    return opts
  end,
}
