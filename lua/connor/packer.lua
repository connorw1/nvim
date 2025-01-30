--Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	--  Make the theme BASED
	use("Mofiqul/vscode.nvim")

	-- The best package manager
	use("wbthomason/packer.nvim")

	-- enables lsp and more
	use("nvim-treesitter/nvim-treesitter")

	-- Navigate between files blazingly fast
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Gets a basic LSP installed for our shit
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	-- Code suggestions and intelisense basically
	use({
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"hrsh7th/vim-vsnip",
	})

	-- Shows a usefully git tracker
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Used to quickly nav between git repos
	use("tpope/vim-fugitive")

	-- Should enable linters from mason?
	use("mfussenegger/nvim-lint")

	-- enable file formatters
	use("mhartington/formatter.nvim")

	-- enables us to setup debugging
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } })

	-- manages config
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup()
		end,
	})
end)
