local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
 formatting.prettierd.with({
   filetypes = { "html", "css", "scss", "less", "json", "yaml", "markdown" },
   env = {
    PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/.prettierrc.json"),
    },
 }),
 formatting.eslint_d.with({
   filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
 }),
 diagnostics.eslint_d.with({
    env = {
    ESLINT_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/utils/linter-config/.eslintrc.js"),
        },
 })
}

null_ls.setup({ sources = sources })
