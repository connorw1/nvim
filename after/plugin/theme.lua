-- Lua:
-- For dark theme (neovim's default)
--vim.o.background = 'dark'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
	-- Underline `@markup.link.*` variants
	underline_links = true,

	-- Disable nvim-tree background color
	disable_nvimtree_bg = true,
})

vim.cmd.colorscheme "vscode"
