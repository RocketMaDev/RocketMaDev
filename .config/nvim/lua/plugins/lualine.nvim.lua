return {
    'nvim-lualine/lualine.nvim',
    opts = {
        options = {
            theme = "onedark",
            component_separators = {
                left = "|",
                right = "|"
            },
            section_separators = {
                left = "",
                right = ""
            },
            refresh = {
                statusline = 50,
            },
            disabled_filetypes = {
                statusline = {"NvimTree"},
            },
        },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
