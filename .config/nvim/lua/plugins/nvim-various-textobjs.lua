function asfunc()
    require("various-textobjs").subword("outer")
end
function isfunc()
    require("various-textobjs").subword("inner")
end
function aifunc()
    require("various-textobjs").indentation("outer", "inner")
end
function iifunc()
    require("various-textobjs").indentation("inner", "inner")
end
function aefunc()
    require("various-textobjs").entireBuffer()
end
function acfunc()
    local textobj = require("various-textobjs")
    if vim.bo.filetype == "markdown" then
        textobj.mdFencedCodeBlock("outer")
    else
        textobj.pyTripleQuotes("outer")
    end
end
function icfunc()
    local textobj = require("various-textobjs")
    if vim.bo.filetype == "markdown" then
        textobj.mdFencedCodeBlock("inner")
    else
        textobj.pyTripleQuotes("inner")
    end
end

return {
    "chrisgrieser/nvim-various-textobjs",
    event = "VeryLazy",
    keys = {
        {"aS", asfunc, mode = {"o", "x"}},
        {"iS", isfunc, mode = {"o", "x"}},
        {"ai", aifunc, mode = {"o", "x"}},
        {"ii", iifunc, mode = {"o", "x"}},
        {"ae", aefunc, mode = {"o", "x"}},
        {"ac", acfunc, mode = {"o", "x"}},
        {"ic", icfunc, mode = {"o", "x"}},
    }
}
