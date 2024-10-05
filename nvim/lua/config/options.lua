-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winbar = "%=%m %f"

-- set spell check to show a popup for command-line completions
vim.opt.wildoptions = "pum"

-- set vim prettier to add linebreak exceeding 80 lines, atleast for markdown
vim.g.lazyvim_prettier_needs_config = false
vim.g.prettier = {
  proseWrap = "always",
}

-- set markdown previewer
vim.g.mkdp_auto_start = 1
vim.g.mkdp_combine_preview = 1
vim.g.mkdp_auto_close = 1

-- setting tabs to 2 spaces
vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting
