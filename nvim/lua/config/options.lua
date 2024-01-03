local options = {
	  completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
    showmatch=true,             --show matching
    ignorecase=true,            --case insensitive
    mouse="v",                  --middle-click paste with
    hlsearch=true,              --highlight search
    incsearch=true,             --incremental search
    tabstop=2,                  --number of columns occupied by a tab
    softtabstop=2,              --see multiple spaces as tabstops so <BS> does the right thing
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
		conceallevel = 0,           -- so that `` is visible in markdown files
		ignorecase = true,          -- ignore case in search patterns
		pumheight = 10,             -- pop up menu height
		showtabline = 2,            -- always show tabs
		smartcase = true,           -- smart case
		--		smartindent = true,         -- make indenting smarter again
		splitbelow = true,          -- force all horizontal splits to go below current window
		splitright = true,          -- force all vertical splits to go to the right of current window
		swapfile = false,           -- creates a swapfile
		cursorline = true,          -- highlight the current line
		relativenumber = false,     -- set relative numbered lines
		numberwidth = 4,            -- set number column width to 2 {default 4}
		signcolumn = "yes",         -- always show the sign column, otherwise it would shift the text each time
		scrolloff = 8,              -- minimal number of screen lines to keep above and below the cursor
		sidescrolloff = 8,          -- minimal number of screen columns either side of cursor if wrap is `false`
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

for k, v in pairs(options) do
  vim.opt[k] = v
end
