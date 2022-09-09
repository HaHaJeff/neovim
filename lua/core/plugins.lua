-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- starup time optimise
	-- use 'dstein64/vim-startuptime'
	use 'lewis6991/impatient.nvim'
	use 'nathom/filetype.nvim'

	-- buffer
	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}
	use 'moll/vim-bbye' -- for more sensible delete buffer cmd

	-- themes (disabled other themes to optimize startup time)
	use 'sainnhe/sonokai'
	use 'tiagovla/tokyodark.nvim'
	use 'folke/tokyonight.nvim'
	--    use 'joshdick/onedark.vim'
	--    use { 'catppuccin/nvim', as='catppuccin' }
	--    use { 'sonph/onehalf', rtp='vim/' }
	--    use 'liuchengxu/space-vim-dark'
	--    use 'ahmedabdulrahman/aylin.vim'
	use "rebelot/kanagawa.nvim"
	use 'NLKNguyen/papercolor-theme'
	use 'liuchengxu/space-vim-dark'

	-- file tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- language
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'nvim-treesitter/nvim-treesitter'
	use 'p00f/nvim-ts-rainbow'
	use 'onsails/lspkind-nvim'
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			local saga = require("lspsaga")

			saga.init_lsp_saga({
				-- your configuration
				diagnostic_header = { "😡", "😥", "😤", "😐" },
			})
		end,
	})
	-- git
	use {
		'lewis6991/gitsigns.nvim',
		tag = 'release',
	}

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- tagbar
	use 'simrat39/symbols-outline.nvim'

	-- file telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}
	use {
		'nvim-telescope/telescope-ui-select.nvim',
		requires = 'nvim-telescope/telescope.nvim'
	}

	-- indent guide
	use "lukas-reineke/indent-blankline.nvim"

	-- english grammar check
	use 'rhysd/vim-grammarous'

	-- ui
	use {'stevearc/dressing.nvim'}

	use {
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end,
	}
    -- lsp progess
	use {
		'j-hui/fidget.nvim'
	}
	use {"akinsho/toggleterm.nvim"}
	use ({ 'projekt0n/github-nvim-theme' })
	use {'joshdick/onedark.vim'}
	use {'monsonjeremy/onedark.nvim'}
	use {'marko-cerovac/material.nvim'}

	-- brace
	--use {
  -- . "windwp/nvim-autopairs",
  -- . wants = "nvim-treesitter",
  -- . module = { "nvim-autopairs.completion.cmp", "nvim-autopairs" },
  -- . config = function()
  -- .   require("configs.autopairs").setup()
  -- . end
  --}
  use {
    'Mofiqul/vscode.nvim',
    config = function()
      require("configs.vscode").setup()
    end
  }
  use {'akinsho/git-conflict.nvim', tag = "*", config = function()
   require('git-conflict').setup()
  end}
end)
