require("config.lazy")
vim.g.mapleader = " "

vim.keymap.set({"i", "s"}, "jj", "<Esc>", { desc = "map jj to Esc" })
vim.keymap.set({"n", "v"}, "K", "$", { desc = "map K to eol" })
vim.keymap.set({"n", "v"}, "Y", "y$", { desc = "map Y to copy to eol" })
vim.keymap.set("n", "gs", ":set spell!<CR>", { desc = "toggle spell check" })
vim.keymap.set("n", "<leader>c", ":set cursorcolumn!<CR>", { desc = "toggle cursorcolumn" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "goto definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "goto declaration" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "goto references" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "goto implementation" })
vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = 'perform "hover"' })
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "switch to left window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "switch to window below" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "switch to window above" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "switch to right window" })

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wildignorecase = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.hidden = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.showmode = false
vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.tildeop = true
vim.opt.signcolumn = "yes"
vim.opt.mouse = "n"
vim.opt.cursorline = true

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Define :S command to save the file using pkexec and force reload
-- WW can be used with W
vim.api.nvim_create_user_command('S', function()
    vim.cmd('w !pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY tee % >/dev/null') -- Save file using pkexec
    vim.cmd('edit!')  -- Force reload the file
end, {})

vim.keymap.set('n', '<leader>q', function()
    local new_config = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = "display diagnoses" })

-- clear trailing duplicated newlines
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    command = "%s/\\v\\n+%$//ge"
})
