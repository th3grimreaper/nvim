local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
 formatting.prettierd.with({
   filetypes = { "html", "css", "scss", "less", "json", "yaml", "markdown" },
   extra_args = { '--indent-width=2' },
 }),
 formatting.eslint_d.with({
   filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
 })
}

null_ls.setup({ sources = sources })
