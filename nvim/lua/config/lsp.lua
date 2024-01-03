local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Enable Sources
require'lspconfig'.biome.setup{capabilities = capabilities}
require'lspconfig'.clangd.setup{capabilities = capabilities}
require'lspconfig'.cssls.setup{capabilities = lsp_capabilities}
require'lspconfig'.eslint.setup{capabilities = capabilities}
require'lspconfig'.html.setup{capabilities = capabilities}
