local M = {}
-- Example config in Lua
function M.config()
require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
})
end

return M
