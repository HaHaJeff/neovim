-- themes

-- themes with special settings

-- sonokai
--sonokai styles: default, atlantis, andromeda, shusia, maia, espresso
--vim.g.sonokai_style = 'default'
--vim.g.sonokai_enable_italic = 0
--vim.g.sonokai_disable_italic_comment = 0
-- vim.cmd('colorscheme sonokai');

-- tokyo night
--vim.g.tokyodark_transparent_background = false
--vim.g.tokyodark_enable_italic_comment = true
--vim.g.tokyodark_enable_italic = true
--vim.g.tokyodark_color_gamma = "1.0"
--vim.cmd("colorscheme tokyodark")

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
--vim.g.tokyonight_colors = { hint = "orange", error = "#cb5550" }
--vim.cmd('colorscheme sonokai')

-- space vim dark
--vim.g.space_vim_dark_background = 234 -- 234 (darkest) ~ 238 (lightest)
-- vim.cmd("colorscheme space-vim-dark");

-- kanagwa
-- Default options:
--require('kanagawa').setup({
--    undercurl = true,           -- enable undercurls
--    commentStyle = { italic = true },
--    functionStyle = {},
--    keywordStyle = { italic = true},
--    statementStyle = { bold = true },
--    typeStyle = {},
--    variablebuiltinStyle = { italic = true},
--    specialReturn = true,       -- special highlight for the return keyword
--    specialException = true,    -- special highlight for exception handling keywords
--    transparent = false,        -- do not set background color
--    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
--    globalStatus = false,       -- adjust window separators highlight for laststatus=3
--    colors = {},
--    overrides = {},
--})
--vim.cmd("colorscheme kanagawa")

--require("github-theme").setup({
--  theme_style = "dark",
--  function_style = "italic",
--  sidebars = {"qf", "vista_kind", "terminal", "packer"},
--})

require('material').setup({
  LineNr = { guifg=Yellow },
  CursorLine = { fg = '#0000FF', underline = true },

	contrast = {
		sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background for the sign column
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = false, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = false, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false-- Enable higher contrast text for darker style
	},

  disable = {
  	colored_cursor = false, -- Disable the colored cursor
  	borders = false, -- Disable borders between verticaly split windows
  	background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
  	term_colors = false, -- Prevent the theme from setting terminal colors
  	eob_lines = false -- Hide the end-of-buffer lines
  },
  
  lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
  
  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
  
  custom_highlights = {}, -- Overwrite highlights with your own
  
  plugins = { -- Here, you can disable(set to false) plugins that you don't use or don't want to apply the theme to
    trouble = true,
    nvim_cmp = true,
    neogit = true,
    gitsigns = true,
    git_gutter = true,
    telescope = true,
    nvim_tree = true,
    sidebar_nvim = true,
    lsp_saga = true,
    nvim_dap = true,
    nvim_navic = true,
    which_key = true,
    sneak = true,
    hop = true,
    indent_blankline = true,
    nvim_illuminate = true,
    mini = true,
		treesitter=true,
    bufferline=true,
  }
})
--vim.g.material_style = "palenight"
--vim.cmd 'colorscheme material'
--vim.cmd 'hi LineNr guifg=Yellow:q'
vim.cmd 'colorscheme vscode'
