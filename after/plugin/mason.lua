require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup {}
	end,
	-- Next, you can provide a dedicated handler for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
	["lua_ls"] = function()
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }
					}
				}
			}
		}
	end,

	-- ["pyright"] = function()
	-- 	local lspconfig = require("lspconfig")
	-- 	lspconfig.pyright.setup {
	-- 		settings = {
	-- 			python = {
	-- 				pythonPath = "py",
	-- 				venvPath = "/.venv",
	-- 				analysis = {
	-- 					-- autoImportCompletions = true,
	-- 					-- autoSearchPaths =       true,
	-- 					-- diagnosticMode =        "openFilesOnly",
	-- 					-- diagnosticSeverityOverrides = ,
	-- 					-- exclude =               [],
	-- 					-- extraPaths =            [],
	-- 					-- ignore =                [],
	-- 					-- include =               [],
	-- 					-- logLevel =              "Information",
	-- 					-- stubPath =              "typings",
	-- 					-- typeCheckingMode =      "standard",
	-- 					-- typeshedPaths =         [],
	-- 					-- useLibraryCodeForTypes =true,
	-- 				}
	-- 				-- pyright.disableLanguageServices              default: false
	-- 				-- pyright.disableOrganizeImports               default: false
	-- 				-- pyright.disableTaggedHints                   default: false
	-- 			}
	-- 		}
	-- 	}
	-- end 
	}
