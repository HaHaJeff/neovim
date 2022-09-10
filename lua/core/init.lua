-- basics
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.opt.number          = true
vim.opt.relativenumber  = false
vim.opt.termguicolors   = true
vim.opt.shiftround      = true
vim.opt.updatetime      = 100
vim.opt.cursorline      = false
vim.opt.autowrite       = true
-- tabs
vim.opt.autoindent      = true
vim.opt.tabstop         = 2
vim.opt.shiftwidth      = 2
vim.opt.softtabstop     = 2
vim.opt.expandtab       = true
require("core.keymaps")
require("core.plugins")
-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1
require("core.theme")

-- Load plugin configs
-- plugins without extra configs are configured directly here
require("impatient")

require("configs.autocomplete").config()
require("configs.statusline").config()
require("configs.filetree").config()
require("configs.treesitter").config()
require("configs.outlinetree").config()
require("configs.git").config()
require("configs.bufferline").config()
require("configs.grammar").config()
require("configs.telescope").config()
require("configs.lspstatus").config()
require("configs.ui").config()
require("configs.vscode").config()
