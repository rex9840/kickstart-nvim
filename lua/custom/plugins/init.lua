-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {

	{
		'romgrk/barbar.nvim',
		dependencies = {
			--'lewis6990/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = '^0.0.0', -- optional: only update when a new 1.x version is released
	},

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	},

	---copilot---
	{
		"github/copilot.vim",
		lazy = false,
		config = function()
			vim.g.copilot_assume_mapped = true
		end,
	},



	--revover.vim for swap file handelling
	{
		"chrisbra/recover.vim",
		lazy = false,
		version = "*",
		config = function()
			vim.g.recover_filetypes = "all"
		end,
	},




}
