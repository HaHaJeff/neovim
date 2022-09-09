local M = {}

function M.setup()
	local npairs = require "nvim-autopairs"
	npairs.setup {
		check_ts = true,
	}
	npairs.add_rules(require "nvim-autopairs.rules.endwise-lua")
	disable_filetype = { "TelescopePrompt" , "vim" },
	local npairs = require("nvim-autopairs")
	local Rule = require('nvim-autopairs.rule')

	npairs.setup({
		check_ts = true,
		ts_config = {
			cpp = true,
			c = true,
		}
	})

	local ts_conds = require('nvim-autopairs.ts-conds')

	-- press % => %% only while inside a comment or string
	npairs.add_rules({
		Rule("%", "%", "lua")
		:with_pair(ts_conds.is_ts_node({'string','comment'})),
		Rule("$", "$", "lua")
		:with_pair(ts_conds.is_not_ts_node({'function'}))
		Rule('{', '}')
    :end_wise(function() return true end),
    Rule('(', ')')
    :end_wise(function() return true end),
    Rule('[', ']')
    :end_wise(function() return true end),
	})
	enable_check_bracket_line = false
	-- Auto pairs
	local cmp_autopairs = require "nvim-autopairs.completion.cmp"
	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
end

return M
