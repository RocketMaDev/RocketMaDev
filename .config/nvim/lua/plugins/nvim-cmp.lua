return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-vsnip",
        "neovim/nvim-lspconfig",
    },
    config = function()
        local cmp = require("cmp")
        cmp.setup {
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert {
                ["<Tab>"] = cmp.mapping.confirm({select = true}),
                ["<C-n>"] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
            },
            sources = cmp.config.sources({
                {name = "vsnip"},
                {name = "lazydev", group_index = 0},
                {name = "nvim_lsp"},
            }, {
                {name = "buffer"},
                {name = "path"},
                {name = "cmdline"},
            })
        }

        local lspconf = require("lspconfig")
        local cmplsp = require("cmp_nvim_lsp")
        local defcap = { capabilities = cmplsp.default_capabilities() }

        lspconf.lua_ls.setup(defcap)
        lspconf.bashls.setup(defcap)
        lspconf.clangd.setup(defcap)
        lspconf.neocmake.setup(defcap)
        -- cssls => vscode-css-languageserver
        -- ccls => ccls
        -- dockerls => dockerfile-language-server
        -- gopls => gopls
        -- html => vscode-html-language-server
        -- jdtls => jdtls
        -- jsonls => vscode-json-language-server
        -- jedi_language_server => jedi-language-server
        -- lspconf.jedi_language_server.setup(defcap)
        lspconf.pylsp.setup(defcap)
        -- lspconf.ruff.setup(defcap)
        -- pkgbuild_language_server => termux-language-server
        -- rust_analyzer => rust-analyzer
        -- yamlls => yaml-language-server

        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        cmp.event:on(
            'confirm_done',
            cmp_autopairs.on_confirm_done()
        )
    end,
}
