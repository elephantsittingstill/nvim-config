return {
	{
		"ptdewey/darkearth-nvim",
		priority = 1000,

		-- Store all installed colorschemes in a table with named keys
		config = function()
			local schemes = {
				darkearth = "darkearth",
				pywal16 = "pywal16",
				nightfox = "nightfox",
				dayfox = "dayfox",
				dawnfox = "dawnfox",
				duskfox = "duskfox",
				nordfox = "nordfox",
				terafox = "terafox",
				carbonfox = "carbonfox",
			}

			-- Declare desired colorscheme here --
			vim.cmd.colorscheme(schemes.darkearth)
		end,
	},
	{
		"uZer/pywal16.nvim",
	},
	{
		"EdenEast/nightfox.nvim",
	},
}
