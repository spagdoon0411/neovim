
local p = require("rose-pine.palette")

local theme = {
	normal = {
		a = { bg = "NONE", fg = p.rose, gui = "bold" },
		b = { bg = "NONE", fg = p.text },
		c = { bg = "NONE", fg = p.subtle, gui = "italic" },
	},
	insert = {
		a = { bg = "NONE", fg = p.foam, gui = "bold" },
	},
	visual = {
		a = { bg = "NONE", fg = p.iris, gui = "bold" },
	},
	replace = {
		a = { bg = "NONE", fg = p.pine, gui = "bold" },
	},
	command = {
		a = { bg = "NONE", fg = p.love, gui = "bold" },
	},
	inactive = {
		a = { bg = p.base, fg = p.subtle, gui = "bold" },
		b = { bg = p.base, fg = p.subtle },
		c = { bg = "NONE", fg = p.subtle, gui = "italic" },
	},
}

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = theme
      }
    })
  end
}
