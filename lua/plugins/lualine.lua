local function venv_name_from_path(venv)
	if string.find(venv, "/") then
		local venv_name = venv
		for token in venv:gmatch("[^/]+") do
			venv_name = token
		end
		venv = venv_name
	end
	return venv
end

local function python_env()
	if vim.bo.filetype == "python" then
		local venv = os.getenv("VIRTUAL_ENV")
		if venv then
			local icons = require("nvim-web-devicons")
			local py_icon, _ = icons.get_icon(".py")
			return string.format(" " .. py_icon .. " (" .. venv_name_from_path(venv) .. ")")
		end
	end
	return ""
end

return {
	"nvim-lualine/lualine.nvim",
	requires = { "nvim-tree/nvim-web-devicons" },
	opts = {
		sections = {
			lualine_c = { "diff", python_env },
		},
	},
}
