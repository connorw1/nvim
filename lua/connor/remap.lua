vim.g.mapleader = " "

-- get to files quicker
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- fugitive
vim.keymap.set("n", "<leader>gd", "<cmd>G diff<CR>")
vim.keymap.set("n", "<leader>gp", "<cmd>G pull<CR>")
vim.keymap.set("n", "<leader>ga", ":G add ")
vim.keymap.set("n", "<leader>gs", ":G checkout -p \"")
vim.keymap.set("n", "<leader>gc", ":G commit -m \"")

-- quick health check
vim.keymap.set("n", "<leader>chh", "<cmd>:checkhealth<CR>")
-- paramaterised
vim.keymap.set("n", "<leader>ch", ":checkhealth ")

-- quick source
vim.keymap.set("n", "<leader><leader>", "<cmd>:so<CR>")

-- lsp stuff
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end)
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)

-- Format and save quicker
vim.keymap.set("n", "<leader>l", function()
	vim.lsp.buf.format()
	vim.cmd(":w")
end)
