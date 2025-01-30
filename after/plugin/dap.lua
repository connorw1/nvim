local dap = require("dap")
local ui = require("dapui")

require("dapui").setup()

-- Open and close the DAP UI automatically when debugging starts/stops
dap.listeners.after.event_initialized["dapui_config"] = function()
	ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	ui.close()
end

-- Configure the Python debugger adapter (debugpy)
dap.adapters.python = {
	type = "executable",
	command = "python", -- Adjust this to your Python interpreter path if needed
	args = { "-m", "debugpy.adapter" },
}

-- Define configurations for Python
dap.configurations.python = {
	{
		type = "python", -- Use the Python adapter defined above
		request = "launch", -- Start a new debug session
		name = "Launch File",
		console = "integratedTerminal", -- Use an integrated terminal instead of a new one
		program = "${file}", -- Debug the current file
		pythonPath = function()
			-- Use the Python interpreter from the environment
			return "python"
		end,
	},
}
