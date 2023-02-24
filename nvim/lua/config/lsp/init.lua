local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- Load LSP Servers anything that needs snippet support goes in handlers.lua
require'lspconfig'.cmake.setup{}
require'lspconfig'.eslint.setup({
  --- ...
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})
require'lspconfig'.gopls.setup{}
require'lspconfig'.intelephense.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.vuels.setup{}

require "config.lsp.mason"
require("config.lsp.handlers").setup()
require "config.lsp.formatter"
