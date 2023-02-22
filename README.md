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

After that you can run nvim in your terminal and then you will probably need to
run :PlugInstall to install all the plugins as they are stored in .local You will then probably have other errors related to COQ, to solve these run :COQdeps it will show three dots like so "..." just wait as its preparing to download things. After these are setup
you should be able to restart nvim with everything working.

I may work on a .sh script to automate everything in the future once I have my
plugins more set it stone to what I want.

## Plugins
<b>Home Page - </b> Startify - https://github.com/mhinz/vim-startify<br>
<b>Caches LUA PLugins - </b> Impatient - https://github.com/lewis6991/impatient.nvim<br>
<b>Theme - </b> Tokyonight - https://github.com/folke/tokyonight.nvim<br>
<b>Icons - </b> Web-DevIcons - https://github.com/nvim-tree/nvim-web-devicons<br>
<b>LSP (Language Server) + Completion - </b> COQ - https://github.com/ms-jpq/coq_nvim<br>
<b>FZF (Fuzzy) Finder - </b> Telescope - https://github.com/nvim-telescope/telescope.nvim<br>
<b>Extra Lua Functions (Telescope Dependency) - </b> Plenary - https://github.com/nvim-lua/plenary.nvim<br>
<b>File Explorer - </b> ChadTree - https://github.com/ms-jpq/chadtree<br>
<b>Tabs - </b> BarBar - https://github.com/romgrk/barbar.nvim<br>
<b>Indentation Guides - </b> Indent-Blankline - https://github.com/lukas-reineke/indent-blankline.nvim<br>

## Loadtime

Tested on my 7950X on OpenBSD 7.2 with smt enabled and all cores locked to 4.8GHz

```
Benchmark 1: nvim --headless +qa
  Time (mean ± σ):      42.4 ms ±  15.6 ms    [User: 13.3 ms, System: 21.5 ms]
  Range (min … max):    25.7 ms … 104.5 ms    101 runs
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
