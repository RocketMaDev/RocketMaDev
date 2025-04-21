return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "Saghen/blink.cmp",
        -- "hrsh7th/nvim-cmp-lsp",
    },
    config = function()
        local lspconf = require("lspconfig")
        local ok, cmplsp = pcall(require, "cmp_nvim_lsp")
        local defcap = nil
        if ok then
            defcap = { capabilities = cmplsp.default_capabilities() }
        else
            ok, cmplsp = pcall(require, "blink.cmp")
            defcap = { capabilities = cmplsp.get_lsp_capabilities() }
            if not ok then
                print("NO nvim-cmp OR blink.cmp LOADED!!!")
                return
            end
        end

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
        lspconf.jedi_language_server.setup(defcap)
        -- lspconf.pylsp.setup(defcap)
        lspconf.ruff.setup(defcap)
        -- pkgbuild_language_server => termux-language-server
        -- rust_analyzer => rust-analyzer
        -- yamlls => yaml-language-server
    end
}
