return {
    'akinsho/bufferline.nvim',
    config = function()
        require("bufferline").setup{
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "nvim-tree",
                        highlight = "directory",
                        text_align = "left",
                    },
                }
            }
        }
    end,
    dependencies = 'nvim-tree/nvim-web-devicons'
}
