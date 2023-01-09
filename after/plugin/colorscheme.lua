vim.cmd[[
    if has('termguicolors')
      set termguicolors
    endif
    set background=dark
    let g:gruvbox_material_background = 'soft'
    let g:gruvbox_material_better_performance = 1
    let g:gruvbox_material_transparent_background = 1
    let g:gruvbox_material_menu_selection_background = 'blue'
    colorscheme gruvbox-material
]]
