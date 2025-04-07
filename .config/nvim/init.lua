vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set({"n", "v"}, "K", "$")
vim.keymap.set({"n", "v"}, "Y", "y$")
vim.keymap.set("n", "gs", ":set spell!<CR>")
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

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

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Define :SudoW command to save the file using pkexec and force reload
vim.api.nvim_create_user_command('SudoW', function()
    vim.cmd('silent! w !pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY tee % >/dev/null') -- Save file using pkexec
    vim.cmd('edit!')  -- Force reload the file
end, {})

-- Map 'w!!' to save the file using pkexec
vim.api.nvim_set_keymap('c', 'w!!', "<esc>:SudoW<CR>", { silent = true, noremap = true })

require("config.lazy")
