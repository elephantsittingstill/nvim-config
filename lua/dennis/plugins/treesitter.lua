return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup {
				-- A list of parser names, of "all" (the listed parsers MUST always be installed)
				ensure_installed = { "c", "haskell", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
				auto_install = false,
				highlight = {
					enable = true,

					disable = function(lang, buf)
						local max_filesize = 100 * 1024
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,

					additional_vim_reger_highlighting = false,
				},
				fold = { enable = true },
			}
		end,
	}
}
