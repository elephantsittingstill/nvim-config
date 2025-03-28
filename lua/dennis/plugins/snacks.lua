return {
	  "folke/snacks.nvim",
	  priority = 1000,
	  lazy = false,
	  ---@type snacks.Config
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	    bigfile = { enabled = true },
	    dashboard = {
			preset = {
				pick = function(cmd, opts)
					return LazyVim.pick(cmd, opts)()
				end,
				header = [[
░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
 ]], ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
				-- stylua: ignore
				---@type snacks.dashboard.Item[]
			},
		},
	    explorer = { enabled = false }, -- might change later
	    indent = { enabled = true },
	    input = {
			---@class snacks.input.Config
			---@field enabled? boolean
			---@field win? snacks.win.Config|{}
			---@field icon? string
			---@field icon_pos? snacks.input.Pos
			---@field promp_pos? snacks.input.Pos
			enabled = true,
			icon = ": ",
			icon_hl = "SnackInputIcon",
			icon_pos = "left",
			prompt_pos = "title",
			win = { style = "input" },
			expand = true
		},
	    picker = { enabled = false }, -- will want to config
	    notifier = { enabled = false },
	    quickfile = { enabled = false },
	    scope = { enabled = false },
	    scroll = { enabled = false },
	    statuscolumn = { enabled = false },
	    words = { enabled = true },
	},
}
