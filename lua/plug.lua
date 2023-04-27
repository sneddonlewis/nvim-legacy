
require("packer").startup(function(use)
	use { "wbthomason/packer.nvim" }
	use { "EdenEast/nightfox.nvim" }
	use { "ellisonleao/gruvbox.nvim" }
	use { "folke/tokyonight.nvim" }
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		 requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
	  'nvim-lualine/lualine.nvim',
	   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { "fatih/vim-go" }
	use {
		'VonHeikemen/lsp-zero.nvim',
  		branch = 'v1.x',
  		requires = {
		{'neovim/nvim-lspconfig'},             -- Required
		{'williamboman/mason.nvim'},           -- Optional
		{'williamboman/mason-lspconfig.nvim'}, -- Optional
		{'hrsh7th/nvim-cmp'},         -- Required
		{'hrsh7th/cmp-nvim-lsp'},     -- Required
		{'hrsh7th/cmp-buffer'},       -- Optional
		{'hrsh7th/cmp-path'},         -- Optional
		{'saadparwaiz1/cmp_luasnip'}, -- Optional
		{'hrsh7th/cmp-nvim-lua'},     -- Optional
		{'L3MON4D3/LuaSnip'},             -- Required
		{'rafamadriz/friendly-snippets'}, -- Optional
  	},
	use {"akinsho/toggleterm.nvim", tag = '*' },
	use "simrat39/rust-tools.nvim",
	use "jhlgns/naysayer88.vim",
	use "terrortylor/nvim-comment",
	use "CreaturePhil/vim-handmade-hero",
	    -- Completion framework:
    use 'hrsh7th/nvim-cmp', 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp',
    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua',
    use 'hrsh7th/cmp-nvim-lsp-signature-help',
    use 'hrsh7th/cmp-vsnip',                             
    use 'hrsh7th/cmp-path',                              
    use 'hrsh7th/cmp-buffer',                            
    use 'hrsh7th/vim-vsnip',
}
end)
