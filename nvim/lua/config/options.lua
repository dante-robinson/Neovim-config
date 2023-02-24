local options = {
    showmatch=true,             --show matching
    ignorecase=true,            --case insensitive
    mouse="v",                  --middle-click paste with
    hlsearch=true,              --highlight search
    incsearch=true,             --incremental search
    tabstop=4,                  --number of columns occupied by a tab
    softtabstop=4,              --see multiple spaces as tabstops so <BS> does the right thing
    cmdheight = 2,              -- more space in the neovim command line for displaying messages
    expandtab=true,             --converts tabs to white space
    shiftwidth=2,               --width for autoindents
    autoindent=true,            --indent a new line the same amount as the line just typed
    number=true,                --add line numbers
    wildmode=longest,list,      --get bash-like tab completions
    cc="80",                    --set an 80 column border for good coding style
    --filetype plugin indent on --allow auto-indenting depending on file type
    syntax=on,                  --syntax highlighting
    mouse="a",                  --enable mouse click
    clipboard="unnamedplus",    --use system clipboard
    --filetype plugin on
    ttyfast=true,               --Speed up scrolling
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
