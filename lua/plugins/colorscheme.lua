return {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,

	config = function()
		local onedark = require("onedark")

		onedark.setup({
			style = "darker",
			highlights = {
				["@variable"] = { fg = "$red" },
				["@constant"] = { fg = "$cyan" },
				["@boolean"] = { fg = "$orange" },
				["@parameter"] = { fg = "$orange" },
				["@type"] = { fg = "$yellow" },
				["@type.builtin"] = { fg = "$yellow" },
				["@function.builtin"] = { fg = "$blue" },
				["@type.definition"] = { fg = "$yellow" },
				["@attribute"] = { fg = "$blue" },
				["@field"] = { fg = "$red" },
				["@constructor"] = { fg = "$yellow" },
				["@lsp.type.variable.typescript"] = { fg = "$red" },
				["@lsp.type.variable.vue"] = { fg = "$red" },
			},
		})
		vim.cmd("colorscheme onedark")
	end,
}
