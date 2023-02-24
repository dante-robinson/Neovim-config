local vim = vim
local format = require("formatter")
local util = require "formatter.util"

local black = function()
  return {
    exe = "black",
    args = { "-q", "-" },
    stdin = true,
  }
end

local fixjson = function()
  return {
    exe = "fixjson",
    args = { "--stdin-filename", util.get_current_buffer_file_name() },
    stdin = true,
    try_node_modules = true,
  }
end

local gofumpt = function()
  return {
    exe = "gofumpt",
    stdin = true,
  }
end

local prettierd = function()
  return {
    exe = "prettierd",
    args = { util.escape_path(util.get_current_buffer_file_path()) },
    stdin = true,
  }
end

local phpcbf = function()
  return {
    exe = "phpcbf",
    stdin = true,
    ignore_exitcode = true,
  }
end

format.setup {
  logging = false,
  filetype = {
    css = { prettierd },
    scss = { prettierd },
    go = { gofumpt },
    html = { prettierd },
    javascript = { prettierd },
    javascriptreact = { prettierd },
    json = { fixjson },
    php = { phpcbf, prettierd },
    python = { black },
    typescript = { prettierd },
    typescriptreact = { prettierd },
    markdown = { prettierd },
    json = { prettierd },
    jsonc = { prettierd },
    vue = { prettierd },
  },
}



-- format on save
vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]],
  true
)
