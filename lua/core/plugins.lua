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
	--use 'sainnhe/sonokai'
	--use 'tiagovla/tokyodark.nvim'
	--use 'folke/tokyonight.nvim'
	--    use 'joshdick/onedark.vim'
	--    use { 'catppuccin/nvim', as='catppuccin' }
	--    use { 'sonph/onehalf', rtp='vim/' }
	--    use 'liuchengxu/space-vim-dark'
	--    use 'ahmedabdulrahman/aylin.vim'
	--use "rebelot/kanagawa.nvim"
	--use 'NLKNguyen/papercolor-theme'
	--use 'liuchengxu/space-vim-dark'

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
  use {
    'ranjithshegde/ccls.nvim',
  }
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
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
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
    'Mofiqul/vscode.nvim'
  }
  use {'akinsho/git-conflict.nvim', tag = "*", config = function()
   require('git-conflict').setup()
  end}
  use {
    'ldelossa/litee.nvim',
    -- configure the litee.nvim library 
    require('litee.lib').setup({
    tree = {
        icon_set = "codicons"
    },
    panel = {
        orientation = "left",
        panel_size  = 30
    }
})
  }
  use {
    'ldelossa/litee-calltree.nvim',
    -- configure litee-calltree.nvim
    require('litee.calltree').setup({})
  }
  
  use({
    "aserowy/tmux.nvim",
    config = function()
        require("tmux").setup({
            -- overwrite default configuration
            -- here, e.g. to enable default bindings
            copy_sync = {
                -- enables copy sync and overwrites all register actions to
                -- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
                enable = true,
            },
            navigation = {
                -- enables default keybindings (C-hjkl) for normal mode
                enable_default_keybindings = true,
            },
            resize = {
                -- enables default keybindings (A-hjkl) for normal mode
                -- enable_default_keybindings = true,
            }
        })
    end
})

end)
