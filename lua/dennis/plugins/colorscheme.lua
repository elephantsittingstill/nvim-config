return {
	{
		"ptdewey/darkearth-nvim",
		priority = 1000,
		scheme = "darkearth",
		-- move below function to whatever colorscheme
		-- you desire to use
		config = function(plugin)
			vim.cmd.colorscheme(plugin.scheme)
		end
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
	},
}
