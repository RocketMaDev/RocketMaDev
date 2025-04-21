return {
	"olimorris/onedarkpro.nvim",
	priority = 1000, -- Ensure it loads first
	config = function()
		require("onedarkpro").setup({
			colors = {
				white = "#e8e8e8",
				fg = "#e8e8e8",
			},
		})
		vim.cmd.colorscheme("onedark")
        vim.cmd.highlight("CursorLine guibg=#30343e")
        vim.cmd.highlight("CursorColumn guibg=#30343e")
	end,
}
