## About

This configuration is designed around the current stable version of the package
shipped with OpenBSD, which is usually out of date. You can find the current
package version by visiting - https://cdn.openbsd.org/pub/OpenBSD/ and selecting
the current OpenBSD release, at the time of writing it is 7.2 from there you can
select packages and amd64 (or whatever platform your using) and find neovim this
version it likely to differ from the version on -current which can be found here.

https://openports.pl/path/editors/neovim

the changes you like to your repo.

Have any suggestions feel free to open an issue I will be happy to take a look.
Please don't ask for things like language support by default this config is made
for myself if the language isn't there that you need you will need to add it sorry.

## Config & Setup

All main configuration is handled through init.vim inside the neovim folder if
you would like to make any changes it should be pretty straight forward as mostly
everything is commented.

You will need to copy everything inside this directory
to your .config directory I would recommend removing your current nvim folder if
you have one already.

After that you can run nvim in your terminal and packer should install itself
and all the plugins it needs the only real configuration you will need to do is
install Formatters and Linters yourself I have provided a list of those that I
am using in this config below. You can also add your own in the following config
files.

<b>Linters</b> - nvim/lua/config/lint.lua<br>
<b>Formatters</b> - nvim/lua/config/lsp/formatter.lua

#### Getting Icons (Optional)

OpenBSD doesn't have a nerd fonts package containing icons so we need to download them manually.

https://www.nerdfonts.com/font-downloads 

Head over to the nerd fonts download page and download the Symbols Nerd Font package, extract the zip and then if your using a Desktop Environment and not a window manager like GNOME you may be able to just open the .ttf files and click install. Otherwise make a folder in your home directory called .fonts and move the .ttf files to that folder and you will then have icons in neovim.

## Plugins

<b>Home Page - </b> Startify - https://github.com/mhinz/vim-startify<br>
<b>Caches LUA PLugins - </b> Impatient - https://github.com/lewis6991/impatient.nvim<br>
<b>Theme - </b> Tokyonight - https://github.com/folke/tokyonight.nvim<br>
<b>Icons - </b> Web-DevIcons - https://github.com/nvim-tree/nvim-web-devicons<br>
<b>LSP (Language Server) - </b> Nvim LspConfig - https://github.com/neovim/nvim-lspconfig<br>
<b>Completions Framework - </b> CMP - https://github.com/hrsh7th/nvim-cmp<br>
<b>Buffer Completions - </b> CMP Buffer - https://github.com/hrsh7th/cmp-buffer<br>
<b>Path Completions - </b> CMP Path - https://github.com/hrsh7th/cmp-path<br>
<b>Luasnip Completions - </b> CMP Nvim Lua - https://github.com/hrsh7th/cmp-path<br>
<b>Luasnip Framework - </b> Luasnip - https://github.com/L3MON4D3/LuaSnip<br>
<b>Extra Snippets - </b> Friendly Snippets - https://github.com/rafamadriz/friendly-snippets<br>
<b>LSP Package Manager - </b> Mason - https://github.com/williamboman/mason.nvim<br>
<b>Mason LSP Connection - </b> Mason LspConfig - https://github.com/williamboman/mason-lspconfig.nvim<br>
<b>Highlight Selected Word - </b> Illuminate - https://github.com/RRethy/vim-illuminate<br>
<b>Autoclose tags and quotes - </b> Nvim Autopairs - https://github.com/windwp/nvim-autopairs<br>
<b>Comment Keybinds - </b> Comment - https://github.com/numToStr/Comment.nvim <br>
<b>Linter - </b> Nvim Lint - https://github.com/mfussenegger/nvim-lint<br>
<b>FZF (Fuzzy) Finder - </b> Telescope - https://github.com/nvim-telescope/telescope.nvim<br>
<b>Extra Lua Functions (Telescope Dependency) - </b> Plenary - https://github.com/nvim-lua/plenary.nvim<br>
<b>File Explorer - </b> ChadTree - https://github.com/ms-jpq/chadtree<br>
<b>Tabs - </b> BarBar - https://github.com/romgrk/barbar.nvim<br>
<b>Indentation Guides - </b> Indent-Blankline - https://github.com/lukas-reineke/indent-blankline.nvim<br>

## Loadtime

Tested on my 7950X on OpenBSD 7.2 with smt enabled and all cores locked to 4.8GHz.
OpenBSD is not the fastest OS so this may be affecting the load times.

```
Benchmark 1: nvim --headless +qa
  Time (mean ± σ):     283.4 ms ±  34.9 ms    [User: 86.0 ms, System: 247.4 ms]
  Range (min … max):   224.6 ms … 329.5 ms    10 runs
```

I do have other things running in the background like Neovim and 2 browsers but
should still give a rough idea.

### Alternative Configs

If you are looking for something less basic or that can utilize the latest versions
of neovim feel free to check out the listed pre setup configs below!

<b>NvChad</b> - https://github.com/NvChad/NvChad<br>
<b>AstroVim</b> - https://github.com/AstroNvim/AstroNvim<br>
<b>LunarVim</b> - https://github.com/LunarVim/LunarVim<br>
<b>CosmicNvim</b> - https://github.com/CosmicNvim/CosmicNvim<br>
<b>Ecovim</b> - https://github.com/pze/econvim<br>
