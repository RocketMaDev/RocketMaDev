vim.cmd.highlight('IndentLine guifg=#3a3f4b')
vim.cmd.highlight('IndentLineCurrent guifg=#49505f')

return {
    "nvimdev/indentmini.nvim",
    config = function()
        require("indentmini").setup()
    end
}
