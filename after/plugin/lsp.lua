local lspconfig = require('lspconfig')
local lsp_defaults =lspconfig.util,
default_config

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'html',
    'cssls',
    'eslint'
  }
})

require('mason-lspconfig').setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
  ['tsserver'] = function()
    lspconfig.tsserver.setup({
      settings = {
        completions = {
          completeFunctionCalls = true
        }
      }
    })
  end,
  ['html'] = function()
    lspconfig.html.setup({
      settings = {
        completions = {
          completeFunctionCalls = true
        }
      }
    })
  end,
  ['cssls'] = function()
    lspconfig.cssls.setup({
      settings = {
        completions = {
          completeFunctionCalls = true
        }
      }
    })
  end,
  ['eslint'] = function()
    lspconfig.eslint.setup({
      settings = {
        completions = {
          completeFunctionCalls = true
        }
      }
    })
  end,
})

local function lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true }
	local keymap = vim.api.nvim_buf_set_keymap
        keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        keymap.set("n", "K", vim.lsp.buf.hover, opts)
        keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
        keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
        keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
        keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
        keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
        keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
        keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
        keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
        keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format()<cr>", opts)
end
