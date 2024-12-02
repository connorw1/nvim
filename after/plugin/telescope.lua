local builtin = require('telescope.builtin')

-- Standard maps
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("grep > ") })
end)

-- search in config
vim.keymap.set("n", "<leader>fv", function()
	builtin.git_files({ cwd = "~\\AppData\\local\\nvim" })
end)

