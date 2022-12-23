local set = vim.opt

set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.number = true
set.relativenumber = true
set.undofile = true
set.cursorline = true
set.cursorcolumn = true
set.swapfile = false
set.hlsearch = false
set.splitright = true
set.splitbelow = true

--vinegar hide dot files
vim.cmd [[
  let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
]]