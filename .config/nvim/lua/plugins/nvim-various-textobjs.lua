local function asfunc()
	require("various-textobjs").subword("outer")
end
local function isfunc()
	require("various-textobjs").subword("inner")
end
local function aifunc()
	require("various-textobjs").indentation("outer", "inner")
end
local function iifunc()
	require("various-textobjs").indentation("inner", "inner")
end
local function aefunc()
	require("various-textobjs").entireBuffer()
end
local function infunc()
	require("various-textobjs").nearEoL()
end
local function acfunc()
	if vim.bo.filetype == "markdown" then
		require("various-textobjs").mdFencedCodeBlock("outer")
	else
		require("various-textobjs").pyTripleQuotes("outer")
	end
end
local function icfunc()
	if vim.bo.filetype == "markdown" then
		require("various-textobjs").mdFencedCodeBlock("inner")
	else
		require("various-textobjs").pyTripleQuotes("inner")
	end
end

return {
	"chrisgrieser/nvim-various-textobjs",
	event = "VeryLazy",
	keys = {
		{ "aS", asfunc, mode = { "o", "x" }, desc = "subword outer" },
		{ "iS", isfunc, mode = { "o", "x" }, desc = "subword inner" },
		{ "ai", aifunc, mode = { "o", "x" }, desc = "indentation outer" },
		{ "ii", iifunc, mode = { "o", "x" }, desc = "indentation inner" },
		{ "ae", aefunc, mode = { "o", "x" }, desc = "entire buffer" },
		{ "in", infunc, mode = { "o", "x" }, desc = "near eol" },
		{ "ac", acfunc, mode = { "o", "x" }, desc = "triple quotes/fenced code outer" },
		{ "ic", icfunc, mode = { "o", "x" }, desc = "triple quotes/fenced code inner" },
	},
}
