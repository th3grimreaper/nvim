local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local codeactions = null_ls.builtins.code_actions

local sources = {
 formatting.prettierd.with({
   filetypes = { "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "css", "scss", "less", "json", "yaml", "markdown" },
   env = {
    PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/.prettierrc.json"),
    },
 }),
 codeactions.eslint_d.with({
   filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    extra_args = { "-f", "json", "--stdin", "--stdin-filename", "$FILENAME" },
 }),
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        vim.lsp.buf.format({bufnr = bufnr})
        end,
    })
  end
end


null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = on_attach,
})
