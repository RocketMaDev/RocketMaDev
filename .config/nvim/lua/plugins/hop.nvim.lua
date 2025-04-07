return {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
        case_insensitive = true,
    },
    event = "VeryLazy",
    config = function()
        local hop = require("hop")
        local directions = require("hop.hint").HintDirection
        hop.setup {
            case_insensitive = true
        }
        local nxo = {"n", "x", "o"}
        vim.keymap.set(nxo, "<leader>f", function()
            hop.hint_char1{ direction = directions.AFTER_CURSOR }
        end)
        vim.keymap.set(nxo, "<leader>F", function()
            hop.hint_char1{ direction = directions.BEFORE_CURSOR }
        end)
        vim.keymap.set(nxo, "<leader>t", function()
            hop.hint_char1{ direction = directions.AFTER_CURSOR, hint_offset = -1 }
        end)
        vim.keymap.set(nxo, "<leader>T", function()
            hop.hint_char1{ direction = directions.BEFORE_CURSOR, hint_offset = 1 }
        end)
    end
}
