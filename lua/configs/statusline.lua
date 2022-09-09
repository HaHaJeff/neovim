local M = {}
local function get_lsp_client()
	-- Get lsp client for current buffer
	local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
	local clients = vim.lsp.get_active_clients()
	if next(clients) == nil then
		return nil
	end

	for _, client in ipairs(clients) do
		local filetypes = client.config.filetypes
		if filetypes and vim.fn.index(filetypes,buf_ft) ~= -1 then
			return client
		end
	end

	return nil
end

--local function LspStatus()
--	if get_lsp_client() == nil then 
--		return [[]]
--	end
--	return luaeval("require('lsp-status').status()")
--end

function M.config()
	-- lualine config
	require('lualine').setup {
		options = {
			icons_enabled = true,
			theme = 'auto', -- based on current vim colorscheme
			-- not a big fan of fancy triangle separators
			component_separators = { left = '', right = '' },
			section_separators = { left = '', right = '' },
			disabled_filetypes = {},
			always_divide_middle = true,
		},
		sections = {
			-- left
			lualine_a = { 'mode' },
			lualine_b = { 'branch', 'diff', 'diagnostics' },
			lualine_c = { 'filename' },
			-- right
			lualine_x = { 'encoding', 'fileformat', 'filetype' },
			lualine_y = { 'progress' },
			lualine_z = { 'location' }
		},
		inactive_sections = {
			lualine_a = { 'filename' },
			lualine_b = {},
			lualine_c = {},
			lualine_x = { 'location' },
			lualine_y = {},
			lualine_z = {}
		},
		tabline = {},
		extensions = {}
	}
end

return M
