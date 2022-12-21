Alpha = require("alpha")
local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-n>', ':Alpha<cr>', {noremap = true})
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"     ┈┈┈┈┈┈┈┈┈╱╲   ",
"   ┈┈┈┈┈┈╱╲┈╲╱┈╱╲  ",
"   ┈╱▔▔▔╲╲┈╰━━╯┈╱  ",
"   ┈╲╱▔╲▕┈╰━━━━╯   ",
"   ┈┈┈┈╱╱┈┈╱▔▔▔▔╲  ",
"   ┈┈▕▔┈╲▂╱╱▔▔▔╮┈▏ ",
"   ╱▏┈▔╲▕▂╱╱╲┈┈▕┈▏ ",
"   ▏╲▂▂╱▕┈┈╲┈╰━╯╱  ",
"   ╲▂▂▂▂╱┈┈┈╰━━╯   ",
}

-- Set menu
dashboard.section.buttons.val = {
    --dashboard.button( "SPC c n", "  > New file" , ":ene <BAR> startinsert <CR>"),
    --dashboard.button( "SPC f f", "  > Find file"),
    --dashboard.button( " SPC f r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    --dashboard.button("SPC f g", "  > Find word"),
    --dashboard.button( "s", "  > Settings" , ":e ~/.config/nvim/init.vim | :cd %:p:h"), --":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    --dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("v", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}
