vim.g.mapleader = ' '

-- f: file tree
vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<cr>')
-- y: telescope
vim.keymap.set('n', '<leader>ff', function() require'telescope.builtin'.find_files{} end)
vim.keymap.set('n', '<leader>fg', function() require'telescope.builtin'.live_grep{} end)
vim.keymap.set('n', '<leader>gb', function() require'telescope.builtin'.git_bcommits{} end)
vim.keymap.set('n', '<leader>gs', function() require'telescope.builtin'.git_status{} end)
vim.keymap.set('n', '<leader>gc', function() require'telescope.builtin'.git_commits{} end)
vim.keymap.set('n', '<leader>gr', function() require'telescope.builtin'.lsp_references{} end)
vim.keymap.set('n', '<leader>gd', function() require'telescope.builtin'.lsp_definitions{} end)
vim.keymap.set('n', '<leader>gD', function() require'telescope.builtin'.lsp_type_definitions{} end)
vim.keymap.set('n', '<leader>gi', function() require'telescope.builtin'.lsp_implementations{} end)
vim.keymap.set('n', '<leader>tc', function() require'telescope.builtin'.colorscheme{} end)
-- w: window
vim.keymap.set('n', '<leader>wh', '<c-w>h')
vim.keymap.set('n', '<leader>wj', '<c-w>j')
vim.keymap.set('n', '<leader>wk', '<c-w>k')
vim.keymap.set('n', '<leader>wl', '<c-w>l')
-- window resize
vim.keymap.set('n', '<m-9>', '<c-w><')
vim.keymap.set('n', '<m-0>', '<c-w>>')
vim.keymap.set('n', '<m-->', '<c-w>-')
vim.keymap.set('n', '<m-=>', '<c-w>+')
-- w: workspace
vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist)
-- lsp
vim.keymap.set("n", "<leader>cd", require("lspsaga.diagnostic").show_line_diagnostics, { silent = true,noremap = true })

-- jump diagnostic
vim.keymap.set("n", "[e", require("lspsaga.diagnostic").goto_prev, { silent = true, noremap =true })
vim.keymap.set("n", "]e", require("lspsaga.diagnostic").goto_next, { silent = true, noremap =true })
-- or jump to error
vim.keymap.set("n", "<leader>ho", require("lspsaga.hover").render_hover_doc, { silent = true })
-- vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
-- Float terminal
-- vim.keymap.set("n", "of", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
-- if you want pass somc cli command into terminal you can do like this
-- open lazygit in lspsaga float terminal
-- vim.keymap.set("n", "og", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })
-- close floaterm
-- vim.keymap.set("t", "cf", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })
-- vim.keymap.set("n", "gi", "<cmd>Lspsaga implement<CR>", { silent = true })
vim.keymap.set('n', 'sw', ':ClangdSwitchSourceHeader<cr>')
-- t: terminal
-- h: git
vim.keymap.set('n', '<leader>hu', ':Gitsigns undo_stage_hunk<cr>')
vim.keymap.set('n', '<leader>hn', ':Gitsigns next_hunk<cr>')
vim.keymap.set('n', '<leader>hc', ':Gitsigns preview_hunk<cr>')
vim.keymap.set('n', '<leader>hr', ':Gitsigns reset_hunk<cr>')
vim.keymap.set('n', '<leader>hR', ':Gitsigns reset_buffer')
vim.keymap.set('n', '<leader>hb', ':Gitsigns blame_line<cr>')
vim.keymap.set('n', '<leader>tb', ':Gitsigns toggle_current_line_blame<cr>')
vim.keymap.set('n', '<leader>hd', ':Gitsigns diffthis<cr>')
vim.keymap.set('n', '<leader>hs', ':<C-U>Gitsigns select_hunk<CR>')

-- bufferline
vim.keymap.set('n', '<A-n>', ':BufferLineMoveNext<cr>')
vim.keymap.set('n', '<A-p>', ':BufferLineMovePrev<cr>')
vim.keymap.set('n', '<A-1>', ':BufferLineGoToBuffer 1<cr>')
vim.keymap.set('n', '<A-2>', ':BufferLineGoToBuffer 2<cr>')
vim.keymap.set('n', '<A-3>', ':BufferLineGoToBuffer 3<cr>')
vim.keymap.set('n', '<A-4>', ':BufferLineGoToBuffer 4<cr>')
vim.keymap.set('n', '<A-5>', ':BufferLineGoToBuffer 5<cr>')
vim.keymap.set('n', '<A-6>', ':BufferLineGoToBuffer 6<cr>')
vim.keymap.set('n', '<A-7>', ':BufferLineGoToBuffer 7<cr>')
vim.keymap.set('n', '<A-8>', ':BufferLineGoToBuffer 8<cr>')
vim.keymap.set('n', '<A-9>', ':BufferLineGoToBuffer 9<cr>')
vim.keymap.set('n', '<A-c>', ':BufferClose<cr>')
vim.keymap.set('n', '<A-0>', ':BufferLast<cr>')

-- window manager
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- git conflicts
vim.keymap.set('n', 'co', '<Plug>(git-conflict-ours)')
vim.keymap.set('n', 'ct', '<Plug>(git-conflict-theirs)')
vim.keymap.set('n', 'cb', '<Plug>(git-conflict-both)')
vim.keymap.set('n', 'c0', '<Plug>(git-conflict-none)')
vim.keymap.set('n', 'cp', '<Plug>(git-conflict-prev-conflict)')
vim.keymap.set('n', 'cn', '<Plug>(git-conflict-next-conflict)')
