-- Specify Linters
require('lint').linters_by_ft = {
  c = { 'cpplint' },
  cmake = { 'cmakelang' },
  cpp = { 'cpplint' },
  go = { 'revive' },
  java = { 'semgrep' },
  javascript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  json = { 'jsonlint' },
  markdown = {'markdownlint'},
  php = { 'phpcs' },
  python = { 'pylint' },
  typescript = { 'eslint_d' },
  typescriptreact = { 'eslint_d' }, 
}

-- Autorun Linter
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
