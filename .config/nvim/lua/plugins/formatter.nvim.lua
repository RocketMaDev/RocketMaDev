return {
	"mhartington/formatter.nvim",
	keys = {
		{ "<M-f>", "<CMD>Format<CR>" },
	},
	config = function()
		require("formatter").setup({
			filetype = {
				lua     = { require("formatter.filetypes.lua").stylua },
				c       = { require("formatter.filetypes.c").clangformat },
				cpp     = { require("formatter.filetypes.c").clangformat },
				cmake   = { require("formatter.filetypes.cmake").cmakeformat },
                json    = { require("formatter.filetypes.json").jq },
                python  = { require("formatter.filetypes.python").ruff },
                sh      = { require("formatter.filetypes.sh").shfmt },
			},
		})
	end,
}
