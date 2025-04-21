return {
    "hrsh7th/nvim-cmp",
    cond = false,
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-vsnip",
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
                ["<Tab>"] = cmp.mapping.confirm({ select = true }),
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

        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        cmp.event:on(
            'confirm_done',
            cmp_autopairs.on_confirm_done()
        )
    end,
}
