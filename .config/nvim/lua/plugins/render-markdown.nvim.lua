return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ft = "markdown",
        keys = {
            { "<leader>r", function()
                require("render-markdown").buf_toggle()
            end , desc = "toggle render-markdown" },
        },
    }
}
