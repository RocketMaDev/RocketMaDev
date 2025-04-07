return {
	"mfussenegger/nvim-dap-ui",
	cond = false,
	event = "VeryLazy",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
        "mfussenegger/nvim-dap-python",
        "LiadOz/nvim-dap-repl-highlights",
	},
	config = function()
        require('nvim-dap-repl-highlights').setup()

		local dap = require("dap")
		vim.keymap.set("n", "<M-d>", dap.continue)
		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)

		local dapui = require("dapui")
        dapui.setup()
		require("lazydev").setup({
			library = { "nvim-dap-ui" },
		})
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		require("dap-python").setup("python3")

		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "-q", "--interpreter=dap", "--eval-command", "set print pretty on" },
		}
		dap.configurations.c = {
			{
				name = "Run executable (GDB)",
				type = "gdb",
				request = "launch",
				program = function()
					local path = vim.fn.input({
						prompt = "Path to executable: ",
						default = vim.fn.getcwd() .. "/",
						completion = "file",
					})

					return (path and path ~= "") and path or dap.ABORT
				end,
			},
			{
				name = "Run executable with arguments (GDB)",
				type = "gdb",
				request = "launch",
				program = function()
					local path = vim.fn.input({
						prompt = "Path to executable: ",
						default = vim.fn.getcwd() .. "/",
						completion = "file",
					})

					return (path and path ~= "") and path or dap.ABORT
				end,
				args = function()
					local args_str = vim.fn.input({
						prompt = "Arguments: ",
					})
					return vim.split(args_str, " +")
				end,
			},
		}
	end,
}
