return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    config = function()
        vim.g.mkdp_filetypes = { "markdown" }
        vim.g.vim_markdown_folding_disabled = 1
        vim.g.mkdp_auto_close = 0
        vim.g.mkdp_combine_preview = 1
    end,
    ft = "markdown",
    keys = {
        {"<leader>m", "<Plug>MarkdownPreviewToggle"},
    },
}
