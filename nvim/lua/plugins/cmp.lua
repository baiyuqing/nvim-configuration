return {
  "hrsh7th/nvim-cmp",
  enabled = true,
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.preselect = cmp.PreselectMode.None
    opts.completion = {
      completeopt = "menu,menuone,noinsert",
    }
    return opts
  end,
}
