-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.mouse = ""
opt.wrap = true
opt.list = false
vim.api.nvim_create_user_command("Ntt", "Neotree reveal", {})
vim.api.nvim_create_user_command("Ott", "Outline", {})
vim.opt.relativenumber = false
vim.b.autoformat = false
vim.opt.cursorline = false
vim.opt.undofile = false
vim.opt.autochdir = false
vim.opt.shadafile = "NONE"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "py",
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
  end,
})

vim.api.nvim_create_user_command('Q', 'qa', {})

vim.g.snacks_animate = false
vim.g.lazyvim_check_order = false
vim.o.mouse = ""
vim.o.clipboard = ""
