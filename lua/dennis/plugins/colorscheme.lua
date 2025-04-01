return {
	{
		"ptdewey/darkearth-nvim",
		priority = 1000,
		scheme = "darkearth",
	},
	{
		"uZer/pywal16.nvim",
		scheme = "pywal16",
	},
	{
		"EdenEast/nightfox.nvim",
		scheme = {
			"nightfox",
			"dayfox",
			"dawnfox",
			"duskfox",
			"nordfox",
			"terafox",
			"carbonfox",
		},
		-- move below function to whatever colorscheme
		-- you desire to use
		config = function(plugin)
			vim.cmd.colorscheme(plugin.scheme[7])
		end
	},
}
