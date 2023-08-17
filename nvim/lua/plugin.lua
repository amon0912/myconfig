vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'tjdevries/colorbuddy.nvim'
	use 'svrana/neosolarized.nvim'
	use 'nvim-tree/nvim-web-devicons'

	use 'nvim-tree/nvim-tree.lua'

	use 'nvim-lualine/lualine.nvim'

	use 'neovim/nvim-lspconfig'
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"

	use {
		'nvim-treesitter/nvim-treesitter',
		--run = ':TSUpdate'
		run = function() require("nvim-treesitter.install").update { with_sync = true } end
	}
	use "lukas-reineke/lsp-format.nvim"

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	--For vsnip users.
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	--For luasnip users.
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	use "folke/which-key.nvim"
end)