vim.g.vim_markdown_folding_disabled = 1
vim.g.mkdp_auto_close = 0
vim.g.mkdp_combine_preview = 1

return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    ft = "markdown",
    keys = {
        { "<leader>m", "<Plug>MarkdownPreviewToggle", desc = "toggle markdown preview" }
    }
}
