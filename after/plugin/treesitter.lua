require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true
  },
  ensure_installed = {'lua', 'html', 'javascript', 'css', 'typescript', 'tsx', 'scss', 'regex', 'vim', 'help'},
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    disable = {'help'},
  },
  defaults = { file_ignore_patterns = { "node_modules" }}
}
