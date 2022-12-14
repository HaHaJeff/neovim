local M = {}

function M.config()
	-- Setup nvim-cmp.
	local cmp = require 'cmp'
	cmp.setup({
		snippet = {
			-- REQUIRED - you must specify a snippet engine
			expand = function(args)
				-- luasnip
				require('luasnip').lsp_expand(args.body)
			end,
		},
		mapping = {
			['<C-k>'] = cmp.mapping.select_prev_item(),
			['<C-j>'] = cmp.mapping.select_next_item(),
      ['<C-i>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
			['<C-y>'] = cmp.config.disable,
			['<C-e>'] = cmp.mapping({
				i = cmp.mapping.abort(),
				c = cmp.mapping.close(),
			}),
			-- Accept currently selected item...
			-- Set `select` to `false` to only confirm explicitly selected items:
			-- ['<CR>'] = cmp.mapping.confirm({ select = true }),
		},
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
      { name = 'buffer'},
		})
	})

	-- nvim-cmp for commands
	cmp.setup.cmdline('/', {
		sources = {
			{ name = 'buffer' }
		}
	})
	cmp.setup.cmdline(':', {
		sources = cmp.config.sources({
			{ name = 'path' }
		}, {
			{ name = 'cmdline' }
		})
	})

	local has_words_before = function()
		local line, col = unpack(vim.api.nvim_win_get_cursor(0))
		return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
	end

	local luasnip = require("luasnip")
	local cmp = require("cmp")

	cmp.setup({

		mapping = {

			["<C-n>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				elseif has_words_before() then
					cmp.complete()
				else
					fallback()
				end
			end, { "i", "s" }),

			["<C-p>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, { "i", "s" }),

			-- ... Your other mappings ...
		},
		-- ... Your other configuration ...
	})

  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  require 'lspconfig'.ccls.setup {
    capabilities = capabilities,
  }

	-- nvim-lspconfig config
	-- List of all pre-configured LSP servers:
	-- github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	local servers = { 'ccls' }
	for _, lsp in pairs(servers) do
		require('lspconfig')[lsp].setup {
			on_attach = on_attach
		}
	end
	local lspconfig = require('lspconfig')
	lspconfig.ccls.setup {
    init_options = {
      cache = {
        directory = ".ccls-cache",
      },
      index = {
        comments = 0,
        onChange = true,
        trackDependency = 2,
        threads = 0,
      },
    }
	}

	local devicons = require('nvim-web-devicons')
	cmp.register_source('devicons', {
		complete = function(_, _, callback)
			local items = {}
			for _, icon in pairs(devicons.get_icons()) do
				table.insert(items, {
					label = icon.icon .. '  ' .. icon.name,
					insertText = icon.icon,
					filterText = icon.name,
				})
			end
			callback({ items = items })
		end,
	})

require('lspkind').init({
	-- DEPRECATED (use mode instead): enables text annotations
	--
	-- default: true
	-- with_text = true,

	-- defines how annotations are shown
	-- default: symbol
	-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
	mode = 'symbol_text',

	-- default symbol map
	-- can be either 'default' (requires nerd-fonts font) or
	-- 'codicons' for codicon preset (requires vscode-codicons font)
	--
	-- default: 'default'
	preset = 'codicons',

	-- override preset symbols
	--
	-- default: {}
--	symbol_map = {
--		Text = "???",
--		Method = "???",
--		Function = "???",
--		Constructor = "???",
--		Field = "???",
--		Variable = "???",
--		Class = "???",
--		Interface = "???",
--		Module = "???",
--		Property = "???",
--		Unit = "???",
--		Value = "???",
--		Enum = "???",
--		Keyword = "???",
--		Snippet = "???",
--		Color = "???",
--		File = "???",
--		Reference = "???",
--		Folder = "???",
--		EnumMember = "???",
--		Constant = "???",
--		Struct = "???",
--		Event = "???",
--		Operator = "???",
--		TypeParameter = ""
--	},
})
end
--  require("ccls").setup(config)
return M
