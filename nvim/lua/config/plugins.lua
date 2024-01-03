local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
    -- Package Manager
    use "wbthomason/packer.nvim"
    -- Useful lua functions used by other plugins
    use "nvim-lua/plenary.nvim"
    -- Icons
    use "kyazdani42/nvim-web-devicons"
    -- Theme
    use "folke/tokyonight.nvim"
    -- Syntax Highlighting
		use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
		-- Fuzzy Finder
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x' , requires = "nvim-lua/plenary.nvim" }
    -- File Finder
		use {
  		"nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	requires = { 
      	"nvim-lua/plenary.nvim",
      	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      	"MunifTanjim/nui.nvim",
    	}
 		}
		-- Tabs
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
    -- Status Bar
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    -- Indentation Guides
    use "lukas-reineke/indent-blankline.nvim"
    -- Caches lua to loader faster
    use 'lewis6991/impatient.nvim'
    -- Start Menu
    use 'mhinz/vim-startify'
    -- Completions
    use "hrsh7th/nvim-cmp"
    -- Buffer Completions
    use "hrsh7th/cmp-buffer"
    -- Path Completions
    use "hrsh7th/cmp-path"
    -- Snippet Completions
    use "saadparwaiz1/cmp_luasnip"
    -- Connect cmp to lsp 
    use "hrsh7th/cmp-nvim-lsp"
    -- Extra Lua Completions
    use "hrsh7th/cmp-nvim-lua"
		-- Convert TailwindCSS to CSS
		use "jcha0713/cmp-tw2css"
    -- Snippets
    use "L3MON4D3/LuaSnip"
    -- Extra Snippets
    use "rafamadriz/friendly-snippets"
    -- Highlighting words under cursor
    use "RRethy/vim-illuminate"
    -- Autoclose
    use "windwp/nvim-autopairs"
    -- Comments Keybinds
    use "numToStr/Comment.nvim"
    -- LSP
    use "neovim/nvim-lspconfig"
		-- Formatter
		use {"nvimdev/guard.nvim", requires="nvimdev/guard-collection"}
		-- Clangd Extensions
		use "p00f/clangd_extensions.nvim"
    
		if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
