return {
	{
		"ptdewey/darkearth-nvim",
		priority = 1000,

		-- Store all installed colorschemes in a table with named keys
		config = function()
			local schemes = {
				darkearth = "darkearth",
				pywal16 = "pywal16",
				-- zenbones themes --
				zenwritten = "zenwritten",
				neobones = "neobones",
				vimbones = "vimbones",
				rosebones = "rosebones",
				forestbones = "forestbones",
				nordbones = "nordbones",
				tokyobones = "tokyobones",
				seoulbones = "seoulbones",
				duckbones = "duckbones",
				zenburned = "zenburned",
				kanagawabones = "kanagawabones",
				-- nightfox themes --
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
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim"
	},
}
