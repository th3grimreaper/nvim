require("mason").setup()
require("mason-lspconfig").setup({
   ensure_installed = { 
     "emmet_ls", 
     "html",
     "cssls",
     "tsserver",
     "gopls",
   },
})


