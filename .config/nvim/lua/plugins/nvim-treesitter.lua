return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-context",
        -- "LiadOz/nvim-dap-repl-highlights",
    },
    config = function()
        -- require("nvim-dap-repl-highlights").setup()
        require("nvim-treesitter.configs").setup {
            highlight = {
                enable = true,
            },
        }
    end,
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}
